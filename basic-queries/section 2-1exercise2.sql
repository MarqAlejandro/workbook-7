--1 the database name is products

--2
/*
SELECT ProductID, ProductName, UnitPrice
FROM PRODUCTS;
*/
--3
/*
SELECT ProductID, ProductName, UnitPrice
FROM PRODUCTS
ORDER BY UnitPrice ASC;
*/
--4
/*
SELECT ProductID, ProductName, UnitPrice
FROM PRODUCTS
WHERE UnitPrice <= 7.50
ORDER BY UnitPrice ASC;
*/
--5
/*
SELECT *
FROM PRODUCTS
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
*/
--6
/*
SELECT *
FROM PRODUCTS
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;
*/
--7
/*
SELECT *
FROM PRODUCTS
WHERE UnitsInStock <= 0 AND UnitsOnOrder >= 1
ORDER BY ProductName ASC;
*/
--8
