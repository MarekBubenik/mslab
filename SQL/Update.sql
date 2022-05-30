USE AdventureWorks2017;

SELECT firstName +' '+ lastName AS fullName,
TerritoryName,
TerritoryGroup,
SalesQuota,
SalesYTD,
SalesLastYear 
INTO SalesStuff
FROM Sales.vSalesPerson

SELECT * FROM SalesStuff

UPDATE SalesStuff SET SalesQuota = 500000.00

UPDATE SalesStuff SET SalesQuota = SalesQuota + 150000.00

UPDATE SalesStuff SET SalesQuota = SalesQuota + 150000.00,SalesYTD = SalesYTD - 500, SalesLastYear = SalesLastYear * 1.50

UPDATE SalesStuff SET TerritoryName = 'UK' WHERE TerritoryName = 'United Kingdom'

UPDATE SalesStuff SET TerritoryName = 'UK' WHERE TerritoryGroup IS NULL AND fullName = 'Syed Abbas'

UPDATE SalesStuff SET SalesQuota = sp.SalesQuota
FROM SalesStuff ss
INNER JOIN sales.vSalesPerson sp
ON ss.fullName = sp.firstName +' '+ sp.lastName

