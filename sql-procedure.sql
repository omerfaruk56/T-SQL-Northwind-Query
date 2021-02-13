
--Procedure Olusturma
create proc sp_SelectAllCustomers @City nvarchar(30)
AS
Select * from Customers where City=@City

--procedure Calistir
exec sp_SelectAllCustomers @City ='London'

--procedure degistir
Alter proc sp_SelectAllCustomers @City nvarchar(30)
AS
Select * from Customers where City=@City order by ContactName desc

--procedure silme
drop proc sp_SelectAllCustomers

--procedure Kayit_Ekleme
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
 

 exec sp_AddCustomers 'ID','aaaCompany','Ömer','sales management','Kartepe','Kocaeli','Marmara','41780','Türkiye','5453692545','5451232514'

