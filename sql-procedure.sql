
--Procedure Oluþturma
create procedure sp_SelectAllCustomers @City nvarchar(30)
AS
Select * from Customers where City=@City

--procedure Çalýþtýr
exec sp_SelectAllCustomers @City ='London'

--procedure deðiþtir
Alter Procedure sp_SelectAllCustomers @City nvarchar(30)
AS
Select * from Customers where City=@City order by ContactName desc

--procedure silme
drop procedure sp_SelectAllCustomers

--procedure insert
 create proc sp_AddCustomers
 @CustomerID nchar(5),
 @CompanyName nvarchar(40),
 @ContactName nvarchar(30),
 @ContactTitle nvarchar(30),
 @Address nvarchar(60),
 @City nvarchar(15),
 @Region nvarchar(15),
 @PostalCode nvarchar(10),
 @Country nvarchar(15),
 @Phone nvarchar(24),
 @Fax nvarchar(24)
 AS
 Insert Into Customers (CustomerID,CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax)
 values (@CustomerID,@CompanyName,@ContactName,@ContactTitle,@Address,@City,@Region,@PostalCode,@Country,@Phone,@Fax)
 

 exec sp_AddCustomers 'ID','aaaCompany','Ömer','Satýþ yönetimi','Kartepe','Kocaeli','Marmara','41780','Türkiye','5453692545','5451232514'