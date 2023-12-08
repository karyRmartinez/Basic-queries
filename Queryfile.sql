-- USE northwind;

--  Question One 
SELECT * FROM products;
--  Question 2:
SELECT ProductID, ProductName, UnitPrice
FROM Products;
 -- Question 3:

SELECT ProductID, ProductName, UnitPrice
FROM Products;
ORDER BY UnitPrice 

--  Question 4:

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50;

--  Queston 5:

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

--  Question 6:

SELECT ProductID, ProductName, UnitPrice
FROM Products;
WHERE UnitsInStock >= 100;
ORDER BY UnitPrice DESC, ProductName ASC;

-- Question 7 :
 SELECT ProductID, ProductName, UnitPrice
 FROM Products;
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
 ORDER BY ProductName;

-- Question 8
SELECT TABLES LIKE '%Categories%';

-- Question 9
SELECT *
FROM Categories;
SELECT CategoryID, CategoryName
FROM Categories
WHERE CategoryName = 'Seafood';

--  Question 10 
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Seafood');

-- Question 12

SELECT * FROM Employees
WHERE Title LIKE '%manager%';

-- Questions 13
SELECT  Title
FROM Employees;

-- Question 14

SELECT *
FROM Employees
WHERE salary BETWEEN 2000 AND 2500;

-- Question 15
SELECT *
FROM suppliers;

-- Question 15 
SELECT ProductID, ProductName, SupplierID
FROM Products
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE SupplierName = 'Tokyo Traders');


-- -- PART 2

-- -- Question 1
SELECT COUNT(DISTINCT SupplierID) AS NumberOfSuppliers
FROM Products;    
-- answer: 29

-- Question 2
SELECT SUM(Salary) 
FROM Employees;
-- answer: 20362.929931640625

-- -- Question 3 
SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice
-- answer: 'Geitost','2.5000'

-- -- Question 4
SELECT (UnitPrice)
FROM products;
-- Answer: 28.86636364

-- -- Question 5
SELECT ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC

-- -- Question 6
SELECT supplierID, COUNT(productID)
FROM products
GROUP BY supplierID
-- answer: '1','3'
-- '2','4'
-- '3','3'
-- '4','3'
-- '5','2'
-- '6','3'
-- '7','5'
-- '8','4'
-- '9','2'
-- '10','1'
-- '11','3'
-- '12','5'
-- '13','1'
-- '14','3'
-- '15','3'
-- '16','3'
-- '17','3'
-- '18','2'
-- '19','2'
-- '20','3'
-- '21','2'
-- '22','2'
-- '23','3'
-- '24','3'
-- '25','2'
-- '26','2'
-- '27','1'
-- '28','2'
-- '29','2'
-- -- Question 7
SELECT categoryID, unitprice
FROM products
-- answer: 
-- '1','18.0000'
-- '1','19.0000'
-- '2','10.0000'
-- '2','22.0000'
-- '2','21.3500'
-- '2','25.0000'
-- '7','30.0000'
-- '2','40.0000'
-- '6','97.0000'
-- '8','31.0000'
-- '4','21.0000'
-- '4','38.0000'
-- '8','6.0000'
-- '7','23.2500'
-- '2','15.5000'
-- '3','17.4500'
-- '6','39.0000'
-- '8','62.5000'
-- '3','9.2000'
-- '3','81.0000'
-- '3','10.0000'
-- '5','21.0000'
-- '5','9.0000'
-- '1','4.5000'
-- '3','14.0000'
-- '3','31.2300'
-- '3','43.9000'
-- '7','45.6000'
-- '6','123.7900'
-- '8','25.8900'
-- '4','12.5000'
-- '4','32.0000'
-- '4','2.5000'
-- '1','14.0000'
-- '1','18.0000'
-- '8','19.0000'
-- '8','26.0000'
-- '1','263.5000'
-- '1','18.0000'
-- '8','18.4000'
-- '8','9.6500'
-- '5','14.0000'
-- '1','46.0000'
-- '2','19.4500'
-- '8','9.5000'
-- '8','12.0000'
-- '3','9.5000'
-- '3','12.7500'
-- '3','20.0000'
-- '3','16.2500'
-- '7','53.0000'
-- '5','7.0000'
-- '6','32.8000'
-- '6','7.4500'
-- '6','24.0000'
-- '5','38.0000'
-- '5','19.5000'
-- '8','13.2500'
-- '4','55.0000'
-- '4','34.0000'
-- '2','28.5000'
-- '3','49.3000'
-- '2','43.9000'
-- '5','33.2500'
-- '2','21.0500'
-- '2','17.0000'
-- '1','14.0000'
-- '3','12.5000'
-- '4','36.0000'
-- '1','15.0000'
-- '4','21.5000'
-- '4','34.8000'
-- '8','15.0000'
-- '7','10.0000'
-- '1','7.7500'
-- '1','18.0000'
-- '2','13.0000'

-- -- Question 8
SELECT SupplierID, COUNT(ProductID) AS NumberOfItems
FROM Products
GROUP BY SupplierID
HAVING COUNT(ProductID) >= 5;

-- -- Question 9
SELECT ProductID, ProductName, UnitsInStock * UnitPrice AS InventoryValue
FROM Products

-- PART 3 -- NESTING QUERIES
-- -- Question 1
SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- -- Question 3
SELECT OrderID, ProductID
FROM `Order Details`
WHERE ProductID = (SELECT ProductID FROM Products 
   WHERE ProductName LIKE '%Sasquatch Ale%');
-- Question 4
SELECT
    Employees.FirstName,
    Employees.LastName
FROM
    Employees
JOIN
    Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE
    Orders.OrderID = 10266;
  --  answer: yanet levering
    
-- -- Question 5

SELECT 
    customers.ContactName
FROM
    customers
        JOIN
    orders ON customers.CustomerID = orders.CustomerID
WHERE
    orders.OrderID = 10266;