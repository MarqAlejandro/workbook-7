--1
SELECT COUNT(SupplierID) AS [Number of Suppliers]
FROM DBO.Suppliers
ORDER BY [Number of Suppliers];

--2
SELECT COUNT(EmployeeID) as [Number of Employees], SUM(Salary) AS [Total of Salaries]
FROM Employees
ORDER BY [Total of Salaries];

--3
SELECT MIN(UnitPrice) as MIN
FROM Products
order BY MIN;

--4
SELECT AVG(UnitPrice) AS Average
FROM Products;

--5
SELECT MAX(UnitPrice) AS MAX
FROM Products;

--6
SELECT P.SupplierID, S.COMPANYNAME AS Company, COUNT(P.SupplierID) as [Number of Items]
FROM Products AS P
LEFT JOIN SUPPLIERS AS S
    ON P.SupplierID = S.SupplierID 
GROUP BY P.SupplierID , S.COMPANYNAME
ORDER BY P.SupplierID;

--7
SELECT P.CATEGORYID AS CategoryID, C.CATEGORYNAME AS [Category Name], AVG(P.UNITPRICE) AS Average
FROM PRODUCTS AS P
LEFT JOIN CATEGORIES AS C 
    ON P.CATEGORYID = C.CATEGORYID
GROUP BY P.CATEGORYID, C.CATEGORYNAME
ORDER BY P.CATEGORYID;

--8
SELECT P.SupplierID, S.COMPANYNAME AS Company, COUNT(P.SupplierID) as [Number of Items]
FROM Products AS P
LEFT JOIN SUPPLIERS AS S
    ON P.SupplierID = S.SupplierID 
GROUP BY P.SupplierID , S.COMPANYNAME
HAVING COUNT(P.SupplierID) >= 5
ORDER BY P.SupplierID;

--9
SELECT PRODUCTID, PRODUCTNAME AS Name, SUM(UNITPRICE * UNITSINSTOCK) AS [Inventory Value]
FROM PRODUCTS
GROUP BY PRODUCTID, PRODUCTNAME
ORDER BY [Inventory Value] DESC , PRODUCTNAME ASC;
