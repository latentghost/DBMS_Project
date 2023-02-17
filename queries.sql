# Adding a product category
INSERT INTO Product_Category(Category_ID,cName) 
VALUES (max + 1, category_name) 
WHERE max = (SELECT MAX(Category_ID) FROM Product_Category), category_name = ?;

# Adding a product (seller)
INSERT INTO Product (Product_ID, pName, Base_Price, Discount_Percentage, Available_Stock, Avg_Delivery_Time, Product_Rating) 
VALUES (id + 1, pname, price, discount, stock, del_time, rating);
WHERE id = (SELECT MAX(Product_ID) FROM Product), pname = ?, price = ?, discount = ?, stock = ?, del_time = ?, rating = ?;
INSERT INTO Manufacturer_Product_Sold (Seller_ID, Product_ID) 
VALUES (sel_id, pid)
WHERE sel_id = ?, pid = (SELECT MAX(Product_ID) FROM Product);
INSERT INTO Product_PCategory (Product_ID, Category_ID)
VALUES (pid, cid)
WHERE pid = (SELECT MAX(Product_ID) FROM Product), cid = ?;

# Creation of order (and delivery request)
SET @cid = (
SELECT c.Customer_ID FROM Customer c
    WHERE c.Customer_ID = ?
);
INSERT INTO Orderr (Order_ID, Customer_ID, Product_Total, Taxes, Delivery_Fee, Grand_Total, Payment_Mode) 
VALUES (ord_id + 1, cid, total, taxes, fee, totaler, mode);
WHERE ord_id = (SELECT MAX(Order_ID) FROM Orderr), cid = ?, total = (SELECT SUM((SELECT Base_Price*Discount_Percentage/100 FROM Product WHERE Product_ID = (SELECT Product_ID FROM Cart_Product WHERE Customer_ID = cid))*(SELECT Quantity FROM Cart_Product WHERE Customer_ID = cid))), taxes = 0.18*total, fee = 0.10*total, totaler = total + taxes + fee, mode = ?;
SET @ord_id = (SELECT MAX(Order_ID) FROM Orderr);
# INSERT INTO Orderr_Product (Quantity, Order_ID, Product_ID) VALUES (quant, ord_id, pid)
# WHERE (quant, pid) IN
# SELECT Quantity, Product_ID FROM Cart_Product WHERE 
DELETE FROM Cart_Product WHERE Customer_ID = cid;
INSERT INTO Customer_Pending_Orderr (Customer_ID, Order_ID) VALUES (cid, ord_id)
WHERE ord_id = (SELECT MAX(Order_ID) FROM Orderr);

# set discount for a given product (seller)
UPDATE Product 
SET Discount_Percentage = ?;
WHERE Product_ID = ?;

# delivery rating for a delivery person
SET @del_id = (
SELECT d.DelPerson_ID FROM Delivery_Person d
    WHERE d.DelPerson_ID = ?
);
INSERT INTO Rates_Delivery (Customer_ID, Delivery_ID, Customer_Rating) VALUES (cid, del_id, rating)
WHERE cid = ?, del_id = ?, rating = ?;
UPDATE Delivery_Person
SET Delivery_Rating = (SELECT AVG(Customer_Rating) FROM Rates_Delivery WHERE Delivery_ID = del_id)
WHERE DelPerson_ID = del_id;

# view order history
SELECT * FROM Customer_Past_Orderr INNER JOIN Orderr ON Customer_Past_Orderr.Order_ID = Orderr.Order_ID
WHERE Customer_ID = ?;

# view cart
SELECT * FROM Cart_Product INNER JOIN Product ON Cart_Product.Product_ID = Product.Product_ID
WHERE Customer_ID = ?;