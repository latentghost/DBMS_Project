-- creation of delivery request
CREATE TRIGGER create_delivery_request
AFTER INSERT ON Orderr
FOR EACH ROW
BEGIN
    INSERT INTO Delivery_Request (Order_ID, Delivery_Status, Expected_Completion_Time, Amount_Payable, Delivery_ID)
    VALUES (NEW.Order_ID, 0, DATE_ADD(CURDATE(), INTERVAL 7 DAY), NEW.Grand_Total, NEW.Customer_ID);
END

-- checking for available delivery person
CREATE TRIGGER assign_delivery_person
AFTER INSERT ON Delivery_Request
FOR EACH ROW
BEGIN
    DECLARE del_id INT;
    SELECT DelPerson_ID INTO del_id FROM Delivery_Persons WHERE Active_Delivery_Request IS NULL;
    CASE
        WHEN del_id IS NOT NULL THEN
        UPDATE Delivery_Request SET Delivery_Status = 1,
        UPDATE Delivery_Persons SET Active_Delivery_Request = NEW.Order_ID;

