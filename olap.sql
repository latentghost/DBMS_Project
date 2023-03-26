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
