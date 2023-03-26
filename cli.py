import mysql.connector as con
config = {
    'host': "localhost",
    'user': "root",
    'password': "Popoye@456",
    'database': "online_retail_store"
}
db = con.connect(**config)

cur1 = db.cursor()

while(True):
    user = input("Username: ")
    pasw = input("Password: ")

    quer = "SELECT * FROM Person WHERE Username = %s AND Pass_word = %s"
    params = (user,pasw)
    cur1.execute(quer,params)

    res = cur1.fetchone()

    userid = -1
    if res is not None:
        userid = res[0]
        break

    print("Invalid Login Credentials, please try again")


trigger1 = """
DROP TRIGGER IF EXISTS check_stock;
CREATE TRIGGER check_stock
BEFORE INSERT ON Cart_Product
FOR EACH ROW
BEGIN
    IF (SELECT p.Available_Stock FROM Product p WHERE p.Product_ID = NEW.Product_ID) < NEW.Quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Not enough stock";
    ELSE
        INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`, `Quantity`) VALUES (NEW.Customer_ID, NEW.Product_ID, NEW.Quantity);
    END IF;
END;"""

trigger2 = """
DROP TRIGGER IF EXISTS check_username;
CREATE TRIGGER check_username
BEFORE UPDATE ON Person
FOR EACH ROW
BEGIN
    CASE
        WHEN LENGTH(NEW.Username)<10 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Username too short';
        WHEN NEW.Username = OLD.Username THEN
            SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'New Username must be different from Old Username';
        WHEN NEW.Username != OLD.Username AND EXISTS (SELECT * FROM Person WHERE Username = NEW.Username) THEN
            SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'Username already exists, please try a different one';
        
    END CASE;
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
    SELECT DelPerson_ID INTO del_id FROM Delivery_Persons WHERE Active_Delivery_Request IS NULL LIMIT 1;
    IF del_id IS NOT NULL THEN
        UPDATE Delivery_Request SET Delivery_Status = 1 WHERE Order_ID = NEW.Order_ID;
        UPDATE Delivery_Persons SET Active_Delivery_Request = NEW.Order_ID WHERE DelPerson_ID = del_id;
    END IF;
END;"""


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

print('''1. Add a new product category
2. View Order History for a customer
3. View category-wise sales
4. View average product rating for each category
5. View state-wise orders
6. View pending deliveries for each region
7. Add product to customer's cart
8. Change customer username
''')

while(True):
    case = int(input("Enter query to execute: "))

    if(case==1):
        params = (input("Enter new category name: "),)
        cur.execute("""INSERT INTO Product_Category(Category_ID, cName) 
                    SELECT MAX(Category_ID) + 1, %s 
                    FROM Product_Category;""",params)
    elif(case==2):
        p = (userid,)
        cur.execute("SELECT * FROM Customer WHERE User_ID = %s",p)
        res = cur.fetchone()
        if res is None:
            print("Log in as Customer to view your order history")
            break
        else:
            params = (res[0],)
        cur.execute("""SELECT po.* FROM Customer_Past_Orderr po
                    INNER JOIN Orderr o ON po.Order_ID = o.Order_ID
                    WHERE po.Customer_ID = %s;""",params)
        res = cur.fetchall()
        for row in res:
            print(row)
    elif(case==3):
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
        for row in res:
            print(row)
    elif(case==4):
        cur.execute("""SELECT c.cName AS category_name, AVG(p.Product_Rating) AS avg_rating
                    FROM Product p
                    JOIN Product_PCategory pc ON p.Product_ID = pc.Product_ID
                    JOIN Product_Category c ON pc.Category_ID = c.Category_ID
                    GROUP BY c.Category_ID""")
        res = cur.fetchall()
        for row in res:
            print(row)
    elif(case==5):
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
        for row in res:
            print(row)
    elif(case==6):
        cur.execute("""SELECT cd.State AS State, cd.City AS City, cd.Street_Name AS Street_Name, Count(*) AS TotalIncompleteDeliveries
                    FROM Customer_Pending_Orderr cp
                    INNER JOIN Customer_Delivery_Address cd
                    ON cp.Customer_ID = cd.Customer_ID
                    GROUP BY State, City, Street_Name WITH ROLLUP;""")
        res = cur.fetchall()
        for row in res:
            print(row)
    elif(case==7):
        cur.execute("SELECT * FROM Product")
        res = cur.fetchall()
        for row in res:
            print(row)
        pid = int(input("Choose product to add to cart: "))
        q = int(input("Enter quantity: "))
        params = (userid, pid, q)
        try:
            cur.execute("INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`, `Quantity`) VALUES (%s,%s,%s);",params)
            db.commit()
        except con.Error as err:
            print("Error: ",err.msg)
    elif(case==8):
        newuser = input("Enter new username: ")
        params = (newuser,userid,)
        try:
            cur.execute("UPDATE Person SET Username = %s WHERE User_ID = %s;",params)
        except con.Error as err:
            print("Error: ",err.msg)
    else:
        print("Invalid input")


cur.close()
db.close()