USE AdventureWorks2017;

--- INNER JOIN = pøipojíme tabulky k sobì na základì vztahù (klíèù)
SELECT Person.Person.FirstName, Person.Person.LastName, HumanResources.Employee.HireDate, Person.PersonPhone.PhoneNumber 
FROM Person.Person INNER JOIN HumanResources.Employee 
ON (Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID) INNER JOIN Person.PersonPhone
ON (Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID) ORDER BY HireDate DESC;