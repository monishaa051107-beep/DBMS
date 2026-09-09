DROP DATABASE IF EXISTS PaymentTransactionDB4;
CREATE DATABASE PaymentTransactionDB4;
USE PaymentTransactionDB;
CREATE TABLE Account2 (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    account_type VARCHAR(30),
    mobile_no VARCHAR(15),
    city VARCHAR(50)
);
CREATE TABLE TransactionDetails2 (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type VARCHAR(20),
    payment_method VARCHAR(30),
    transaction_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20),
    FOREIGN KEY (account_id) REFERENCES Account(account_id)
);
INSERT INTO Account VALUES
(201,'Karthik Raj','Savings','9123456780','Chennai'),
(202,'Anitha S','Current','9234567891','Coimbatore'),
(203,'Praveen Kumar','Savings','9345678912','Madurai'),
(204,'Divya Priya','Current','9456789123','Trichy'),
(205,'Vishal R','Savings','9567891234','Salem');
INSERT INTO TransactionDetails VALUES
(2001,201,'Credit','UPI','2026-09-01',5000.00,'Completed'),
(2002,202,'Debit','Credit Card','2026-09-02',2500.00,'Completed'),
(2003,203,'Credit','Net Banking','2026-09-03',8000.00,'Pending'),
(2004,204,'Debit','UPI','2026-09-04',1200.00,'Failed'),
(2005,205,'Credit','Debit Card','2026-09-05',6500.00,'Completed'),
(2006,201,'Debit','Cash','2026-09-06',3000.00,'Completed');
SELECT * FROM Account;
SELECT * FROM TransactionDetails;
SELECT * FROM TransactionDetails
WHERE status = 'Completed';
SELECT
    a.customer_name,
    t.transaction_id,
    t.transaction_type,
    t.payment_method,
    t.amount,
    t.status
FROM Account a
INNER JOIN TransactionDetails t
ON a.account_id = t.account_id;
SELECT SUM(amount) AS Total_Amount
FROM TransactionDetails;
SELECT
    transaction_date,
    COUNT(*) AS Transaction_Count,
    SUM(amount) AS Daily_Total
FROM TransactionDetails
GROUP BY transaction_date
ORDER BY transaction_date;