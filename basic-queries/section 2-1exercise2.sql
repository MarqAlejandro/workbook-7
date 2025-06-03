--1 the database table name is Products

--2
SELECT ProductID, ProductName, UnitPrice
FROM PRODUCTS;

--3
SELECT ProductID, ProductName, UnitPrice
FROM PRODUCTS
ORDER BY UnitPrice ASC;

--4
SELECT ProductID, ProductName, UnitPrice
FROM PRODUCTS
WHERE UnitPrice <= 7.50
ORDER BY UnitPrice ASC;

--5
SELECT *
FROM PRODUCTS
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

--6
SELECT *
FROM PRODUCTS
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName DESC;

--7
SELECT *
FROM PRODUCTS
WHERE UnitsInStock <= 0 AND UnitsOnOrder >= 1
ORDER BY ProductName ASC;

--8 the database table name is Categories

--9
SELECT *
FROM Categories;
--the ID of seafood is 8

--10
SELECT P.ProductID, P.ProductName, C.CategoryName, P.UnitPrice, P.UnitsInStock
FROM PRODUCTS AS P
INNER JOIN CATEGORIES AS C
    ON P.CategoryID = C.CategoryID
WHERE P.CategoryID like 8;

--11
SELECT FirstName, LastName
FROM Employees;

--12
SELECT *
FROM Employees
WHERE Title LIKE '%man%';

--13
SELECT DISTINCT Title
FROM Employees;

--14
SELECT *                --can't solve rn
FROM Employees
WHERE Salary >= 2000 AND Salary <= 5000;

--15
SELECT *
FROM Suppliers;

--16
SELECT *
FROM Products P
JOIN Suppliers S
    ON P.SupplierID = S.SupplierID
WHERE P.SupplierID LIKE 4;
