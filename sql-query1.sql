USE Northwind
--Amerika Kıtası doğu eyaletleri
Select  t.TerritoryDescription, r.RegionDescription from Territories as t inner join 
Region as r on r.RegionID=t.RegionID where r.RegionDescription='Eastern'
