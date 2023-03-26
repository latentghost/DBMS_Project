-- category wise and product wise sales
SELECT Category_ID, Product_ID, pName, Sum(ProductSales) AS TotalSales
FROM (
    SELECT Product_ID, Sum(Price) AS ProductSales 
    FROM Product_Sales 
    GROUP BY Product_ID
) ps
INNER JOIN (
    SELECT Category_ID, Product_ID, pName
    FROM Product 
    INNER JOIN Product_PCategory 
    ON Product.Product_ID = Product_PCategory.Product_ID
) c
ON ps.Product_ID = c.Product_ID
GROUP BY ROLLUP(Category_ID, Product_ID);

-- slice counts as another operation so maybe we could just show the above but for a particular category using cube
-- that's such copium though

-- orders per state then city and so on
SELECT State, City, Street_Name, Count(*) AS TotalOrders
FROM Delivery_Person_Completed_Delivery dc
INNER JOIN (
    SELECT State, City, Street_Name, Order_ID
    FROM Orderr
    INNER JOIN Customer_Delivery_Address
    ON Orderr.Customer_ID = Customer_Delivery_Address.Customer_ID
) ad
ON dc.Order_ID = ad.Order_ID
GROUP BY ROLLUP(State, City, Street_Name);