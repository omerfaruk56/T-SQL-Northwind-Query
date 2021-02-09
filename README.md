# Northwind Veri Tabanı Sorguları

## Özet 

Takım çalışması ile birlikte Northwind veri tabanı üzernde sorgular yazıyoruz.

Northwind Database Microsoft'un sağlamış olduğu ücretsiz içerisi dolu bir database örneğidir. </br>
Veri tabanı hayali bir özel gıda ihracat ithalatı olan Northwind Traders için satış verilerini içerir.

Aşağıdaki şema Northwind veritabanının tablo yapısını göstermektedir

![Alt text](https://i.ibb.co/k9119H5/db-diagram.png "Title")

## Exercises

1. Retrieve all columns in the Region table
<pre>
select * from Region
</pre>
2. Select the FirstName and LastName columns from the Employees table.
<pre>select FirstName,LastName from Employees</pre>
3. Select the FirstName and LastName columns from the Employees table.
Sort by LastName.
<pre>
...
</pre>
4. Create a report showing Northwind's orders sorted by Freight from most expensive to
cheapest. Show OrderID, OrderDate, ShippedDate, CustomerID, and Freight.
<pre>
...
</pre>
5. Create a report showing the title and the first and last name of all sales representatives.
<pre>
...
</pre>
6. Create a report showing the first and last names of all employees who have a region
specified.
<pre>
...
</pre>
7. Create a report showing the first and last name of all employees whose last names start
with a letter in the last half of the alphabet.
<pre>
...
</pre>
Sort by LastName in descending order.
<pre>
...
</pre>
8. Create a report showing the title of courtesy and the first and last name of all employees
whose title of courtesy begins with "M".
<pre>
...
</pre>
9. Create a report showing the first and last name of all sales representatives who are from
Seattle or Redmond.
<pre>
...
</pre>
10. Create a report that shows the company name, contact title, city and country of all
customers in Mexico or in any city in Spain except Madrid.
<pre>
...
</pre>
11. If the cost of freight is greater than or equal to $500.00, it will now be taxed by 10%.
Create a report that shows the order id, freight cost, freight cost with this tax for all orders of
$500 or more.
<pre>
...
</pre>
12. Find the Total Number of Units Ordered of Product ID 3
<pre>
...
</pre>
13. Retrieve the number of employees in each city
<pre>
...
</pre>
14. Find the number of sales representatives in each city that contains at least 2 sales
representatives. Order by the number of employees.
<pre>
...
</pre>
15. Find the Companies (the CompanyName) that placed orders in 1997
<pre>
...
</pre>
16. Create a report showing employee orders.
<pre>
...
</pre>
17. Create a report showing the Order ID, the name of the company that placed the order,
and the first and last name of the associated employee.
<pre>
...
</pre>
Only show orders placed after January 1, 1998 that shipped after they were required.
Sort by Company Name.
<pre>
...
</pre>
18. Create a report that shows the total quantity of products (from the Order_Details table)
ordered. Only show records for products for which the quantity ordered is fewer than 200.
The report should return the following 5 rows.
<pre>
...
</pre>
