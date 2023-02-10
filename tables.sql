CREATE TABLE Person (
    User_ID INT NOT NULL,
    Username VARCHAR(255) NOT NULL,
    Pass_word VARCHAR(255) NOT NULL,
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
    FOREIGN KEY (Admin_Username) REFERENCES Admin(Username)
);

CREATE TABLE Person_Phone (
    User_ID INT NOT NULL,
    Phone_no INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID)
);

CREATE TABLE Customer (
    User_ID INT NOT NULL,
    No_of_Cart_Products INT NOT NULL,
    Cart_Status VARCHAR(255) NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    FOREIGN KEY (Admin_Username) REFERENCES Admin(Username)
);

CREATE TABLE Customer_Delivery_Address (
    User_ID INT NOT NULL,
    House_no INT NOT NULL,
    Street_Name VARCHAR(255),
    City VARCHAR(255) NOT NULL,
    State VARCHAR(255) NOT NULL,
    Pin_Code INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID)
);

CREATE TABLE Customer_Past_Order (
    User_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    Cart_Status VARCHAR(255) NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID)
);

CREATE TABLE Customer_Past_Searches (
    User_ID INT NOT NULL,
    Search_String VARCHAR(255) NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID)
);

CREATE TABLE Cart_Product (
    User_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Customer_Pending_Order (
    User_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID)
);

CREATE TABLE Manufacturer (
    User_ID INT NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    FOREIGN KEY (Admin_Username) REFERENCES Admin(Username)
);

CREATE TABLE Manufacturer_Product_Sold (
    User_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Manufacturer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Manufacturer_Upcoming_Product (
    User_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Manufacturer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Delivery_Person (
    User_ID INT NOT NULL,
    Active_Delivery_Request INT NOT NULL,
    Delivery_Rating INT NOT NULL,
    Admin_Username VARCHAR(255) NOT NULL,
    PRIMARY KEY (User_ID),
    FOREIGN KEY (Active_Delivery_Request) REFERENCES Order(Order_ID),
    FOREIGN KEY (Admin_Username) REFERENCES Admin(Username)
);

CREATE TABLE Delivery_Person_Completed_Delivery (
    User_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Delivery_Person(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Order(Order_ID)
);

CREATE TABLE Order (
  Order_ID INT NOT NULL,
  Product_Total FLOAT NOT NULL,
  Taxes FLOAT NOT NULL,
  Delivery_Fee FLOAT NOT NULL,
  Grand_TotalFLOAT NOT NULL,
  Payment_Mode INT NOT NULL,
  PRIMARY KEY (Order_ID)
);

CREATE TABLE Product (
  Product_ID INT NOT NULL,
  pName varchar(255) NOT NULL,
  Base_Price FLOAT NOT NULL,
  Discount_Percentage INT DEFAULT NULL,
  Available_Stock INT NOT NULL,
  Avg_Delivery_Time datetime DEFAULT NULL,
  Product_Rating FLOAT DEFAULT NULL,
  PRIMARY KEY (Product_ID)
);

CREATE TABLE Order_Product (
  Quantity INT NOT NULL,
  Order_ID INT NOT NULL,
  Product_ID INT NOT NULL,
  FOREIGN KEY (Order_ID) REFERENCES Order (Order_ID)
);

CREATE TABLE Delivery_Request(
    Order_ID INT NOT NULL,
    Delivery_Status INT NOT NULL,
    Expected_Completion_Time datetime,
    Amount_Payable FLOAT NOT NULL,
    Delivery_ID INT NOT NULL,
    FOREIGN KEY(Order_ID) REFERENCES Order(Order_ID),
    FOREIGN KEY(Delivery_ID) REFERENCES Customer(User_ID)
);

CREATE TABLE Product_Sales(
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Price FLOAT NOT NULL,
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY(Customer) REFERENCES Customer(User_ID)
);

CREATE TABLE Product_Category(
    Category_ID INT NOT NULL,
    cName VARCHAR(255),
    Admin_Username VARCHAR(255) NOT NULL,
    Admin_Password VARCHAR(255) NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username)
);

CREATE TABLE Admin(
    Username VARCHAR(255) NOT NULL,
    Pass_word VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Middle_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY(Username)
);

CREATE TABLE Admin_Customers(
    Admin_Username VARCHAR(255) NOT NULL,
    Customer_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username),
    FOREIGN KEY(Customer_ID) REFERENCES Customer(User_ID)
);

CREATE TABLE Admin_Manufacturers(
    Admin_Username VARCHAR(255) NOT NULL,
    Manufacturer_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username),
    FOREIGN KEY(Manufacturer_ID) REFERENCES Manufacturer(User_ID)
);

CREATE TABLE Admin_Products(
    Admin_Username VARCHAR(255) NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username),
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Admin_Product_Categories(
    Admin_Username VARCHAR(255) NOT NULL,
    Category_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username),
    FOREIGN KEY(Category_ID) REFERENCES Product_Category(Category_ID)
);

CREATE TABLE Admin_DeliveryPersons(
    Admin_Username VARCHAR(255) NOT NULL,
    DelPerson_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username),
    FOREIGN KEY(DelPerson_ID) REFERENCES Delivery_Person(User_ID)
);

CREATE TABLE Admin_ActiveDelReqs(
    Admin_Username VARCHAR(255) NOT NULL,
    Req_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username),
    FOREIGN KEY(Req_ID) REFERENCES Delivery_Request(Order_ID)
);

CREATE TABLE Admin_PendingDelReqs(
    Admin_Username VARCHAR(255) NOT NULL,
    Req_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Admin(Username),
    FOREIGN KEY(Req_ID) REFERENCES Delivery_Request(Order_ID)
);

CREATE TABLE Rates_Product(
    Customer_ID VARCHAR(255) NOT NULL,
    Product ID INT NOT NULL,
    Customer_Rating FLOAT NOT NULL,
    FOREIGN KEY(Customer_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
);

CREATE TABLE Rates_Delivery(
    Customer_ID VARCHAR(255) NOT NULL,
    Delivery_ID INT NOT NULL,
    Customer_Rating FLOAT NOT NULL,
    FOREIGN KEY(Customer_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY(Delivery_ID) REFERENCES Delivery_Person(User_ID)
);
