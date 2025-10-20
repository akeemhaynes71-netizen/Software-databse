1)SELECT FirstName, LastName 
FROM Customer
WHERE STATE = 'FL'
ORDER BY LastName ASC
100 records
2)

3)SELECT*
FROM sale
where Tax < 25 AND
Shipping < 25
100 records
4)SELECT customerID
FROM Customer
WHERE FirstName = 'Maria' AND LastName = 'Karyda'
CUSTOMERID
11110
5)SELECT*
FROM SalaryEmployee
WHERE Salary between 40000 AND 50000
3 records
6)SELECT CustomerID, City
FROM Customer
WHERE City IN ('Chicago',
'Saint Louis','Baltimore','Newark')
7)SELECT SaleDate, (Tax + Shipping) AS TotalCost
FROM Sale
WHERE EXTRACT(YEAR FROM SaleDate) = 2015
  AND EXTRACT(MONTH FROM SaleDate) = 12
  AND EXTRACT(DAY FROM SaleDate) BETWEEN 20 AND 25
8)SELECT ManufacturerName, City
FROM Manufacturer
WHERE City LIKE '%City'
9)SELECT CONCAT(CONCAT(LastName,','), FirstName) AS FullName, Phone
FROM Employee
WHERE EmployeeID ='170'
10)SELECT *
FROM SaleItem
WHERE ItemSize IN (5, 6, 7)
  AND SalePrice >= 2
11)SELECT DISTINCT FirstName, LastName
FROM Customer
WHERE UPPER(SUBSTR(LastName, 3, 1)) = 'D'
12)SELECT P.ProductName
FROM Product P
JOIN Manufacturer M ON P.ManufacturerID = M.ManufacturerID
WHERE M.State = 'WA';
13)SELECT DISTINCT M.City
FROM Manufacturer M
JOIN Product P ON P.ManufacturerID = M.ManufacturerID
WHERE P.Category ='boots'
14)SELECT M.City, ProductName, P.ListPrice, ManufacturerName
FROM Manufacturer M
JOIN Product P ON M.ManufacturerID = P.ManufacturerID
WHERE P.ListPrice < 50 
    AND M.City ='Phoenix'
15)SELECT P.ProductName, P.Color, I.itemSize
FROM Inventoryitem I
JOIN Product P ON P.ProductID = I.ProductID
WHERE I.itemSize = 12.5