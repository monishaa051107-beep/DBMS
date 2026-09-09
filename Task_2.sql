CREATE DATABASE ProductManagement;
USE ProductManagement;
CREATE TABLE Category ( 
CategoryID INT PRIMARY KEY, 
CategoryName VARCHAR(50) NOT NULL 
);
CREATE TABLE Product ( 
ProductID INT PRIMARY KEY, 
ProductName VARCHAR(100) NOT NULL, 
Price DECIMAL(10,2), 
Quantity INT, 
CategoryID INT, 
FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID) 
);
INSERT INTO Category VALUES 
(1, 'Electronics'), 
(2, 'Clothing'), 
(3, 'Books');
INSERT INTO Product VALUES 
(101, 'Laptop', 55000.00, 10, 1), 
(102, 'Mobile Phone', 25000.00, 20, 1), 
(103, 'T-Shirt', 500.00, 50, 2),
(104, 'Python Programming Book', 700.00, 30, 3);
SELECT P.ProductID, 
P.ProductName, 
P.Price, 
P.Quantity, 
C.CategoryName 
FROM Product P 
JOIN Category C 
ON P.CategoryID = C.CategoryID; 

