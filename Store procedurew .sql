Create database InvetoryDB
GO

USE InvetoryDB
go

Create table Products
(
	ProductId Int Primary key Identity(1,1),
	Name Varchar(50) not null,
	Price Decimal(18,2) not null

);
Go

INSERT INTO Products (Name, Price) VALUES
('Laptop', 75000.00),
('Mobile Phone', 25000.00),
('Headphone', 1500.00),
('Keyboard', 1200.00),
('Mouse', 800.00),
('Monitor', 18000.00),
('Printer', 12000.00),
('Tablet', 30000.00),
('Speaker', 3500.00),
('Smart Watch', 5000.00);

--- Aggration funcatuion---------


Select Count(*) from Products


Select Sum(Price)*.20 from Products


Select Avg(Price) from Products

Select Max(Price) from Products

Select Min(Price) from Products

-------Agrration-------------


Select Count(*) as Id,
Sum(Price) As Totalprice,
Avg(Price) as Avg ,

Max(Price) as Maxvalue,
 Min(Price) as minvalue 


from Products

Go



--Create table Products
--(
--	ProductId Int Primary key Identity(1,1),
--	Name Varchar(50) not null,
--	Price Decimal(18,2) not null

--);



---Store procedure----




Create Procedure GetAllProducts


AS 

BEGIN
	
	Select * from Products
END

Go 


--- For Inser-----


Create Procedure AddProducts
                   @Name Varchar(50),
				   @Price Decimal(18,2)


AS 

BEGIN
	
	Insert Into Products(Name,Price) Values(@Name,@Price)
END

Go 
