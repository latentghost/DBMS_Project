DROP DATABASE IF EXISTS online_retail_store;
CREATE SCHEMA online_retail_store;

USE online_retail_store;


CREATE TABLE Adminn(
    Username VARCHAR(255) NOT NULL,
    Pass_word VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Middle_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    PRIMARY KEY(Username)
);

#
# TABLE STRUCTURE FOR: Adminn
#

CREATE TABLE Person (
    User_ID INT AUTO_INCREMENT NOT NULL,
    Username VARCHAR(255) NOT NULL,
    Pass_word VARCHAR(255) NOT NULL,
    First_Name VARCHAR(255) NOT NULL,
    Middle_Name VARCHAR(255) NOT NULL,
    Last_Name VARCHAR(255) NOT NULL,
    Email_ID VARCHAR(255) NOT NULL,
    Is_Card_Saved VARCHAR(255) NOT NULL,
    Card_no BIGINT,
    Name_on_Card VARCHAR(255),
    Expire_Date DATE,
    Is_UPI_Saved VARCHAR(255) NOT NULL,
    UPI_ID VARCHAR(255),
    PRIMARY KEY (User_ID)
);

#
# TABLE STRUCTURE FOR: Person
#

CREATE TABLE Person_Phone (
    User_ID INT NOT NULL,
    Phone_no BIGINT NOT NULL,
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID)
);

#
# TABLE STRUCTURE FOR: Person_Phone
#

CREATE TABLE Customer (
    Customer_ID INT AUTO_INCREMENT NOT NULL,
    User_ID INT NOT NULL,
    No_of_Cart_Products INT NOT NULL,
    Cart_Status VARCHAR(255) NOT NULL,
    PRIMARY KEY (Customer_ID),
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID)
);

#
# TABLE STRUCTURE FOR: Customer
#

CREATE TABLE Customer_Delivery_Address (
    Customer_ID INT NOT NULL,
    House_no INT NOT NULL,
    Street_Name VARCHAR(255),
    City VARCHAR(255) NOT NULL,
    State VARCHAR(255) NOT NULL,
    Pin_Code INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Delivery_Address
#

CREATE TABLE Orderr (
  Order_ID INT NOT NULL,
  Customer_ID INT NOT NULL,
  Product_Total FLOAT NOT NULL,
  Taxes FLOAT NOT NULL,
  Delivery_Fee FLOAT NOT NULL,
  Grand_Total FLOAT NOT NULL,
  Payment_Mode INT NOT NULL,
  PRIMARY KEY (Order_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Orderr
#


CREATE TABLE Customer_Past_Orderr (
    Customer_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orderr(Order_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Past_Orderr
#

CREATE TABLE Customer_Past_Searches (
    Customer_ID INT NOT NULL,
    Search_String VARCHAR(255) NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Past_Searches
#

CREATE TABLE Product (
  Product_ID INT AUTO_INCREMENT NOT NULL,
  pName varchar(255) NOT NULL,
  Base_Price FLOAT NOT NULL,
  Discount_Percentage INT DEFAULT NULL,
  Available_Stock INT NOT NULL,
  Avg_Delivery_Time INT DEFAULT NULL,
  Product_Rating FLOAT DEFAULT NULL,
  TotRatings INT,
  PRIMARY KEY (Product_ID)
);

#
# TABLE STRUCTURE FOR: Product
#

CREATE TABLE Product_Category(
    Category_ID INT AUTO_INCREMENT NOT NULL,
    cName VARCHAR(255),
    PRIMARY KEY (Category_ID)
);

#
# TABLE STRUCTURE FOR: Product_Category
#

CREATE TABLE Product_PCategory (
    Product_ID INT NOT NULL,
    Category_ID INT NOT NULL,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Category_ID) REFERENCES Product_Category(Category_ID)
);

CREATE TABLE Cart_Product (
    Customer_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Cart_Product
#


CREATE TABLE Delivery_Person (
    DelPerson_ID INT NOT NULL,
    User_ID INT NOT NULL,
    Active_Delivery_Request INT NOT NULL,
    Delivery_Rating INT NOT NULL,
    TotRatings INT,
    PRIMARY KEY (DelPerson_ID),
    FOREIGN KEY(User_ID) REFERENCES Person(User_ID),
    FOREIGN KEY (Active_Delivery_Request) REFERENCES Orderr(Order_ID)
);

#
# TABLE STRUCTURE FOR: Delivery_Person
#


CREATE TABLE Customer_Pending_Orderr (
    Customer_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(User_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orderr(Order_ID)
);

#
# TABLE STRUCTURE FOR: Customer_Pending_Orderr
#


CREATE TABLE Manufacturer (
    Seller_ID INT AUTO_INCREMENT NOT NULL,
    User_ID INT NOT NULL,
    PRIMARY KEY(Seller_ID),
    FOREIGN KEY (User_ID) REFERENCES Person(User_ID)
);

#
# TABLE STRUCTURE FOR: Manufacturer
#

CREATE TABLE Manufacturer_Product_Sold (
    Seller_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (Seller_ID) REFERENCES Manufacturer(Seller_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Manufacturer_Product_Sold
#

CREATE TABLE Manufacturer_Upcoming_Product (
    Seller_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY (Seller_ID) REFERENCES Manufacturer(Seller_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Manufacturer_Upcoming_Product
#

CREATE TABLE Delivery_Person_Completed_Delivery (
    DelPerson_ID INT NOT NULL,
    Order_ID INT NOT NULL,
    FOREIGN KEY (DelPerson_ID) REFERENCES Delivery_Person(DelPerson_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orderr(Order_ID)
);

#
# TABLE STRUCTURE FOR: Delivery_Person_Completed_Delivery
#


CREATE TABLE Orderr_Product (
  Quantity INT NOT NULL,
  Order_ID INT NOT NULL,
  Product_ID INT NOT NULL,
  FOREIGN KEY (Order_ID) REFERENCES Orderr (Order_ID),
  FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Orderr_Product
#


CREATE TABLE Delivery_Request(
    Order_ID INT NOT NULL,
    Delivery_Status INT NOT NULL,
    Expected_Completion_Time datetime,
    Amount_Payable FLOAT NOT NULL,
    Delivery_ID INT NOT NULL,
    FOREIGN KEY(Order_ID) REFERENCES Orderr(Order_ID),
    FOREIGN KEY(Delivery_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Delivery_Request
#

CREATE TABLE Product_Sales(
    Product_ID INT NOT NULL,
    Customer_ID INT NOT NULL,
    Price FLOAT NOT NULL,
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Product_Sales
#


CREATE TABLE Admin_Customers(
    Admin_Username VARCHAR(255) NOT NULL,
    Customer_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Customers
#

CREATE TABLE Admin_Manufacturers(
    Admin_Username VARCHAR(255) NOT NULL,
    Seller_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Seller_ID) REFERENCES Manufacturer(Seller_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Manufacturers
#

CREATE TABLE Admin_Products(
    Admin_Username VARCHAR(255) NOT NULL,
    Product_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Products
#


CREATE TABLE Admin_Product_Categories(
    Admin_Username VARCHAR(255) NOT NULL,
    Category_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Category_ID) REFERENCES Product_Category(Category_ID)
);

#
# TABLE STRUCTURE FOR: Admin_Product_Categories
#

CREATE TABLE Admin_DeliveryPersons(
    Admin_Username VARCHAR(255) NOT NULL,
    DelPerson_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(DelPerson_ID) REFERENCES Delivery_Person(DelPerson_ID)
);

#
# TABLE STRUCTURE FOR: Admin_DeliveryPersons
#

CREATE TABLE Admin_ActiveDelReqs(
    Admin_Username VARCHAR(255) NOT NULL,
    Req_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Req_ID) REFERENCES Delivery_Request(Order_ID)
);

#
# TABLE STRUCTURE FOR: Admin_ActiveDelReqs
#

CREATE TABLE Admin_PendingDelReqs(
    Admin_Username VARCHAR(255) NOT NULL,
    Req_ID INT NOT NULL,
    FOREIGN KEY(Admin_Username) REFERENCES Adminn(Username),
    FOREIGN KEY(Req_ID) REFERENCES Delivery_Request(Order_ID)
);

#
# TABLE STRUCTURE FOR: Admin_PendingDelReqs
#


CREATE TABLE Rates_Product(
    Customer_ID INT NOT NULL,
    Product_ID INT NOT NULL,
    Customer_Rating FLOAT NOT NULL,
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID)
);

#
# TABLE STRUCTURE FOR: Rates_Product
#

CREATE TABLE Rates_Delivery(
    Customer_ID INT NOT NULL,
    Delivery_ID INT NOT NULL,
    Customer_Rating FLOAT NOT NULL,
    FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY(Delivery_ID) REFERENCES Delivery_Person(DelPerson_ID)
);

#
# TABLE STRUCTURE FOR: Rates_Delivery
#