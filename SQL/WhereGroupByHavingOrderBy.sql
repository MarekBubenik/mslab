USE AdventureWorks2017;

SELECT * FROM Person.Address;

SELECT * FROM Person.Address WHERE PostalCode = '98011';

SELECT * FROM Person.Address WHERE PostalCode != '98011';

SELECT COUNT(*) FROM Person.Address WHERE PostalCode <> '98011';

SELECT * FROM Person.Person WHERE FirstName LIKE 'MAT%';

SELECT MAX(Rate) AS PayRate FROM HumanResources.EmployeePayHistory;
SELECT MIN(Rate) AS PayRate FROM HumanResources.EmployeePayHistory;

SELECT * FROM Production.ProductCostHistory WHERE (StartDate = '2013-05-30 00:00:00.000' AND StandardCost >= 200.00) OR ProductID > 800;

SELECT * FROM Production.ProductCostHistory WHERE ProductID in (802,803,820,900);

SELECT * FROM Production.ProductCostHistory WHERE EndDate is Null;

SELECT * FROM HumanResources.EmployeePayHistory ORDER BY rate DESC;

SELECT * FROM HumanResources.EmployeePayHistory WHERE ModifiedDate >= '2010-06-30 00:00:00.000' ORDER BY ModifiedDate DESC;

SELECT COUNT(*) AS NumberOfAddresses,PostalCode FROM Person.Address GROUP BY PostalCode ORDER BY PostalCode DESC;

-------------------------------------------------------------------

SELECT COUNT(1) AS NumberOfProducts,Color FROM Production.Product WHERE Color = 'yellow' GROUP BY Color;

SELECT COUNT(1) AS NumberOfProducts,Color FROM Production.Product GROUP BY Color HAVING Color = 'Yellow';

SELECT COUNT(1) AS NumberOfProducts,Color,Size FROM Production.Product GROUP BY Color,Size HAVING Size >= '44' ORDER BY NumberOfProducts DESC;



