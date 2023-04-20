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
VALUES ((SELECT a.Username FROM Adminn WHERE First_Name = "Kiana"),@oid);

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

COMMIT;
"""


tran4 = """
BEGIN TRANSACTION;

INSERT INTO Person (`Username`, `Pass_word`, `First_Name`, `Middle_Name`,
`Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`)
VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);

INSERT INTO Manufacturer (`User_ID`)
VALUES (LAST_INSERT_ID());

COMMIT;
"""


tran5 = """
BEGIN TRANSACTION;

INSERT INTO Person (`Username`, `Pass_word`, `First_Name`, `Middle_Name`,
`Last_Name`, `Email_ID`, `Is_Card_Saved`, `Card_no`, `Name_on_Card`, `Expire_Date`, `Is_UPI_Saved`, `UPI_ID`)
VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s);

INSERT INTO Delivery_Person (`User_ID`, `Active_Delivery_Request`, `Delivery_Rating`, `TotRatings`)
VALUES (LAST_INSERT_ID(), NULL, 0.0, 0);

COMMIT;
"""



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


# Main Menu
while(True):
    print("""1. Register
    2. Login
    3. Exit
    """)

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

        print("""What would you like to register as?
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

            quer = "SELECT * FROM Person WHERE Username = %s AND Pass_word = %s;"
            params = (user,pasw)
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


# After login/register
p = (userid,)
cur.execute("SELECT * FROM Manufacturer WHERE User_ID = %s;",p)
res = cur.fetchone()


if res is not None:
    mid = res[0]

    while(True):
        print('''1. Add new product
            2. Update product details
            3. View Product Sales
            4. Change username
            5. Change password
            6. Logout\n
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
            cur.execute("""INSERT INTO
                Product(`pName`, `Base_Price`, `Discount_Percentage`, `Available_Stock`, `Avg_Delivery_Time`, `Product_Rating`, `TotRatings`)
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

            print('''Choose what to update:
            1. Product Name
            2. Base Price
            3. Discount
            4. Stock
            5. Back
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

else:
    p = (userid,)
    cur.execute("SELECT * FROM Delivery_Person WHERE User_ID = %s;",p)
    res = cur.fetchone()
    
    if res is not None:
        did = res[0]

        while(True):
            print('''1. View Active Delivery Request
            2. Update delivery status
            3. Accept new delivery request
            4. Change username
            5. Change password
            6. Log out
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
                print("Choose updated status: ")
                print('''1. Pending pick-up
                    2. Order picked up, pending Delivery
                    3. Order Delivered
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



# print('''1. Add a new product category
# 2. View Order History for a customer
# 3. View category-wise sales
# 4. View average product rating for each category
# 5. View state-wise orders
# 6. View pending deliveries for each region
# 7. Add product to customer's cart
# 8. Change customer username
# 9. Exit
# ''')

# while(True):
#     case = int(input("Enter query to execute: "))

#     if(case==1):
#         params = (input("Enter new category name: "),)
#         cur.execute("""INSERT INTO Product_Category(Category_ID, cName) 
#                     SELECT MAX(Category_ID) + 1, %s 
#                     FROM Product_Category;""",params)
#     elif(case==2):
#         p = (userid,)
#         cur.execute("SELECT * FROM Customer WHERE User_ID = %s",p)
#         res = cur.fetchone()
#         if res is None:
#             print("Log in as Customer to view your order history")
#             break
#         else:
#             params = (res[0],)
#         cur.execute("""SELECT o.* FROM Orderr o
#                     INNER JOIN Customer_Past_Orderr po ON o.Order_ID = po.Order_ID
#                     WHERE po.Customer_ID = %s;""",params)
#         res = cur.fetchall()
#         new = []
#         for i in range(0, len(res)):
#             row = res[i]
#             new.append([row[0], row[2], row[3], row[4], row[5]])
#         new.insert(0, ["Order ID", "Product Total", "Taxes", "Delivery Fee", "Grand Total"])
#         print(tabulate(new))
#         # for row in res:
#         #     print(row[0],"      ",row[2],"      ",row[3],"      ",row[4],"      ",row[5])
#     elif(case==3):
#         cur.execute("""SELECT c.Category_ID AS Category_ID, c.Product_ID AS Product_ID, c.pName AS pName, Sum(ps.ProductSales) AS TotalSales
#                     FROM (
#                         SELECT Product_ID, Sum(Price) AS ProductSales 
#                         FROM Product_Sales 
#                         GROUP BY Product_ID
#                     ) ps
#                     INNER JOIN (
#                         SELECT Product_PCategory.Category_ID, Product.Product_ID, Product.pName
#                         FROM Product 
#                         INNER JOIN Product_PCategory 
#                         ON Product.Product_ID = Product_PCategory.Product_ID
#                     ) c
#                     ON ps.Product_ID = c.Product_ID
#                     GROUP BY Category_ID, Product_ID, pName WITH ROLLUP;""")
#         res = cur.fetchall()
#         new = []
#         new.append(["Category ID", "Product ID", "Product Name", "Total Sales"])
#         for row in res:
#             if(row[2] != None):
#                 new.append([row[0], row[1], row[2], row[3]])
#         print(tabulate(new))
        
#     elif(case==4):
#         cur.execute("""SELECT c.cName AS category_name, AVG(p.Product_Rating) AS avg_rating
#                     FROM Product p
#                     JOIN Product_PCategory pc ON p.Product_ID = pc.Product_ID
#                     JOIN Product_Category c ON pc.Category_ID = c.Category_ID
#                     GROUP BY c.Category_ID""")
#         res = cur.fetchall()
#         new = []
#         new.append(["Category", "Avg Rating"])
#         for row in res:
#             new.append([row[0], (int(row[1]*100)/100.0)])
        
#         print(tabulate(new))
#     elif(case==5):
#         cur.execute("""SELECT ad.State AS State, ad.City AS City, ad.Street_Name AS Street_Name, Count(*) AS TotalOrders
#                     FROM Delivery_Person_Completed_Delivery dc
#                     INNER JOIN (
#                         SELECT cd.State, cd.City, cd.Street_Name, Orderr.Order_ID
#                         FROM Orderr
#                         INNER JOIN Customer_Delivery_Address cd
#                         ON Orderr.Customer_ID = cd.Customer_ID
#                     ) ad
#                     ON dc.Order_ID = ad.Order_ID
#                     GROUP BY State, City, Street_Name WITH ROLLUP;""")
#         res = cur.fetchall()
#         new = []
#         new.append(["State", "City", "Street Name", "No of Orders"])
#         for row in res:
#             new.append([row[0], row[1], row[2], row[3]])

#         print(tabulate(new))
#     elif(case==6):
#         cur.execute("""SELECT cd.State AS State, cd.City AS City, cd.Street_Name AS Street_Name, Count(*) AS TotalIncompleteDeliveries
#                     FROM Customer_Pending_Orderr cp
#                     INNER JOIN Customer_Delivery_Address cd
#                     ON cp.Customer_ID = cd.Customer_ID
#                     GROUP BY State, City, Street_Name WITH ROLLUP;""")
#         res = cur.fetchall()
#         new = []
#         new.append(["State", "City", "Street Name", "No of Pending Deliveries"])
#         for row in res:
#             new.append([row[0], row[1], row[2], row[3]])

#         print(tabulate(new))
#     elif(case==7):
#         cur.execute("SELECT * FROM Product")
#         res = cur.fetchall()
#         new = []
#         new.append(["Product ID", "Product Name", "Price", "Product Rating"])
#         print()
#         for row in res:
#             new.append([row[0], row[1], row[2]*(1-row[3]/100.0), row[6]])
        
#         print(tabulate(new))
#         pid = int(input("Choose product (ID) to add to cart: "))
#         q = int(input("Enter quantity: "))
#         params = (userid, pid, q)
#         try:
#             cur.execute("INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`, `Quantity`) VALUES (%s,%s,%s);",params)
#             db.commit()
#         except con.Error as err:
#             print("Error: ",err.msg)
#     elif(case==8):
#         newuser = input("Enter new username: ")
#         params = (newuser,userid,)
#         try:
#             cur.execute("UPDATE Person SET Username = %s WHERE User_ID = %s;",params)
#         except con.Error as err:
#             print("Error: ",err.msg)
#     elif(case==9):
#         break
#     else:
#         print("Invalid input")


db.commit()
cur.close()
db.close()