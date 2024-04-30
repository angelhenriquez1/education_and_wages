-- Create the bookstore database
CREATE DATABASE IF NOT EXISTS bookstore;

-- Switch to the newly created database
USE bookstore;

-- Create the Authors table
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL
);

-- Create the Books table
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    Genre VARCHAR(100),
    Price DECIMAL(10,2),
    PublishYear INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255),
    Phone VARCHAR(20)
);

-- Create the Sales table
CREATE TABLE Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    BookID INT,
    SaleDate DATE,
    Quantity INT,
    TotalPrice DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
