
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
 

 exec sp_AddCustomers 'ID','aaaCompany','�mer','sales management','Kartepe','Kocaeli','Marmara','41780','T�rkiye','5453692545','5451232514'

--TRY CATCH USING
BEGIN TRY
print 3/0
--drop table olmayanTablo
-- select salladimKolonAdini from Shippers (try catch bu hatay� yakalayam�yor. Bunun i�in sproc olu�turup try catch i�ine koyarsak bu sorunu ��zeriz.) 
END TRY

BEGIN CATCH
print 'Hata numaras� elde etmemizi sa�lar. Sadece bilgi i�inde kullanabiliriz.'
print ERROR_NUMBER(); 
print 'Hatan�n �iddetini elde etmemizi sa�lar.'
print ERROR_SEVERITY(); 
print 'Hatan�n kodsal de�erini elde etmemizi sa�lar.'
print ERROR_STATE(); 
print 'Hataya sebep olan stored proceure veya trigger�n ad�n� geriye d�ner.'
print ERROR_PROCEDURE(); 
print 'Hatan�n sebep oldu�u sat�r numaras�n� elde etmemizi sa�lar.';
print ERROR_LINE(); 
print 'Hatay� a��klayan bir mesaj olu�turmam�z� sa�lar.'
PRINT ERROR_MESSAGE(); 
END CATCH
