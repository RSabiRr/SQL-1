CREATE DATABASE Market
USE Market

CREATE TABLE Products(
Id int IDENTITY PRIMARY KEY,
Name nvarchar(20) not null,
Price money not null
)

CREATE TABLE Brands(
Id int IDENTITY PRIMARY KEY,
Name NVARCHAR(20) NOT NULL
)

ALTER TABLE Products
ADD BrandId INT CONSTRAINT FK_Products_BrandId FOREIGN KEY REFERENCES Brands(Id)

INSERT INTO Products
VALUES 
('Sud',12,4),
('Su',3,3),
('Yag',15,4),
('Et',13,4),
('Corey',1,4),
('Cola',2,3),
('Qend',1.5,4),
('Dondurma',4,1),
('Sirniyat',2,5),
('Mayanez',7,4)


INSERT INTO Brands
VALUES
('Algida'),
('Mocuze'),
('Coca cola'),
('AzerSun'),
('AlpenGolg')

SELECT * FROM Products WHERE Price>10

SELECT *  from Products where Price> (SELECT AVG(Price) from Products)

SELECT * FROM Brands WHERE Len(Name)>5