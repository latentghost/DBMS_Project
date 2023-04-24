from tabulate import tabulate
import mysql.connector as con
import sys


config = {
    'host': "localhost",
    'user': "root",
    'password': "Popoye@456",
    'database': "online_retail_store"
}
db = con.connect(**config)

cur1 = db.cursor()


# --------------------------------- Define Triggers --------------------------------------

trigger1 = """
DROP TRIGGER IF EXISTS check_stock;
CREATE TRIGGER check_stock
INSTEAD OF INSERT ON Cart_Product
FOR EACH ROW
BEGIN
    IF (SELECT Available_Stock FROM Product WHERE Product_ID = NEW.Product_ID) < NEW.Quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Not enough stock";
    ELSE
        UPDATE Product SET Available_Stock = Available_Stock - NEW.Quantity WHERE Product_ID = NEW.Product_ID;
    END IF;
END;"""

trigger2 = """
DROP TRIGGER IF EXISTS check_username;
CREATE TRIGGER check_username
BEFORE UPDATE ON Person
FOR EACH ROW
BEGIN
    IF LENGTH(NEW.Username)<10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Username too short';
    END IF;
    IF NEW.Username = OLD.Username THEN
        SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'New Username must be different from Old Username';
    END IF;
    IF NEW.Username != OLD.Username AND EXISTS (SELECT * FROM Person WHERE Username = NEW.Username) THEN
        SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'Username already exists, please try a different one';
    END IF;
END;"""


trigger3 = """
DROP TRIGGER IF EXISTS create_delivery_request;
CREATE TRIGGER create_delivery_request
AFTER INSERT ON Orderr
FOR EACH ROW
BEGIN
    INSERT INTO Delivery_Request (Order_ID, Delivery_Status, Expected_Completion_Time, Amount_Payable, Delivery_ID)
    VALUES (NEW.Order_ID, 0, DATE_ADD(CURDATE(), INTERVAL 7 DAY), NEW.Grand_Total, NEW.Customer_ID);
END;"""


trigger4 = """
DROP TRIGGER IF EXISTS assign_delivery_person;
CREATE TRIGGER assign_delivery_person
AFTER INSERT ON Delivery_Request
FOR EACH ROW
BEGIN
    DECLARE del_id INT;
    SELECT DelPerson_ID INTO del_id FROM Delivery_Persons WHERE Active_Delivery_Request IS 0 LIMIT 1;
    IF del_id IS NOT NULL THEN
        UPDATE Delivery_Request SET Delivery_Status = 1 WHERE Order_ID = NEW.Order_ID;
        UPDATE Delivery_Persons SET Active_Delivery_Request = NEW.Order_ID WHERE DelPerson_ID = del_id;
    END IF;
END;"""



# --------------------------------- Define Transactions --------------------------------------

tran1 = """
BEGIN TRANSACTION;

SET @did = (SELECT DelPerson_ID FROM Delivery_Person WHERE DelPerson_ID = %s);
SET @oid = (
    SELECT Order_ID FROM Delivery_Request
    WHERE (Delivery_ID = @did AND (Delivery_Status = 1 OR Delivery_Status = 2))
)

INSERT INTO Delivery_Person_Completed_Delivery (`DelPerson_ID`, `Order_ID`)
VALUES (@did, @oid);

INSERT INTO Customer_Past_Orderr (`Customer_ID`, `Order_ID`)
VALUES ((SELECT Customer_ID FROM Orderr WHERE Order_ID = @oid), @oid);

UPDATE Delivery_Person dp
SET dp.Active_Delivery_Request = 0
WHERE dp.DelPerson_ID = @did;

DELETE FROM Admin_ActiveDelReqs WHERE Req_ID = @oid;

DELETE FROM Delivery_Request
WHERE (Delivery_ID = @did AND Delivery_Status IS NOT NULL);

COMMIT;
"""


tran2 = """
BEGIN TRANSACTION;

SET @did = (SELECT DelPerson_ID FROM Delivery_Person WHERE DelPerson_ID = %s);
SET @oid = (SELECT Order_ID FROM Orderr WHERE Order_ID = %s);

UPDATE Delivery_Person
SET Active_Delivery_Request = @oid
WHERE DelPerson_ID = @did;

INSERT INTO Admin_ActiveDelReqs (`Admin_Username`, `Req_ID`)
VALUES ('destini.beier',@oid);

UPDATE Delivery_Request
SET Delivery_Status = 1
WHERE Delivery_ID = @did;

DELETE FROM Admin_PendingDelReqs
WHERE Req_ID = @oid;

COMMIT;
"""


tran3 = """
BEGIN TRANSACTION;

INSERT INTO Person (`Username`, `Pass_word`, `First_Name`, `Middle_Name`,
`Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`)
VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);

INSERT INTO Customer (`User_ID`, `No_of_Cart_Products`, `Cart_Status`)
VALUES (LAST_INSERT_ID(),0,0);

INSERT INTO Admin_Customers (`Admin_Username`, `Customer_ID`)
VALUES ('destini.beier', LAST_INSERT_ID());

COMMIT;
"""


tran4 = """
BEGIN TRANSACTION;

INSERT INTO Person (`Username`, `Pass_word`, `First_Name`, `Middle_Name`,
`Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`)
VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);

INSERT INTO Manufacturer (`User_ID`)
VALUES (LAST_INSERT_ID());

INSERT INTO Admin_Manufacturers (`Admin_Username`, `Seller_ID`)
VALUES ('destini.beier', LAST_INSERT_ID());

COMMIT;
"""


tran5 = """
BEGIN TRANSACTION;

INSERT INTO Person (`Username`, `Pass_word`, `First_Name`, `Middle_Name`,
`Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`)
VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);

INSERT INTO Delivery_Person (`User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `TotRatings`)
VALUES (LAST_INSERT_ID(), NULL, 5.0, 0);

INSERT INTO Admin_DeliveryPersons (`Admin_Username`, `DelPerson_ID`)
VALUES ('destini.beier', LAST_INSERT_ID());

COMMIT;
"""


# --------------------------------- Execute Triggers --------------------------------------


cur1.execute(trigger1)
cur1.close()

db = con.connect(**config)
cur2 = db.cursor()
cur2.execute(trigger2)
cur2.close()

db = con.connect(**config)
cur3 = db.cursor()
cur3.execute(trigger3)
cur3.close()

db = con.connect(**config)
cur4 = db.cursor()
cur4.execute(trigger4)
cur4.close()
db = con.connect(**config)
db.commit()

cur = db.cursor()
userid = -1

cur = db.cursor()


# --------------------------------- Function Definitions --------------------------------------


# --------------------------------- View Order History --------------------------------------

def getOrderHistory(cur, userid):
    p = (userid,)
    cur.execute("SELECT * FROM Customer WHERE User_ID = %s",p)
    res = cur.fetchone()

    if res is None:
        print("Log in as Customer to view your order history")
        return
    else:
        params = (res[0],)
    
    cur.execute("""SELECT o.* FROM Orderr o
                INNER JOIN Customer_Past_Orderr po ON o.Order_ID = po.Order_ID
                WHERE po.Customer_ID = %s;""",params)
    res = cur.fetchall()

    new = []
    for i in range(0, len(res)):
        row = res[i]
        new.append([row[0], row[2], row[3], row[4], row[5]])
    new.insert(0, ["Order ID", "Product Total", "Taxes", "Delivery Fee", "Grand Total"])
    print(tabulate(new))


# --------------------------------- Browse Products from a Category --------------------------------------

def browseProducts(cur, category):
    params = (category,)
    cur.execute("""
                SELECT Product.* 
                FROM  (
                    SELECT Product_ID
                    FROM Product_PCategory
                    WHERE Category_ID = %s
                ) pc
                INNER JOIN Product
                ON Product.Product_ID = pc.Product_ID;
                """, params)
    res = cur.fetchall()

    l = 0
    while True:
        new = []
        new.append(['Product_ID', 'Product Name', 'Price', 'Discount', 'Avg_Delivery_Time', 'Rating'])

        for i in range(l, l+8): 
            if i >= len(res) or i < 0:
                break

            row = res[i]
            if (row[4] > 1):
                new.append([row[0], row[1], row[2], row[3], row[5], row[6]])
        
        print(tabulate(new))

        browsing_option = int(input("""
\n------------------\n
1. Add product to cart 
2. Next page
3. Previous page
4. Exit
\n------------------\n"""))
        if (browsing_option == 1):
            product_id = int(input("Enter the product ID: "))
            params = (product_id,)
            cur.execute("SELECT * FROM Product WHERE Product_ID = %s", params)
            prod_res = cur.fetchone()

            if prod_res is None:
                print("Invalid product ID, please try again")
                continue

            quantity = int(input("Enter the quantity: "))

            params = (customer_id, product_id, quantity)
            try:
                cur.execute("INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`, `Quantity`) VALUES (%s,%s,%s);",params)
                print("Product added to cart")
                db.commit()
            except con.Error as err:
                print("Error: ",err.msg)
        elif (browsing_option == 2):
            if (l+8 >= len(res)):
                print("No more products to display")
                continue
            l += 8
        elif (browsing_option == 3):
            if (l-8 < 0):
                print("No more products to display")
                continue
            l -= 8
        elif (browsing_option == 4):
            break


# --------------------------------- View Customer's Cart --------------------------------------

def getCart(cur, customer_id):
    while True:
        params = (customer_id,)
        cur.execute("""SELECT Product.Product_ID, Product.pName, Product.Base_Price, Product.Discount_Percentage, cp.Quantity
                    FROM (SELECT * 
                        FROM Cart_Product 
                        WHERE Customer_ID = %s
                    ) cp
                    INNER JOIN Product
                    ON cp.Product_ID = Product.Product_ID;
                    """, params)
        res = cur.fetchall()

        new = []
        ids = []
        new.append(['Product ID', 'Product Name', 'Base Price', 'Discounted Price', 'Quantity'])
        total = 0
        for i in range(0, len(res)):
            row = res[i]
            id = row[0]
            ids.append(id)
            name = row[1]
            price = row[2]
            discount = row[3]
            quantity = row[4]
            total += (price - (price * discount / 100)) * quantity
            new.append([id, name, price, price - (price * discount / 100), quantity])
        new.append(['_', '_', '_', '_', '_', f"Total = {total}"])
        print(tabulate(new))

        cart_option = int(input("""
\n------------------\n
1. Remove product from cart
2. Back
\n------------------\n"""))
        if (cart_option == 1):
            while True:
                product_id = int(input("Enter the product ID: "))
                quantity = int(input("Enter the quantity to be removed: "))

                if product_id not in ids:
                    print("Invalid product ID, try again")
                    continue
                if quantity <= 0:
                    print("Invalid quantity, try again")
                    continue
                break

            cur.execute("SELECT Quantity FROM Cart_Product WHERE Customer_ID = %s AND Product_ID = %s", (customer_id, product_id))
            current_quantity = cur.fetchone()[0]

            if quantity <= current_quantity:
                new_quantity = current_quantity - quantity
                cur.execute("UPDATE Cart_Product SET Quantity = %s WHERE Customer_ID = %s AND Product_ID = %s", (new_quantity, customer_id, product_id))
                db.commit()
                print("Quantity updated in cart")
            else:
                cur.execute("DELETE FROM Cart_Product WHERE Customer_ID = %s AND Product_ID = %s", (customer_id, product_id))
                db.commit()
                print("Product removed from cart")
        elif (cart_option == 2):
            break
        else:
            print("Invalid option, try again")


# --------------------------------- Checkout Customer's Cart --------------------------------------

def checkoutCart(cur, customer_id):
    params = (customer_id,)
    cur.execute("""SELECT Product.Product_ID, Product.pName, Product.Base_Price, Product.Discount_Percentage, cp.Quantity
                    FROM (SELECT * 
                        FROM Cart_Product 
                        WHERE Customer_ID = %s
                    ) cp
                    INNER JOIN Product
                    ON cp.Product_ID = Product.Product_ID;
                    """, params)
    res = cur.fetchall()

    new = []
    ids = []
    new.append(['Product ID', 'Product Name', 'Base Price', 'Discounted Price', 'Quantity'])
    total = 0
    for i in range(0, len(res)):
        row = res[i]
        id = row[0]
        ids.append(id)
        name = row[1]
        price = row[2]
        discount = row[3]
        quantity = row[4]
        total += (price - (price * discount / 100)) * quantity
        new.append([id, name, price, price - (price * discount / 100), quantity])
    subtotal = total
    gst = (18/100)*total
    delivery_charges = (5/100)*total
    total += gst + delivery_charges
    new.append(['', '', '', '', '', ''])
    new.append(['', '', '', '', '', f"Sub Total = {subtotal}"])
    new.append(['', '', '', '', '', f"GST = {gst}"])
    new.append(['', '', '', '', '', f"Delivery Charges = {delivery_charges}"])
    new.append(['', '', '', '', '', f"Grand Total = {total}"])
    print(tabulate(new))

    payment_method = 0
    while True:
        payment_method = int(input("""
\n------------------\n
Enter the payment method
1. Card
2. UPI
3. Cash on Delivery
\n------------------\n"""))
        if payment_method not in [1, 2, 3]:
            print("Invalid payment method, try again")
            continue
        break
    payment_method -= 1

    cur.execute("SELECT MAX(Order_ID) FROM Orderr")
    result = cur.fetchone()
    max_order_id = result[0] if result[0] else 0 # if no orders in the table, set max_order_id to 0

    new_order_id = max_order_id + 1

    params = (new_order_id, customer_id, subtotal, gst, delivery_charges, total, payment_method)

    cur.execute("INSERT INTO Orderr (`Order_ID`, `Customer_ID`, `Product_Total`, `Taxes`, `Delivery_Fee`, `Grand_Total`, `Payment_Mode`) VALUES (%s, %s, %s, %s, %s, %s, %s)", params)
    db.commit()
    print("\nOrder placed successfully\n")

    # cur.execute("SELECT Order_ID FROM Orderr WHERE Customer_ID = %s AND Product_Total = %s AND Taxes = %s AND Delivery_Fee = %s AND Grand_Total = %s", params)
    # order_id = cur.fetchone()[0]
    print("Order ID: ", new_order_id)
    print("Will be delivered in 3-5 business days\n")

    # Insert products into Orderr_Product
    for row in res:
        product_id = row[0]
        quantity = row[4]
        params = (quantity, new_order_id, product_id)
        cur.execute("INSERT INTO Orderr_Product (`Quantity`, `Order_ID`, `Product_ID`) VALUES (%s, %s, %s)", params)
        db.commit()

    cur.execute("INSERT INTO Customer_Past_Orderr (`Customer_ID`, `Order_ID`) VALUES (%s, %s)", (customer_id, new_order_id))
    db.commit()

    cur.execute("INSERT INTO Customer_Pending_Orderr (`Customer_ID`, `Order_ID`) VALUES (%s, %s)", (customer_id, new_order_id))
    db.commit()

    # Empty the cart
    params = (customer_id,)
    cur.execute("DELETE FROM Cart_Product WHERE Customer_ID = %s", params)
    db.commit()


# --------------------------------- Change Username --------------------------------------

def changeUsername(cur, userid):
    newuser = input("Enter new username: ")
    params = (newuser,userid,)
    try:
        cur.execute("UPDATE Person SET Username = %s WHERE User_ID = %s;",params)
        db.commit()
    except con.Error as err:
        print("Error: ",err.msg)


# --------------------------------- Add new Product Category --------------------------------------

def addCategory(cur):
    cur.execute("SELECT MAX(Category_ID) FROM Category")
    result = cur.fetchone()
    max_category_id = result[0] if result[0] else 0 # if no categories in the table, set max_category_id to 0

    new_category_id = max_category_id + 1

    category_name = input("Enter the category name: ")

    params = (new_category_id, category_name)

    cur.execute("INSERT INTO Category (`Category_ID`, `cName`) VALUES (%s, %s);", params)
    db.commit()

    cur.execute("SELECT Username FROM Adminn")
    result = cur.fetchone()
    admin_username = result[0] if result[0] else 0 
    cur.execute("INSERT INTO Admin_Product_Categories (`Admin_Username`, `Category_ID`) VALUES (%s, %s);", (admin_username, new_category_id))
    db.commit()


# --------------------------------- Add new Product --------------------------------------

def addProduct(cur):
    cur.execute("SELECT MAX(Product_ID) FROM Product")
    result = cur.fetchone()
    max_product_id = result[0] if result[0] else 0 # if no products in the table, set max_product_id to 0

    new_product_id = max_product_id + 1

    product_name = input("Enter the product name: ")
    product_price = float(input("Enter the product price: "))
    product_discount = float(input("Enter the product discount percentage: "))
    product_stock = int(input("Enter the product initial stock: "))
    product_delivery_time = int(input("Enter the product average delivery time: "))
    product_manufacturer = input("Enter the product manufacturer ID: ")
    product_category = int(input("Enter the product category ID: "))

    # current_date = datetime.today()
    # new_date = current_date + timedelta(days=product_delivery_time)

    params = (new_product_id, product_name, product_price, product_discount, product_stock, product_delivery_time, 0, 0)

    cur.execute("INSERT INTO Product (`Product_ID`, `pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`, `TotRatings`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s);", params)
    db.commit()

    params = (product_manufacturer, new_product_id)
    cur.execute("INSERT INTO Manufacturer_Product (`Seller_ID`, `Product_ID`) VALUES (%s, %s);", params)
    db.commit()

    params = (product_category, new_product_id)
    cur.execute("INSERT INTO Product_PCategory (`Product_ID`, `Category_ID`) VALUES (%s, %s);", params)
    db.commit()

    cur.execute("SELECT Username FROM Adminn")
    result = cur.fetchone()
    admin_username = result[0] if result[0] else 0 
    cur.execute("INSERT INTO Admin_Products (`Admin_Username`, `Product_ID`) VALUES (%s, %s);", (admin_username, new_product_id))
    db.commit()


# --------------------------------- Delete Product Category --------------------------------------

def deleteCategory(cur):
    category_id = int(input("Enter the category ID: "))
    params = (category_id,)

    cur.execute("SELECT * FROM Product_Category WHERE Category_ID = %s", params)
    category = cur.fetchone()
    if not category:
        print("Category not found in the Product_Category table")
        return

    cur.execute("DELETE FROM Category WHERE Category_ID = %s;", params)
    db.commit()

    cur.execute("DELETE FROM Product_PCategory WHERE Category_ID = %s;", params)
    db.commit()

    cur.execute("DELETE FROM Product WHERE Product_ID NOT IN (SELECT Product_ID FROM Product_PCategory);")
    db.commit()

    cur.execute("DELETE FROM Admin_Product_Categories WHERE Category_ID = %s;", params)
    db.commit()


# --------------------------------- Delete Product --------------------------------------

def deleteProduct(cur):
    category_id = int(input("Enter the category ID: "))
    product_id = int(input("Enter the product ID: "))

    # Check if the product exists in the Product table
    cur.execute("SELECT * FROM Product WHERE Product_ID = %s", (product_id,))
    product = cur.fetchone()
    if not product:
        print("Product not found in the Product table")
        exit()

    # Check if the product exists in the Product_PCategory table
    cur.execute("SELECT * FROM Product_PCategory WHERE Product_ID = %s", (product_id,))
    product_pcategory = cur.fetchone()
    if not product_pcategory:
        print("Product not found in the Product_PCategory table")
        return

    # If the product exists in both tables, proceed with deleting it
    cur.execute("DELETE FROM Product WHERE Product_ID = %s", (product_id,))
    db.commit()

    cur.execute("DELETE FROM Product_PCategory WHERE Product_ID = %s", (product_id,))
    db.commit()

    cur.execute("DELETE FROM Manufacturer_Product WHERE Product_ID = %s", (product_id,))
    db.commit()

    cur.execute("DELETE FROM Admin_Products WHERE Product_ID = %s", (product_id,))
    db.commit()

    print("Product deleted successfully")


# --------------------------------- Add new Delivery Person --------------------------------------

def addDeliveryPerson(cur):
    # Get the maximum user ID from the Person table
    cur.execute("SELECT MAX(User_ID) FROM Person")
    result = cur.fetchone()
    max_user_id = result[0] if result[0] else 0 # if no persons in the table, set max_user_id to 0

    # Generate the new user ID
    new_user_id = max_user_id + 1

    cur.execute("SELECT MAX(Delivery_ID) FROM Delivery_Person")
    result = cur.fetchone()
    max_delivery_id = result[0] if result[0] else 0 # if no delivery persons in the table, set max_delivery_id to 0

    new_delivery_id = max_delivery_id + 1

    # Check if the new user ID already exists in the Person table
    cur.execute("SELECT * FROM Person WHERE User_ID = %s", (new_user_id,))
    existing_person = cur.fetchone()
    if existing_person:
        print("A person with User ID", new_user_id, "already exists in the Person table")
        exit()

    username = input("Enter the username: ")
    password = input("Enter the password: ")
    first_name = input("Enter the first name: ")
    middle_name = input("Enter the middle name: ")
    last_name = input("Enter the last name: ")
    email_id = input("Enter the email ID: ")
    money_mode = 0
    while (money_mode != 1 and money_mode != 2):
        money_mode = int(input("""Which mode to use for money transactions?
        1. Card
        2. UPI
        """))
    is_card_saved = 0
    is_upi_saved = 0
    upi_id = ""
    card_no = ""
    name_on_card = ""
    expire_date = ""
    if money_mode == 1:
        card_no = input("Enter the card number: ")
        name_on_card = input("Enter the name on the card: ")
        expire_date = input("Enter the card expiry date: ")
        is_card_saved = 1
        is_upi_saved = 0
    elif money_mode == 2:
        upi_id = input("Enter the UPI ID: ")
        is_card_saved = 0
        is_upi_saved = 1

    # Insert the new person into the Person table
    params = (new_user_id, username, password, first_name, middle_name, last_name, email_id, is_card_saved, card_no, name_on_card, expire_date, is_upi_saved, upi_id)
    cur.execute("INSERT INTO Person (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", params)
    db.commit()

    # Insert the new delivery person into the Delivery_Person table
    params = (new_delivery_id, new_user_id, None, 0, 0)
    cur.execute("INSERT INTO Delivery_Person (DelPerson_ID, User_ID, Active_Delivery_Request, Delivery_Rating, TotRatings) VALUES (%s, %s, %s, %s, %s)", params)
    db.commit()

    phone = int(input("Enter the phone number: "))
    cur.execute("INSERT INTO Person_Phone (User_ID, Phone_no) VALUES (%s, %s)", (new_user_id, phone))
    db.commit()

    cur.execute("SELECT Username FROM Adminn")
    result = cur.fetchone()
    admin_username = result[0] if result[0] else 0 
    cur.execute("INSERT INTO Admin_DeliveryPersons (Admin_Username, DelPerson_ID) VALUES (%s, %s)", (admin_username, new_delivery_id))
    db.commit()

    print("Delivery person added successfully")


# --------------------------------- Remove Delivery Person --------------------------------------

def deleteDeliveryPerson(cur):
    delivery_id = int(input("Enter the delivery person ID: "))

    # Check if the delivery person exists in the Delivery_Person table
    cur.execute("SELECT * FROM Delivery_Person WHERE DelPerson_ID = %s", (delivery_id,))
    delivery_person = cur.fetchone()
    if not delivery_person:
        print("Delivery person not found in the Delivery_Person table")
        return

    # Delete the delivery person's information from the Person table
    cur.execute("DELETE FROM Person WHERE User_ID = (SELECT User_ID FROM Delivery_Person WHERE DelPerson_ID = %s)", (delivery_id,))
    db.commit()

    # Delete the delivery person's phone number from the Person_Phone table
    cur.execute("DELETE FROM Person_Phone WHERE User_ID = (SELECT User_ID FROM Delivery_Person WHERE DelPerson_ID = %s)", (delivery_id,))
    db.commit()

    # Delete the delivery person from the Delivery_Person table
    cur.execute("DELETE FROM Delivery_Person WHERE DelPerson_ID = %s", (delivery_id,))
    db.commit()

    # Delete the delivery person from the Admin_DeliveryPersons table
    cur.execute("DELETE FROM Admin_DeliveryPersons WHERE DelPerson_ID = %s", (delivery_id,))
    db.commit()

    print("Delivery person deleted successfully")


# --------------------------------- Add new Seller --------------------------------------

def addManufacturer(cur):
    # Get the maximum user ID from the Person table
    cur.execute("SELECT MAX(User_ID) FROM Person")
    result = cur.fetchone()
    max_user_id = result[0] if result[0] else 0 # if no persons in the table, set max_user_id to 0

    # Generate the new user ID
    new_user_id = max_user_id + 1

    # Check if the new user ID already exists in the Person table
    cur.execute("SELECT * FROM Person WHERE User_ID = %s", (new_user_id,))
    existing_person = cur.fetchone()
    if existing_person:
        print("A person with User ID", new_user_id, "already exists in the Person table")
        exit()

    username = input("Enter the username: ")
    password = input("Enter the password: ")
    first_name = input("Enter the first name: ")
    middle_name = input("Enter the middle name: ")
    last_name = input("Enter the last name: ")
    email_id = input("Enter the email ID: ")
    money_mode = 0
    while (money_mode != 1 and money_mode != 2):
        money_mode = int(input("""Which mode to use for money transactions?
        1. Card
        2. UPI
        """))
    is_card_saved = 0
    is_upi_saved = 0
    upi_id = ""
    card_no = ""
    name_on_card = ""
    expire_date = ""
    if money_mode == 1:
        card_no = input("Enter the card number: ")
        name_on_card = input("Enter the name on the card: ")
        expire_date = input("Enter the card expiry date: ")
        is_card_saved = 1
        is_upi_saved = 0
    elif money_mode == 2:
        upi_id = input("Enter the UPI ID: ")
        is_card_saved = 0
        is_upi_saved = 1

    # Insert the new person into the Person table
    params = (new_user_id, username, password, first_name, middle_name, last_name, email_id, is_card_saved, card_no, name_on_card, expire_date, is_upi_saved, upi_id)
    cur.execute("INSERT INTO Person (`User_ID`, `Username`, `Pass_word`, `First_Name`, `Middle_Name`, `Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", params)
    db.commit()

    # Get the maximum manufacturer ID from the Manufacturer table
    cur.execute("SELECT MAX(Seller_ID) FROM Manufacturer")
    result = cur.fetchone()

    max_manu_id = result[0] if result[0] else 0 

    new_manu_id = max_manu_id + 1

    cur.execute("INSERT INTO Manufacturer (Seller_ID, User_ID) VALUES (%s, %s)", (new_manu_id, new_user_id))
    db.commit()

    cur.execute("SELECT Username FROM Adminn")
    result = cur.fetchone()
    admin_username = result[0] if result[0] else 0 
    cur.execute("INSERT INTO Admin_Manufacturers (Admin_Username, Seller_ID) VALUES (%s, %s)", (admin_username, new_manu_id))
    db.commit()

    print("Manufacturer added successfully")


# --------------------------------- Remove Seller --------------------------------------

def deleteManufacturer(cur):
    seller_id = int(input("Enter the seller ID: "))

    # Check if the seller exists in the Manufacturer table
    cur.execute("SELECT * FROM Manufacturer WHERE Seller_ID = %s", (seller_id,))
    manufacturer = cur.fetchone()
    if not manufacturer:
        print("Seller not found in the Manufacturer table")
        return
    
    # Delete the delivery person's information from the Person table
    cur.execute("DELETE FROM Person WHERE User_ID = (SELECT User_ID FROM Manufacturer WHERE Seller_ID = %s)", (seller_id,))
    db.commit()

    # Delete the delivery person's phone number from the Person_Phone table
    cur.execute("DELETE FROM Person_Phone WHERE User_ID = (SELECT User_ID FROM Manufacturer WHERE Seller_ID = %s)", (seller_id,))
    db.commit()

    # If the seller exists in the Manufacturer table, proceed with deleting it
    cur.execute("DELETE FROM Manufacturer WHERE Seller_ID = %s", (seller_id,))
    db.commit()

    cur.execute("DELETE FROM Admin_Manufacturers WHERE Seller_ID = %s", (seller_id,))
    db.commit()

    cur.execute("DELETE FROM Manufacturer_Products WHERE Seller_ID = %s", (seller_id,))
    db.commit()

    cur.execute("DELETE FROM Product WHERE Seller_ID NOT IN (SELECT Seller_ID FROM Manufacturer_Products)")
    db.commit()

    cur.execute("DELETE FROM Product_PCategory WHERE Product_ID NOT IN (SELECT Product_ID FROM Product)")
    db.commit()

    print("Manufacturer deleted successfully")


# --------------------------------- View Category-wise Sales --------------------------------------

def viewCategoryWiseSales(cur):
    cur.execute("""SELECT c.Category_ID AS Category_ID, c.Product_ID AS Product_ID, c.pName AS pName, Sum(ps.ProductSales) AS TotalSales
                FROM (
                    SELECT Product_ID, Sum(Price) AS ProductSales 
                    FROM Product_Sales 
                    GROUP BY Product_ID
                ) ps
                INNER JOIN (
                    SELECT Product_PCategory.Category_ID, Product.Product_ID, Product.pName
                    FROM Product 
                    INNER JOIN Product_PCategory 
                    ON Product.Product_ID = Product_PCategory.Product_ID
                ) c
                ON ps.Product_ID = c.Product_ID
                GROUP BY Category_ID, Product_ID, pName WITH ROLLUP;""")
    res = cur.fetchall()
    new = []
    new.append(["Category ID", "Product ID", "Product Name", "Total Sales"])
    for row in res:
        if(row[2] != None):
            new.append([row[0], row[1], row[2], row[3]])
    print(tabulate(new))


# --------------------------------- View Product Ratings for each Category --------------------------------------

def viewAverageProductRating(cur):
    cur.execute("""SELECT c.cName AS category_name, AVG(p.Product_Rating) AS avg_rating
                FROM Product p
                JOIN Product_PCategory pc ON p.Product_ID = pc.Product_ID
                JOIN Product_Category c ON pc.Category_ID = c.Category_ID
                GROUP BY c.Category_ID""")
    res = cur.fetchall()
    new = []
    new.append(["Category", "Avg Rating"])
    for row in res:
        new.append([row[0], (int(row[1]*100)/100.0)])
    
    print(tabulate(new))


# --------------------------------- View state-wise Order History --------------------------------------

def viewStateWiseOrders(cur):
    cur.execute("""SELECT ad.State AS State, ad.City AS City, ad.Street_Name AS Street_Name, Count(*) AS TotalOrders
                FROM Delivery_Person_Completed_Delivery dc
                INNER JOIN (
                    SELECT cd.State, cd.City, cd.Street_Name, Orderr.Order_ID
                    FROM Orderr
                    INNER JOIN Customer_Delivery_Address cd
                    ON Orderr.Customer_ID = cd.Customer_ID
                ) ad
                ON dc.Order_ID = ad.Order_ID
                GROUP BY State, City, Street_Name WITH ROLLUP;""")
    res = cur.fetchall()
    new = []
    new.append(["State", "City", "Street Name", "No of Orders"])
    for row in res:
        new.append([row[0], row[1], row[2], row[3]])

    print(tabulate(new))


# --------------------------------- View total Pending Deliveries --------------------------------------

def viewPendingDeliveries(cur):
    cur.execute("""SELECT cd.State AS State, cd.City AS City, cd.Street_Name AS Street_Name, Count(*) AS TotalIncompleteDeliveries
                FROM Customer_Pending_Orderr cp
                INNER JOIN Customer_Delivery_Address cd
                ON cp.Customer_ID = cd.Customer_ID
                GROUP BY State, City, Street_Name WITH ROLLUP;""")
    res = cur.fetchall()
    new = []
    new.append(["State", "City", "Street Name", "No of Pending Deliveries"])
    for row in res:
        new.append([row[0], row[1], row[2], row[3]])

    print(tabulate(new))


# --------------------------------- Main Menu --------------------------------------


admin_login = 0

while(True):
    print('''
\n------------------\n
Welcome to the Online Retail Store!
1. Register
2. Login
3. Exit
\n------------------\n
    ''')

    c = int(input("Enter choice: "))

    if(c==1):
        nam = input("Enter first name: ")
        mid = input("Enter middle name: ")
        las = input("Enter last name: ")
        while(True):
            usr = input("Enter username: ")
            cur.execute("""SELECT Username FROM Person
            WHERE Username = %s;""",(usr,))
            result = cur.fetchone()
            if result is None:
                break
            print("Username already exists! Please try a different username.")

        ema = input("Enter email ID: ")
        pas = input("Enter password: ")
        con = input("Confirm password: ")

        if(con!=pas):
            print("Passwords don't match. Please try again.")
            continue
        
        csv = int(input("Would you like to save card information? (0/1) "))
        car = None
        cna = None
        exp = None
        if(csv==1):
            car = int(input("Enter card no.: "))
            cna = input("Enter name on card: ")
            exp = input("Enter expiry date (YYYY-MM-DD): ")
        
        usv = int(input("Would you like to save UPI informaton? (0/1) "))
        upi = None
        if(usv==1):
            upi = input("Enter UPI ID: ")

        p = (usr,pas,nam,mid,las,ema,csv,car,cna,exp,usv,upi)

        print("""
        What would you like to register as?
        1. Customer
        2. Manufacturer
        3. Delivery Person
        4. Exit
        """)
        ch = int(input("Enter choice: "))

        if(ch==1):
            cur.execute(tran3,p)
        elif(ch==2):
            cur.execute(tran4,p)
        elif(ch==3):
            cur.execute(tran5,p)
        elif(ch==4):
            continue

        print("Registered successfully!")

        cur.execute("SELECT User_ID FROM Person WHERE Username = %s;",(usr,))
        userid = (cur.fetchone())[0]
        break

    elif(c==2):
        i = 1
        while(True):
            user = input("Username: ")
            pasw = input("Password: ")
            params = (user,pasw)

            cur.execute("SELECT * FROM Adminn WHERE Username = %s AND Pass_Word = %s;",params)
            res = cur.fetchone()
            if res is not None:
                admin_login = 1
                break

            quer = "SELECT * FROM Person WHERE Username = %s AND Pass_word = %s;"
            cur1.execute(quer,params)

            res = cur1.fetchone()

            if res is not None:
                userid = res[0]
                break

            print("Invalid Login Credentials, please try again")
            i += 1
            if(i>3):
                print("Too many incorrect attempts! Exiting...")
                sys.exit()

        if(userid!=-1):
            break

    elif(c==3):
        sys.exit()

    else:
        print("Invalid choice! Please try again")

    print("\n")


# --------------------------------- Admin --------------------------------------

if(admin_login==1):
    while True:
        print('''
\n------------------\n
1. Add a new product category
2. Add a new product to an existing category
3. Delete a product category
4. Delete a product from an existing category
5. Remove a delivery person
6. Remove a manufacturer
7. View category-wise sales
8. View average product rating for each category
9. View region-wise orders
10. View pending deliveries for each region
11. Logout
\n------------------\n
            ''')
        admin_option = int(input("Select an option to proceed: "))
        if (admin_option == 1):
            addCategory(cur)
        elif (admin_option == 2):
            addProduct(cur)
        elif (admin_option == 3):
            deleteCategory(cur)
        elif (admin_option == 4):
            deleteProduct(cur)
        elif (admin_option == 5):
            deleteDeliveryPerson(cur)
        elif (admin_option == 6):
            deleteManufacturer(cur)
        elif (admin_option == 7):
            viewCategoryWiseSales(cur)
        elif (admin_option == 8):
            viewAverageProductRating(cur)
        elif (admin_option == 9):
            viewStateWiseOrders(cur)
        elif (admin_option == 10):
            viewPendingDeliveries(cur)
        elif (admin_option == 11):
            sys.exit()
        else:
            print("Invalid option. Please try again.")


# --------------------------------- Manufacturer --------------------------------------

p = (userid,)
cur.execute("SELECT * FROM Manufacturer WHERE User_ID = %s;",p)
res = cur.fetchone()


if res is not None:
    mid = res[0]

    while(True):
        print('''
\n------------------\n
1. Add new Product
2. Update Product details
3. View Product Sales
4. View category-wise sales
5. Change username
6. Change password
7. Logout
\n------------------\n
        ''')
        case = int(input("Enter choice: "))

        if(case==1):
            y = input("Would you like to add a new product? (Yes/No) ")
            if(y=="no" or y=="No" or y=="n" or y=="N"):
                continue

            print("Enter new Product's details:")
            name = input("Name: ")
            bprice = float(input("Base Price: "))
            disc = float(input("Set discount (%): "))
            stock = 0
            while(stock<=0):
                stock = int(input("Set stock: "))
                if(stock>0):
                    break
                print("Stock must be a positive integral value.\n")
            delt = int(input("Expected Delivery Time (days): "))

            p = (name,bprice,disc,stock,delt)
            cur.execute("""INSERT INTO Product(`pName`, `Base_Price`, `Discount_Percentage`,
                `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`, `TotRatings`)
                VALUES (%s,%s,%s,%s,%s,0.0,0);""",p)
            
            print("Choose Product Category:")
            cur.execute("SELECT * FROM Product_Category")
            out = cur.fetchall()
            i = 1
            for c in out:
                print(i + ".",c)
            
            while(True):
                cat = int(input("Enter choice: "))
                if(cat<0 or cat>len(out)):
                    print("Invalid! Please enter a valid category choice.")
                else:
                    break
            
            p = (out[cat-1],)
            cur.execute("""INSERT INTO Product_Category(cName)
            VALUES (%s""",p)

            p = (mid,pid)
            cur.execute("""INSERT INTO Manufacturer_Product_Sold (Seller_ID, Product_ID)
            VALUES (%s, %s);""",p)

            print("Product added!\n")

        elif(case==2):
            print("Choose product:")
            cur.execute("""SELECT p.Product_ID, p.pName FROM Product p
                INNER JOIN Manufacturer_Product_Sold mp ON p.Product_ID = mp.Product_ID
                INNER JOIN Manufacturer m ON m.Seller_ID = mp.Seller_ID
                WHERE manufacturer.Manufacturer_ID = %s;""")
            prs = cur.fetchall()
            ids = []
            pid = -1
            for p in prs:
                ids.append(p[0])
                print(p[0] + ".", p[1])
            
            while(True):
                prod = int(input("Enter product ID: "))
                if prod in ids:
                    pid = prod
                    break
                print("Invalid! Please enter a valid Product ID.")

            print('''
\n------------------\n
Choose what to update:
1. Product Name
2. Base Price
3. Discount
4. Stock
5. Back
\n------------------\n
            ''')

            while(True):
                ch = int(input("Enter choice: "))
                if(ch<1 or ch>5):
                    print("Invalid! Please enter a valid choice.")
                else:
                    break
                    
            if(ch==1):
                new = input("Enter new product name: ")
                p = (new,pid)
                cur.execute("""UPDATE Product
                    SET pName = %s
                    WHERE Product_ID = %s;""",p)
            
            elif(ch==2):
                new = float(input("Enter new price: "))
                p = (new,pid)
                cur.execute("""UPDATE Product
                    SET Base_Price = %s
                    WHERE Product_ID = %s;""",p)

            elif(ch==3):
                new = float(input("Enter new discount: "))
                p = (new,pid)
                cur.execute("""UPDATE Product
                    SET Discount_Percentage = %s
                    WHERE Product_ID = %s;""",p)

            elif(ch==4):
                new = int(input("Enter new stock: "))
                p = (new,pid)
                cur.execute("""UPDATE Product
                    SET Available_Stock = %s
                    WHERE Product_ID = %s;""",p)

            elif(ch==5):
                continue
                
        elif(case==3):
            p = (mid,)
            cur.execute("""SELECT ps.Product_ID, p.pName, SUM(ps.Price) AS Total_Sales, COUNT(*) AS Units_Sold
                FROM Manufacturer_Product_Sold mps 
                INNER JOIN Product_Sales ps ON mps.Product_ID = ps.Product_ID
                INNER JOIN Product p ON mps.Product_ID = p.Product_ID
                WHERE mps.Seller_ID = %s
                GROUP BY ps.Product_ID;
                """,p)

            sales = cur.fetchall()

            print("Your Product Sales:")
            new = []
            new.append(["Product Name","Product ID","Units Sold","Sales amount"])
            for row in sales:
                new.append([row[0],row[1],row[2],row[3]])
            print(tabulate(new))
        
        elif(case==4):
            cur.execute("""SELECT c.Category_ID AS Category_ID, c.Product_ID AS Product_ID, c.pName AS pName, Sum(ps.ProductSales) AS TotalSales
                FROM (
                    SELECT p.Product_ID, Sum(p.Price) AS ProductSales 
                    FROM Product_Sales p
                    INNER JOIN (SELECT * FROM Manufacturer_Product_Sold WHERE Seller_ID = %s) mps
                    ON mps.Product_ID = p.Product_ID
                    GROUP BY p.Product_ID
                ) ps
                INNER JOIN (
                    SELECT Product_PCategory.Category_ID, Product.Product_ID, Product.pName
                    FROM (SELECT * FROM Product 
                    INNER JOIN Product_PCategory 
                    ON Product.Product_ID = Product_PCategory.Product_ID ) p
                    INNER JOIN (SELECT * FROM Manufacturer_Product_Sold WHERE Seller_ID = %s) mps
                    ON mps.Product_ID = p.Product_ID
                ) c
                ON ps.Product_ID = c.Product_ID
                GROUP BY Product_PCategory.Category_ID, Product.Product_ID, Product.pName WITH ROLLUP;""",(mid,mid))
            res = cur.fetchall()
            new = []
            new.append(["Category ID", "Product ID", "Product Name", "Total Sales"])
            for row in res:
                if(row[2] != None):
                    new.append([row[0], row[1], row[2], row[3]])
            print(tabulate(new))

        elif(case==5):
            newuser = input("Enter new username: ")
            params = (newuser,userid,)
            try:
                cur.execute("UPDATE Person SET Username = %s WHERE User_ID = %s;",params)
            except con.Error as err:
                print("Error: ",err.msg)

        elif(case==6):
            oldpas = input("Enter old password: ")
            cur.execute("SELECT Pass_Word FROM Person WHERE User_ID = %s;",(userid,))
            if(oldpas!=cur.fetchone()[0]):
                print("Invalid password!")
                continue
            
            while(True):
                newpas = input("Enter new password: ")
                cur.execute("SELECT * FROM Person WHERE Pass_Word = %s;",(newpas,))
                r = cur.fetchone()
                if r is not None:
                    print("Password already exists! Please try again.\n")
                else:
                    break

            conf = input("Confirm new password: ")
            if(newpas!=conf):
                print("Passwords don't match!")
                continue

            params = (newpas,userid,)
            cur.execute("UPDATE Person SET Pass_Word = %s WHERE User_ID = %s;",params)
            print("Password updated!")
                
        elif(case==7):
            y = input("Are you sure you wish to log out? (Yes/No) ")
            if(y=="no" or y=="No" or y=="n" or y=="N"):
                continue
            break

        else:
            print("Invalid! Please enter a valid choice.")
        
        print("\n")


# --------------------------------- Delivery Person --------------------------------------

else:
    p = (userid,)
    cur.execute("SELECT * FROM Delivery_Person WHERE User_ID = %s;",p)
    res = cur.fetchone()
    
    if res is not None:
        did = res[0]

        while(True):
            print('''
\n------------------\n
1. View Active Delivery Request
2. Update delivery status
3. Accept new delivery request
4. Change username
5. Change password
6. Log out
\n------------------\n
            ''')

            case = int(input("Enter choice: "))

            if(case==1):
                p = (did,)
                cur.execute("""SELECT o.Order_ID, o.Customer_ID, o.GrandTotal AS Amount_Payable, o.Payment_Mode
                    FROM Delivery_Person dp
                    INNER JOIN Orderr o ON dp.Active_Delivery_Request = o.Order_ID
                    WHERE dp.DelPerson_ID = %s;""",p)
                
                adr = cur.fetchone()
                new = []
                
                new.append(["Order ID", "Customer ID", "Total Amount", "Payment Mode"])
                pmodes = ["Cash","Card","Paid Online"]
                print("Your Active Delivery Request:")
                new.append([adr[0],adr[1],adr[2],pmodes[adr[3]]])
                print(tabulate(new))

            elif(case==2):
                print('''
\n------------------\n
Choose updated status:
1. Pending pick-up
2. Order picked up, pending Delivery
3. Order Delivered
\n------------------\n
                ''')
                ch = int(input("Enter choice: "))

                if(ch==1 or ch==2):
                    p = (ch-1,did)
                    cur.execute("""UPDATE Delivery_Request dr
                        SET dr.Delivery_Status = %s
                        WHERE dr.Order_ID IN
                        (
                            SELECT dp.Active_Delivery_Request
                            FROM Delivery_Person dp
                            WHERE dp.DelPerson_ID = %s
                        )
                        """,p)
                elif(ch==3):
                    p = (did,)
                    cur.execute(tran1,p)
                else:
                    print("Invalid! Please try again.")

            elif(case==3):
                cur.execute("""SELECT Order_ID, Expected_Completion_Time, Amount_Payable
                    FROM Delivery_Request WHERE Delivery_Status = 0 LIMIT 10;""")
                drs = cur.fetchall()

                print("Choose delivery request to accept:")
                new = []
                new.append(["Order ID", "Expected Delivery Time", "Total Amount"])
                for row in drs:
                    new.append([drs[0],drs[1],drs[2]])
                print(tabulate(new))

                oid = int(input("Choose Order ID: "))
                p = (did,oid)
                cur.execute(tran2,p)

            elif(case==4):
                newuser = input("Enter new username: ")
                params = (newuser,userid,)
                try:
                    cur.execute("UPDATE Person SET Username = %s WHERE User_ID = %s;",params)
                except con.Error as err:
                    print("Error: ",err.msg)

            elif(case==5):
                oldpas = input("Enter old password: ")
                cur.execute("SELECT Pass_Word FROM Person WHERE User_ID = %s;",(userid,))
                if(oldpas!=cur.fetchone()[0]):
                    print("Invalid password!")
                    continue
                
                while(True):
                    newpas = input("Enter new password: ")
                    cur.execute("SELECT * FROM Person WHERE Pass_Word = %s;",(newpas,))
                    r = cur.fetchone()
                    if r is not None:
                        print("Password already exists! Please try again.\n")
                    else:
                        break

                conf = input("Confirm new password: ")
                if(newpas!=conf):
                    print("Passwords don't match!")
                    continue

                params = (newpas,userid,)
                cur.execute("UPDATE Person SET Pass_Word = %s WHERE User_ID = %s;",params)
                print("Password updated!")

            elif(case==6):
                y = input("Are you sure you wish to log out? (Yes/No) ")
                if(y=="no" or y=="No" or y=="n" or y=="N"):
                    continue
                break

            else:
                print("Invalid! Please enter a valid choice.")
            
            print("\n")
    

# --------------------------------- Customer --------------------------------------

    else:
        p = (userid,)
        cur.execute("SELECT * FROM Customer WHERE User_ID = %s;",p)
        res = cur.fetchone()

        if res is not None:
            customer_id = res[0]
            while True:
                print('''
\n------------------\n
1. View and add products in a category
2. View and edit cart
3. Checkout cart
4. View Order History
5. Change username
6. Change password
7. Back
\n------------------\n
                ''')
                case2 = int(input("Select an option to proceed: "))
                if (case2 == 1):
                    while True:
                        print("\n------------------\n")
                        print("Choose Product Category:")
                        cur.execute("SELECT * FROM Product_Category")
                        out = cur.fetchall()
                        i = 1
                        for c in out:
                            print(i + ".",c)
                        print("\n------------------\n")

                        try:
                            category = int(input("Enter category ID: "))
                        except (category > (len(out)+1) or category < 1):
                            print("Invalid input, please try again")
                            continue

                        if (category == (len(out)+1)): 
                            break

                        browseProducts(cur, category)
                elif (case2 == 2):
                    getCart(cur, customer_id)
                elif (case2 == 3):
                    checkoutCart(cur, customer_id)
                elif (case2 == 4):
                    getOrderHistory(cur, userid)
                elif (case2 == 5):
                    changeUsername(cur, userid)
                elif (case2 == 6):
                    oldpas = input("Enter old password: ")
                    cur.execute("SELECT Pass_Word FROM Person WHERE User_ID = %s;",(userid,))
                    if(oldpas!=cur.fetchone()[0]):
                        print("Invalid password!")
                        continue
                elif (case2 == 7):
                    break

        else:
            print("Invalid input, please try again\n")


# --------------------------------- End --------------------------------------

db.commit()
cur.close()
db.close()