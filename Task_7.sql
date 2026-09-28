CREATE DATABASE ECommerceDB;
USE ECommerceDB;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO Customers VALUES
(1,'Arun','arun@gmail.com','Chennai'),
(2,'Priya','priya@gmail.com','Madurai'),
(3,'Karthik','karthik@gmail.com','Coimbatore'),
(4,'Divya','divya@gmail.com','Chennai'),
(5,'Rahul','rahul@gmail.com','Salem');

INSERT INTO Products VALUES
(101,'Laptop','Electronics',55000,10),
(102,'Mobile','Electronics',25000,20),
(103,'Headphones','Accessories',2000,15),
(104,'Keyboard','Accessories',1500,0),
(105,'T-Shirt','Fashion',800,30);

SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.price,
    p.stock,
    c.customer_name,
    c.city
FROM Products p
CROSS JOIN Customers c
WHERE p.stock > 0
AND p.price < 30000
ORDER BY p.price DESC;