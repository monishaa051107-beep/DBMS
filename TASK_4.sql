CREATE DATABASE OrderManagementDB6;
USE OrderManagementDB6;
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Order_Date DATE,
    Total_Amount DECIMAL(10,2)
);
CREATE TABLE Order_Details (
    Detail_ID INT PRIMARY KEY,
    Order_ID INT,
    Product_Name VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);
INSERT INTO Orders (Order_ID, Customer_Name, Order_Date, Total_Amount)
VALUES
(101, 'Ravi', '2026-08-01', 2500.00),
(102, 'Priya', '2026-08-02', 1800.00);
INSERT INTO Order_Details (Detail_ID, Order_ID, Product_Name, Quantity, Price)
VALUES
(1, 101, 'Laptop Bag', 1, 1500.00),
(2, 101, 'Mouse', 2, 500.00),
(3, 102, 'Keyboard', 1, 1800.00);
UPDATE Orders
SET Total_Amount = 3000.00
WHERE Order_ID = 101;
SELECT
    O.Order_ID,
    O.Customer_Name,
    O.Order_Date,
    D.Product_Name,
    D.Quantity,
    D.Price
FROM Orders O
INNER JOIN Order_Details D
ON O.Order_ID = D.Order_ID;





