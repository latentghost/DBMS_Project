CREATE TABLE Person (
    User_ID INT NOT NULL,
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Middle_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Email_ID VARCHAR(255) NOT NULL,
    Is_Card_Saved VARCHAR(255) NOT NULL,
    Card_no INT,
    Name_on_Card VARCHAR(255),
    CVV INT,
    Expire_Date DATE,
    Is_UPI_Saved VARCHAR(255) NOT NULL,
    UPI_ID VARCHAR(255),
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    PRIMARY KEY (User_ID),
    FOREIGN KEY (Admin_Username) REFERENCES Login_Credentials(Username),
    FOREIGN KEY (Admin_Password) REFERENCES Login_Credentials(Password)
)

CREATE TABLE Person_Phone (
    User_ID INT NOT NULL,
    Phone_no INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID)
)

CREATE TABLE Customer (
    User_ID INT NOT NULL,
    No_of_Cart_Products INT NOT NULL,
    Cart_Status VARCHAR(255) NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    FOREIGN KEY (Admin_Username) REFERENCES Login_Credentials(Username),
    FOREIGN KEY (Admin_Password) REFERENCES Login_Credentials(Password)
)

CREATE TABLE Customer_Delivery_Address (
    User_ID INT NOT NULL,
    House_no INT NOT NULL,
    Street_Name VARCHAR(255),
    City VARCHAR(255) NOT NULL,
    State VARCHAR(255) NOT NULL,
    Pin_Code INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID)
)

CREATE TABLE Customer_Past_Order (
    User_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    Cart_Status VARCHAR(255) NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID)
)

CREATE TABLE Customer_Past_Searches (
    User_ID INT NOT NULL,
    Search_String VARCHAR(255) NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID),
)

CREATE TABLE Cart_Product (
    User_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
)

CREATE TABLE Customer_Pending_Order (
    User_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID)
)

CREATE TABLE Manufacturer (
    User_ID INT NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    FOREIGN KEY (Admin_Username) REFERENCES Login_Credentials(Username),
    FOREIGN KEY (Admin_Password) REFERENCES Login_Credentials(Password)
)

CREATE TABLE Manufacturer_Product_Sold (
    User_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Manufacturer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
)

CREATE TABLE Manufacturer_Upcoming_Product (
    User_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Manufacturer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
)

CREATE TABLE Delivery_Person (
    User_ID INT NOT NULL,
    Active_Delivery_Request INT NOT NULL,
    Delivery_Rating INT NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    PRIMARY KEY (User_ID),
    FOREIGN KEY (Active_Delivery_Request) REFERENCES Order(Order_ID),
    FOREIGN KEY (Admin_Username) REFERENCES Login_Credentials(Username),
    FOREIGN KEY (Admin_Password) REFERENCES Login_Credentials(Password)
)

CREATE TABLE Delivery_Person_Completed_Delivery (
    User_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Delivery_Person(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID)
)

CREATE TABLE Login_Credentials (
    Username VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
)
