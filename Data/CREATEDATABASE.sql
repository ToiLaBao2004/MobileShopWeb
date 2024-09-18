CREATE DATABASE FinalProjectWeb;

USE FinalProjectWeb;

-- Bảng Customers
CREATE TABLE Customers (
	Customer_ID INT AUTO_INCREMENT PRIMARY KEY,
	PhoneNumber VARCHAR(12) NOT NULL CHECK (LENGTH(PhoneNumber) = 10 AND PhoneNumber REGEXP '^[0-9]+$'),
    NameCustomer NVARCHAR(50) NOT NULL,
    Birthday DATE,
    Gender CHAR(3) NOT NULL CHECK (Gender IN ('Nam', 'Nữ'))
);

-- Bảng Employees
CREATE TABLE Employees (
    EmployeeID VARCHAR(5) PRIMARY KEY,
    NameEmployee NVARCHAR(50) NOT NULL,
    Birthday DATE,
    Gender CHAR(3) NOT NULL CHECK (Gender IN ('Nam', 'Nữ')),
    AddressEmployee NVARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(12) NOT NULL,
    RoleEmployee NVARCHAR(50) NOT NULL,
    Active CHAR(1) NOT NULL,
    PassWordAccount VARCHAR(10) NOT NULL,
    CONSTRAINT PhoneNumber_Employee CHECK (LENGTH(PhoneNumber) = 10 AND PhoneNumber REGEXP '^[0-9]+$'),
    CONSTRAINT LengthPassWordAccount CHECK (LENGTH(PassWordAccount) >= 6)
);

-- Bảng Brands
CREATE TABLE Brands (
    Brand_ID VARCHAR(10) PRIMARY KEY,
    BrandName NVARCHAR(50) NOT NULL
);

-- Bảng Categories
CREATE TABLE Categories (
    Category_ID VARCHAR(10) PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL
);

-- Bảng Discounts
CREATE TABLE Discounts (
    DiscountCode VARCHAR(10) PRIMARY KEY,
    PercentageDiscount INT NOT NULL,
    StartDay DATE NOT NULL,
    EndDay DATE NOT NULL
);

-- Bảng Suppliers
CREATE TABLE Suppliers (
    Supplier_ID VARCHAR(10) PRIMARY KEY,
    CompanyName NVARCHAR(30) NOT NULL,
    PhoneNumber VARCHAR(12) NOT NULL CHECK (LENGTH(PhoneNumber) = 10 AND PhoneNumber REGEXP '^[0-9]+$'),
    AddressSupplier NVARCHAR(100) NOT NULL,
    Email VARCHAR(50)
);

-- Bảng Imports
CREATE TABLE Imports (
    Import_ID VARCHAR(10) PRIMARY KEY,
    Supplier_ID VARCHAR(10) NOT NULL,
    ImportDay DATE NOT NULL,
    Total INT NOT NULL,
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID) ON UPDATE CASCADE
);

-- Bảng Orders
CREATE TABLE Orders (
    Order_ID VARCHAR(15) PRIMARY KEY,
    Customer_ID INT NOT NULL,
    EmployeeID VARCHAR(5) NOT NULL,
    OrderDate DATE NOT NULL,
    Total INT NOT NULL,
    DiscountCode VARCHAR(10),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID) ON UPDATE CASCADE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (DiscountCode) REFERENCES Discounts(DiscountCode)
);

-- Bảng PictureProduct
CREATE TABLE PictureProduct (
    Picture_ID INT AUTO_INCREMENT PRIMARY KEY,
    Picture_Name VARCHAR(100)
);

-- Bảng Products
CREATE TABLE Products (
    Product_ID VARCHAR(15) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    UnitPrice INT NOT NULL,
    Quantity INT NOT NULL,
    Brand_ID VARCHAR(10) NOT NULL,
    Category_ID VARCHAR(10) NOT NULL,
    Picture_ID INT,
    FOREIGN KEY (Brand_ID) REFERENCES Brands(Brand_ID),
    FOREIGN KEY (Category_ID) REFERENCES Categories(Category_ID),
    FOREIGN KEY (Picture_ID) REFERENCES PictureProduct(Picture_ID)
);

-- Bảng OrderDetails
CREATE TABLE OrderDetails (
    Order_ID VARCHAR(15) NOT NULL,
    Product_ID VARCHAR(15) NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID) ON DELETE CASCADE,
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID) ON UPDATE CASCADE,
    PRIMARY KEY (Order_ID, Product_ID)
);

-- Bảng ImportDetails
CREATE TABLE ImportDetails (
    Import_ID VARCHAR(10) NOT NULL,
    Product_ID VARCHAR(15) NOT NULL,
    Quantity INT NOT NULL,
    UnitCost INT NOT NULL,
    FOREIGN KEY (Import_ID) REFERENCES Imports(Import_ID) ON DELETE CASCADE,
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
    PRIMARY KEY (Import_ID, Product_ID)
);