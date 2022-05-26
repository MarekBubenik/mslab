USE AdventureWorks2017;

--- INNER JOIN = p�ipoj�me tabulky k sob� na z�klad� vztah� (kl���)
SELECT Person.Person.FirstName, Person.Person.LastName, HumanResources.Employee.HireDate, Person.PersonPhone.PhoneNumber 
FROM Person.Person INNER JOIN HumanResources.Employee 
ON (Person.Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID) INNER JOIN Person.PersonPhone
ON (Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID) ORDER BY HireDate DESC;