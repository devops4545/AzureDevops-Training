IF (NOT EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'dbo' 
                 AND  TABLE_NAME = 'Products'))
BEGIN

CREATE TABLE Products
(
     ProductID int,
     ProductName varchar(1000),
     Quantity int
)


INSERT INTO Products(ProductID,ProductName,Quantity) VALUES (1,'Mobile',100)

INSERT INTO Products(ProductID,ProductName,Quantity) VALUES (2,'Laptop',200)

INSERT INTO Products(ProductID,ProductName,Quantity) VALUES (3,'Tabs',300)

END