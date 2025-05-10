USE master
GO

CREATE DATABASE PetShop_db
GO

USE PetShop_db
GO

CREATE TABLE tbUser (
    id INT PRIMARY KEY IDENTITY NOT NULL,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    role VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    password VARCHAR(50) NOT NULL
)
GO

CREATE TABLE tbProduct (
    pcode INT PRIMARY KEY IDENTITY NOT NULL,
    pname VARCHAR(50) NOT NULL,
    ptype VARCHAR(50) NOT NULL,
    pcategory VARCHAR(50) NOT NULL,
    pqty INT NOT NULL,
    pprice DECIMAL(18, 2) NOT NULL
)
GO

CREATE TABLE tbCustomer (
    id INT PRIMARY KEY IDENTITY NOT NULL,
    name VARCHAR(30) NOT NULL,
    address VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL
)
GO

CREATE TABLE tbCash (
    cashid INT PRIMARY KEY IDENTITY NOT NULL,
	cname nvarchar(100) NOT NULL,
    cashier NVARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    qty INT NOT NULL,
    price DECIMAL(18, 2) NOT NULL,
    total DECIMAL(18, 2) NOT NULL
)
GO