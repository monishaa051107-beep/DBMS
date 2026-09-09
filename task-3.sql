CREATE DATABASE SellerInventoryDB2;
USE SellerInventoryDB2;
CREATE TABLE Seller (
    Seller_ID INT PRIMARY KEY,
    Seller_Name VARCHAR(50),
    Contact_No VARCHAR(15),
    City VARCHAR(50)
);
CREATE TABLE Inventory (
    Inventory_ID INT PRIMARY KEY,
    Product_ID INT,
    Quantity INT,
    Warehouse_Location VARCHAR(50),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
INSERT INTO Seller VALUES
(1,'Arun','9876543210','Chennai'),
(2,'Divya','9876543211','Salem'),
(3,'Karthik','9876543212','Trichy');
INSERT INTO Product VALUES
(101,'Smart Watch','Electronics',3500.00,1),
(102,'Bluetooth Speaker','Electronics',2500.00,2),
(103,'Power Bank','Accessories',1500.00,3);
INSERT INTO Inventory VALUES
(201,101,30,'Warehouse-A'),
(202,102,15,'Warehouse-B'),
(203,103,50,'Warehouse-C');
SELECT * FROM Seller;
SELECT * FROM Product;
SELECT * FROM Inventory;
SELECT Product_Name, Price
FROM Product
WHERE Price > 2000;

SELECT Seller_Name, City
FROM Seller;

SELECT Product_Name, Quantity
FROM Product p
JOIN Inventory i
ON p.Product_ID = i.Product_ID;


