-- check for enough available stock before adding the product to cart
CREATE TRIGGER check_stock
INSTEAD OF INSERT ON Cart_Product
FOR EACH ROW
BEGIN
    IF (SELECT Available_Stock FROM Product WHERE Product_ID = NEW.Product_ID) < NEW.Quantity THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Not enough stock";
    ELSE
        INSERT INTO `Cart_Product` (`Customer_ID`, `Product_ID`, `Quantity`) VALUES (NEW.Customer_ID, NEW.Product_ID, NEW.Quantity);
    END IF;
END;


