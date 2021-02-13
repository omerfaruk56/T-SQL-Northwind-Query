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
print 'Hataya sebep olan stored proceure veya triggerin ad�n� geriye d�ner.'
print ERROR_PROCEDURE(); 
print 'Hatan�n sebep oldu�u sat�r numaras�n� elde etmemizi saglar.';
print ERROR_LINE(); 
print 'Hatay� a��klayan bir mesaj olusturmamizi saglar.'
PRINT ERROR_MESSAGE(); 
END CATCH
