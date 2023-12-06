USE northwind;

/* Question One 
SELECT * FROM products;
/* Question 2:
SELECT ProductID, ProductName, UnitPrice
FROM Products;
/* Question 3:

SELECT ProductID, ProductName, UnitPrice
FROM Products;
ORDER BY UnitPrice ASC;
/* Question 4:

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50;

/* Queston 5:

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

/* Question 6:
s
SELECT ProductID, ProductName, UnitPrice
FROM Products;
WHERE UnitsInStock >= 100;
ORDER BY UnitPrice DESC, ProductName ASC;

/* Question 7 :
SELECT ProductID, ProductName, UnitPrice
FROM Products;
WHERE UnitsInStock = 0 AND UnitsOnOrder > 0
ORDER BY ProductName;

/* Question 8
SELECT TABLES LIKE '%Categories%';

/* Question 9
SELECT *
FROM Categories;
SELECT CategoryID, CategoryName
FROM Categories
WHERE CategoryName = 'Seafood';

/* Question 10 
SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Seafood');

 /* Question 12

SELECT * FROM Employees
WHERE Title LIKE '%manager%';

/* Questions 13
SELECT  Title
FROM Employees;

/* Question 14

SELECT *
FROM Employees
WHERE salary BETWEEN 2000 AND 2500;

/* Question 15
SELECT *
FROM suppliers;

/* Question 15 
SELECT ProductID, ProductName, SupplierID
FROM Products
WHERE SupplierID = (SELECT SupplierID FROM Suppliers WHERE SupplierName = 'Tokyo Traders');
