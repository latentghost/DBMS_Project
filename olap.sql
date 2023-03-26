-- category wise and product wise sales
SELECT c.Category_ID AS Category_ID, c.Product_ID AS Product_ID, c.pName AS pName, Sum(ps.ProductSales) AS TotalSales
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
GROUP BY Category_ID, Product_ID, pName WITH ROLLUP;

-- slice counts as another operation so maybe we could just show the above but for a particular category using cube
-- that's such copium though

-- completed orders per state then city and so on
SELECT ad.State AS State, ad.City AS City, ad.Street_Name AS Street_Name, Count(*) AS TotalOrders
FROM Delivery_Person_Completed_Delivery dc
INNER JOIN (
    SELECT cd.State, cd.City, cd.Street_Name, Orderr.Order_ID
    FROM Orderr
    INNER JOIN Customer_Delivery_Address cd
    ON Orderr.Customer_ID = cd.Customer_ID
) ad
ON dc.Order_ID = ad.Order_ID
GROUP BY State, City, Street_Name WITH ROLLUP;


-- find the total number of products sold by each manufacturer
SELECT m.Seller_ID, COUNT(*) AS Total_Products_Sold
FROM Manufacturer m
INNER JOIN Manufacturer_Product_Sold mps ON m.Seller_ID = mps.Seller_ID
GROUP BY m.Seller_ID;


-- find the most popular product categories
SELECT pc.cName, COUNT(*) AS Total_Products_Sold
FROM Product_Category pc
INNER JOIN Product_PCategory ppc ON pc.Category_ID = ppc.Category_ID
INNER JOIN Product p ON ppc.Product_ID = p.Product_ID
GROUP BY pc.Category_ID
ORDER BY Total_Products_Sold DESC
LIMIT 5;


-- find the average product rating for each category
SELECT c.cName AS category_name, AVG(p.Product_Rating) AS avg_rating
FROM Product p
JOIN Product_PCategory pc ON p.Product_ID = pc.Product_ID
JOIN Product_Category c ON pc.Category_ID = c.Category_ID
GROUP BY c.Category_ID


-- find the total number of orders delivered by each delivery person
SELECT dp.DelPerson_ID, COUNT(*) AS total_orders_delivered
FROM Delivery_Person dp
JOIN Orderr o ON dp.Active_Delivery_Request = o.Order_ID
GROUP BY dp.DelPerson_ID

-- pending deliveries by region with rollup
SELECT cd.State AS State, cd.City AS City, cd.Street_Name AS Street_Name, Count(*) AS TotalIncompleteDeliveries
FROM Customer_Pending_Orderr cp
INNER JOIN Customer_Delivery_Address cd
ON cp.Customer_ID = cd.Customer_ID
GROUP BY State, City, Street_Name WITH ROLLUP;

-- amount classification and by time
SELECT *
FROM (
	SELECT 
	  YEAR(dr.Expected_Completion_Time) AS year,
	  MONTH(dr.Expected_Completion_Time) AS month,
	  DAY(dr.Expected_Completion_Time) AS day,
	  IF(Amount_Payable > 100000, 'Large', IF(Amount_Payable > 10000 AND Amount_Payable < 100000, 'Medium', 'Small')) AS AmountClassification,
	  Count(*) AS OrderCount
	FROM Delivery_Request dr
	GROUP BY year, month, day, AmountClassification
) ams
WHERE ams.AmountClassification = 'Medium'
GROUP BY AmountClassification, OrderCount, year, month, day WITH ROLLUP
HAVING Grouping(AmountClassification) = 0 AND Grouping(OrderCount) = 0 AND Grouping(year) = 0;
