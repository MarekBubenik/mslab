USE AdventureWorks2017
GO

-- All tables get created in DBO schema unless we create a new schema

SELECT * 
FROM [HumanResources].[EmployeePayHistory]
WHERE BusinessEntityID 
IN (SELECT BusinessEntityID FROM [HumanResources].[EmployeePayHistory] WHERE Rate > 60)

SELECT * 
FROM [HumanResources].[EmployeePayHistory]
WHERE BusinessEntityID 
= (SELECT BusinessEntityID FROM [HumanResources].[EmployeePayHistory] WHERE Rate = 39.06)

SELECT * 
FROM [Production].[Product]
WHERE ProductID 
IN (SELECT ProductID FROM [Production].[ProductInventory] WHERE Quantity > 300)