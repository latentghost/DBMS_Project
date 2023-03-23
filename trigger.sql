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


-- check for validity of username when person tries to change username
CREATE TRIGGER check_username
BEFORE UPDATE ON Person
FOR EACH ROW
BEGIN
    CASE
        WHEN LENGTH(NEW.Username)<10 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT 'Username too short';
        WHEN NEW.Username = OLD.Username THEN
            SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT 'New Username must be different from Old Username';
        WHEN NEW.Username != OLD.Username AND EXISTS (SELECT * FROM Person WHERE Username = NEW.Username) THEN
            SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT 'Username already exists, please try a different one';
    END CASE;
END;