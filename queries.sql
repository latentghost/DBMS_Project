USE online_retail_store;


# Adding a product category
INSERT INTO Product_Category(Category_ID, cName) 
SELECT MAX(Category_ID) + 1, ? 
FROM Product_Category;


# Adding a product (seller)
INSERT INTO Product (Product_ID, pName, Base_Price, Discount_Percentage, Available_Stock, Avg_Delivery_Time, Product_Rating) 
SELECT MAX(Product_ID) + 1, ?, ?, ?, ?, ?, 0.0, 0
FROM Product;

INSERT INTO Manufacturer_Product_Sold (Seller_ID, Product_ID) 
VALUES (?, (SELECT MAX(Product_ID) FROM Product));

INSERT INTO Product_PCategory (Product_ID, Category_ID)
VALUES ((SELECT MAX(Product_ID) FROM Product), ?);

-- # Creation of order (and delivery request)
-- SET @cid = (
-- SELECT c.Customer_ID FROM Customer c
--     WHERE c.Customer_ID = ?
-- );
-- INSERT INTO Orderr (Order_ID, Customer_ID, Product_Total, Taxes, Delivery_Fee, Grand_Total, Payment_Mode) 
-- VALUES (ord_id + 1, cid, total, taxes, fee, totaler, mode);
-- WHERE ord_id = (SELECT MAX(Order_ID) FROM Orderr), cid = ?, total = (SELECT SUM((SELECT Base_Price*Discount_Percentage/100 FROM Product WHERE Product_ID = (SELECT Product_ID FROM Cart_Product WHERE Customer_ID = cid))*(SELECT Quantity FROM Cart_Product WHERE Customer_ID = cid))), taxes = 0.18*total, fee = 0.10*total, totaler = total + taxes + fee, mode = ?;
-- SET @ord_id = (SELECT MAX(Order_ID) FROM Orderr);
-- # INSERT INTO Orderr_Product (Quantity, Order_ID, Product_ID) VALUES (quant, ord_id, pid)
-- # WHERE (quant, pid) IN
-- # SELECT Quantity, Product_ID FROM Cart_Product WHERE 
-- DELETE FROM Cart_Product WHERE Customer_ID = cid;
-- INSERT INTO Customer_Pending_Orderr (Customer_ID, Order_ID) VALUES (cid, ord_id)
-- WHERE ord_id = (SELECT MAX(Order_ID) FROM Orderr);


# fix discount for a given product (seller)
UPDATE Product 
SET Discount_Percentage = ?
WHERE Product_ID = ?;



# delivery rating for a delivery person
SET @cid = (
	SELECT c.Customer_ID FROM Customer c
	WHERE c.Customer_ID = ?
);
SET @del_id = (
	SELECT d.DelPerson_ID FROM Delivery_Person d
    WHERE d.DelPerson_ID = ?
);
INSERT INTO Rates_Delivery (Customer_ID, Delivery_ID, Customer_Rating) VALUES (@cid, @del_id, ?);
SET @rating = (
	SELECT rd.Customer_Rating from Rates_Delivery rd
	WHERE rd.Delivery_ID = @del_id AND rd.Customer_ID = @cid
);
UPDATE Delivery_Person
SET Delivery_Rating = ((Delivery_Rating * TotRatings) + @rating)/(TotRatings + 1),
	TotRatings = TotRatings + 1
WHERE DelPerson_ID = @del_id;



# view order history for a given customer
SELECT po.* FROM Customer_Past_Orderr po
INNER JOIN Orderr o ON po.Order_ID = o.Order_ID
WHERE po.Customer_ID = ?;



# view cart for a given customer
SELECT * FROM Cart_Product cp
INNER JOIN Product p ON cp.Product_ID = p.Product_ID
WHERE cp.Customer_ID = ?;



# select all products from a given product category
SELECT p.* FROM Product p
JOIN Product_PCategory pcats ON p.Product_ID = pcats.Product_ID
JOIN Product_Category c ON c.Category_ID = pcats.Category_ID
WHERE c.Category_ID = ?;



# for a given customer, update the quantity of a given product in their cart
UPDATE Cart_Product
SET Quantity = ?
WHERE Customer_ID = ? AND Product_ID = ?;



# for a given delivery person, show all completed deliveries
SELECT dr.*,cd.* FROM Delivery_Request dr
INNER JOIN Delivery_Person_Completed_Delivery cd ON dr.Order_ID = cd.Order_ID
WHERE cd.DelPerson_ID = ? AND dr.Delivery_Status = 2;



# update product rating when a customer rates a product
SET @cid = (
	SELECT c.Customer_ID FROM Customer c
    WHERE c.Customer_ID = ?
);
SELECT @newrating := rp.Customer_Rating, @pid := rp.Product_ID
FROM Rates_Product rp WHERE rp.Customer_ID = @cid;
UPDATE Product
SET Product_Rating = ((Product_Rating * TotRatings) + @newrating)/(TotRatings + 1),
	TotRatings = TotRatings + 1
WHERE Product_ID = @pid;



# decrease the stock of product when customer adds it to cart
SET @pid = (
	SELECT p.Product_ID FROM Product p
    WHERE p.Product_ID = ?
);
UPDATE Product
SET Available_Stock = CASE
						WHEN Available_Stock > 0 THEN Available_Stock - 1
                        ELSE 0
					END
WHERE Product_ID = @pid;



# change username for a given Person with a given new username
UPDATE Person
SET Username = ?
WHERE User_ID = ?;



# add given product to cart for a given customer
INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`, `Quantity`) VALUES (?,?,1);



# view the product sales for a given product
SET @pid = (
	SELECT p.Product_ID FROM Product p
    WHERE p.Product_ID = ?
);
SELECT ps.* FROM Product_Sales ps
WHERE ps.Product_ID = @pid;