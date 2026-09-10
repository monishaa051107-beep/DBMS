CREATE DATABASE ProductFeedbackDB0;
USE ProductFeedbackDB0;
CREATE TABLE User_Details (
    User_ID INT PRIMARY KEY,
    User_Name VARCHAR(50),
    Email VARCHAR(50),
    Location VARCHAR(50)
);
CREATE TABLE Item (
    Item_ID INT PRIMARY KEY,
    Item_Name VARCHAR(50),
    Brand VARCHAR(50),
    Price DECIMAL(10,2)
);
CREATE TABLE Feedback (
    Feedback_ID INT PRIMARY KEY,
    User_ID INT,
    Item_ID INT,
    Rating INT,
    Comments VARCHAR(200),
    Feedback_Date DATE,
    FOREIGN KEY (User_ID) REFERENCES User_Details(User_ID),
    FOREIGN KEY (Item_ID) REFERENCES Item(Item_ID)
);
INSERT INTO User_Details VALUES
(1,'Arun','arun@gmail.com','Chennai'),
(2,'Meena','meena@gmail.com','Madurai'),
(3,'Vignesh','vignesh@gmail.com','Trichy'),
(4,'Keerthi','keerthi@gmail.com','Salem'),
(5,'Surya','surya@gmail.com','Coimbatore');

INSERT INTO Item VALUES
(101,'Mobile Phone','Samsung',18000),
(102,'Laptop','HP',52000),
(103,'Earbuds','Boat',2000),
(104,'Smart Watch','Noise',3500),
(105,'Speaker','JBL',4000);
INSERT INTO Feedback VALUES
(201,1,101,5,'Excellent Product','2026-09-01'),
(202,2,102,4,'Good Performance','2026-09-02'),
(203,3,103,3,'Average Quality','2026-09-03'),
(204,4,104,5,'Worth Buying','2026-09-04'),
(205,5,105,4,'Good Sound','2026-09-05');
SELECT I.Item_Name,
AVG(F.Rating) AS Avg_Rating
FROM Item I
JOIN Feedback F
ON I.Item_ID = F.Item_ID
GROUP BY I.Item_Name;
SELECT U.User_Name,
I.Item_Name,
F.Rating,
F.Comments
FROM Feedback F
JOIN User_Details U
ON F.User_ID = U.User_ID
JOIN Item I
ON F.Item_ID = I.Item_ID;
SELECT I.Item_Name,
F.Rating
FROM Item I
JOIN Feedback F
ON I.Item_ID = F.Item_ID
WHERE F.Rating >= 4;



