USE AdventureWorks2017;

DROP TABLE SalesStuff

CREATE TABLE salesstaff
(
StaffID INT NOT NULL PRIMARY KEY,
firstName NVARCHAR(50) NOT NULL,
lastName NVARCHAR(50) NOT NULL,
countryrefion NVARCHAR(50) NOT NULL
)

SELECT * FROM dbo.salesstaff

INSERT INTO dbo.salesstaff
SELECT BusinessEntityID,firstName,lastName,CountryRegionName FROM sales.vSalesPerson

DELETE FROM salesstaff

DELETE FROM salesstaff WHERE countryrefion = 'United States'

-- Do anything in a transcation - deleted in a memory but not in a disk
BEGIN TRAN 
DELETE FROM salesstaff WHERE countryrefion = 'United States'
ROLLBACK TRAN						-- Odvrátí akce provedené pomocí BEGIN TRAN
COMMIT								-- Potvrdí akce provedené pomocí BEGIN TRAN

DELETE salesstaff
WHERE staffid IN
(SELECT BusinessEntityID FROM Sales.vSalesPerson WHERE SalesLastYear = 0)

DELETE salesstaff
FROM Sales.vSalesPerson sp 
INNER JOIN salesstaff ss
ON sp.BusinessEntityID = ss.staffid
WHERE sp.SalesLastYear = 0