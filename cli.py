import mysql.connector as con
config = {
    'host': "localhost",
    'user': "root",
    'password': "dl9ca6293",
    'database': "online_retail_store"
}
db = con.connect(**config)

cur1 = db.cursor()

# while(True):
#     user = input("Username: ")
#     pasw = input("Password: ")

#     quer = "SELECT * FROM Person WHERE Username = %s AND Pass_word = %s"
#     params = (user,pasw)
#     cur1.execute(quer,params)

#     res = cur1.fetchone()

#     userid = -1
#     if res is not None:
#         userid = res[0]
#         break

#     print("Invalid Login Credentials, please try again")


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
# res1 = cur1.fetchall()
# db.commit()
cur1.close()

db = con.connect(**config)
cur2 = db.cursor()
cur2.execute(trigger2)
# res2 = cur2.fetchall()
# db.commit()
cur2.close()

db = con.connect(**config)
cur3 = db.cursor()
cur3.execute(trigger3)
# res3 = cur3.fetchall()
# db.commit()
cur3.close()

db = con.connect(**config)
cur4 = db.cursor()
cur4.execute(trigger4)
# res4 = cur4.fetchall()
cur4.close()
db = con.connect(**config)
db.commit()







cur = db.cursor()


print('''1. Add a new product category
2. View Order History for a customer
3. View category-wise sales
4. View average product rating for each category
5. View state-wise orders
6. Add product to customer's cart
7. Change customer username
8. Place order
''')

# while(True):
#     case = int(input("Enter query to execute: "))

cur.close()
db.close()
