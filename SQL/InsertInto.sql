USE AdventureWorks2017;


-- Vytvo��me tabulku salesstaff
CREATE TABLE salesstaff
(
	staffid INT NOT NULL PRIMARY KEY,
	firstName NVARCHAR(30) NOT NULL,
	lastName NVARCHAR(30) NOT NULL
	)

-- Vlo��me jeden z�znam
INSERT INTO salesstaff (staffid,firstName,lastName) VALUES (200,'Abbas','Mehmood')

SELECT * FROM salesstaff

-- Vlo��me v�ce z�znam� najednou
INSERT INTO salesstaff (staffid,firstName,lastName) VALUES (300,'Imran','Afzal'),(325,'John','Vick'), (314,'James','Dino')

-- Vytvo��me tabulku salesstaffnew
CREATE TABLE salesstaffnew
(
	ID INT NOT NULL IDENTITY PRIMARY KEY,
	staffid INT NOT NULL,
	firstName NVARCHAR(30) NOT NULL,
	lastName NVARCHAR(30) NOT NULL
	)

INSERT INTO salesstaffnew (staffid,firstName,lastName) VALUES (200,'Abbas','Mehmood')
INSERT INTO salesstaffnew (staffid,firstName,lastName) VALUES (300,'Imran','Afzal'),(325,'John','Vick'), (314,'James','Dino')

SELECT * FROM salesstaffnew

CREATE TABLE nameOnlyTable
(
	firstName NVARCHAR(30),
	lastName NVARCHAR(30)
	)

-- Vlo�en� z�znam� z jin� tabulky
INSERT nameOnlyTable (firstName,lastName)
SELECT firstName,lastName FROM salesstaffnew WHERE ID >= 3

SELECT * FROM nameOnlyTable

-- Vlo�en� v�ech z�znam� z jin� tabulky do nov� tabulky (table backups)
SELECT * INTO salesstaffNew_bkp FROM salesstaffnew

SELECT * FROM salesstaffNew_bkp
