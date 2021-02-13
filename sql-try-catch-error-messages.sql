--TRY CATCH USING
BEGIN TRY
print 3/0
--drop table olmayanTablo
-- select salladimKolonAdini from Shippers (try catch bu hatayý yakalayamýyor. Bunun için sproc oluþturup try catch içine koyarsak bu sorunu çözeriz.) 
END TRY

BEGIN CATCH
print 'Hata numarasý elde etmemizi saðlar. Sadece bilgi içinde kullanabiliriz.'
print ERROR_NUMBER(); 
print 'Hatanýn þiddetini elde etmemizi saðlar.'
print ERROR_SEVERITY(); 
print 'Hatanýn kodsal deðerini elde etmemizi saðlar.'
print ERROR_STATE(); 
print 'Hataya sebep olan stored proceure veya triggerin adýný geriye döner.'
print ERROR_PROCEDURE(); 
print 'Hatanýn sebep olduðu satýr numarasýný elde etmemizi saglar.';
print ERROR_LINE(); 
print 'Hatayý açýklayan bir mesaj olusturmamizi saglar.'
PRINT ERROR_MESSAGE(); 
END CATCH
