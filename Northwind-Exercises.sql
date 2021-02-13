USE Northwind
--EXERCISES
--1. Retrieve all columns in the Region table
select * from Region
--2. Select the FirstName and LastName columns from the Employees table.
select FirstName,LastName from Employees
--3. Select the FirstName and LastName columns from the Employees table. Sort by LastName.
Select FirstName,LastName from Employees order by LastName
--4. Create a report showing Northwind's orders sorted by Freight from most expensive to cheapest. Show OrderID, OrderDate, ShippedDate, CustomerID, and Freight.
--5. Create a report showing the title and the first and last name of all sales representatives.
select Title,FirstName,LastName from Employees where Title ='sales representative'
--6. Create a report showing the first and last names of all employees who have a region specified.
--7. Create a report showing the first and last name of all employees whose last names start with a letter in the last half of the alphabet. Sort by LastName in descending order.
Select FirstName,LastName from Employees where ASCII(SUBSTRING(Lastname,1,1))>=78 and ASCII (SUBSTRING(Lastname,1,1)) <=90 order by LastName desc
--8. Create a report showing the title of courtesy and the first and last name of all employees whose title of courtesy begins with "M".
--9. Create a report showing the first and last name of all sales representatives who are from Seattle or Redmond.
--10. Create a report that shows the company name, contact title, city and country of all customers in Mexico or in any city in Spain except Madrid.

--11. If the cost of freight is greater than or equal to $500.00, it will now be taxed by 10%. Create a report that shows the order id, freight cost, freight cost with this tax for all orders of $500 or more.
--12. Find the Total Number of Units Ordered of Product ID 3

--13. Retrieve the number of employees in each city
--14. Find the number of sales representatives in each city that contains at least 2 sales representatives. Order by the number of employees.
--15. Find the Companies (the CompanyName) that placed orders in 1997
--16. Create a report showing employee orders.
--17. Create a report showing the Order ID, the name of the company that placed the order,and the first and last name of the associated employee.Only show orders placed after January 1, 1998 that shipped after they were required. Sort by Company Name.

--18. Create a report that shows the total quantity of products (from the Order_Details table) ordered. Only show records for products for which the quantity ordered is fewer than 200. The report should return the following 5 rows.