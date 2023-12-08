-- Question 1
SELECT 
    ProductID, ProductName, UnitPrice, Categories.CategoryName
FROM
    Products
        JOIN
    Categories ON Products.CategoryID = Categories.CategoryID
ORDER BY Categories.CategoryName , Products.ProductName;
    
--     Question 2

SELECT
    ProductID,
    ProductName,
    UnitPrice,
    SupplierName
FROM
    Products
JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
    Products.UnitPrice > 75
ORDER BY
    Products.ProductName;
    
-- Question. 3

SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    Categories.CategoryName,
    Suppliers.CompanyName AS SupplierName
FROM
    Products
        JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
        JOIN
    Categories ON Products.CategoryID = Categories.CategoryID
ORDER BY ProductName;

-- Question 4

select products.ProductName, products.UnitPrice, categories.CategoryName
FROM products
JOIN categories
ON products.CategoryID = categories.CategoryID
join ( -- finds max price of each category and joins with products table
	select CategoryID, max(UnitPrice) as MaxUnitPrice from products
    group by CategoryID
) as MaxPrices
ON MaxPrices.CategoryID = products.CategoryID
AND MaxPrices.MaxUnitPrice = products.UnitPrice;

-- Question 5
SELECT 
    OrderID, ShipName, ShipAddress, CompanyName, ShipCountry
FROM
    Orders
        JOIN
    Shippers ON ShipperID = ShipperID
WHERE
    ShipCountry = 'Germany';

-- Queston 6
SELECT 
    Orders.OrderID,
    Orders.OrderDate,
    Orders.ShipName,
    Orders.ShipAddress,
    Products.ProductName
FROM
    Orders
        JOIN
    `Order Details` ON Orders.OrderID = `Order Details`.OrderID
        JOIN
    Products ON `Order Details`.ProductID = Products.ProductID
WHERE
    Products.ProductName LIKE '%Sasquatch Ale%'
ORDER BY Orders.OrderID;
