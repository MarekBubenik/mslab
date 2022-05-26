-- Vytvo��me tabulku Sales.Visits
CREATE TABLE [AdventureWorks2017].[Sales].[Visits]	-- specifikujeme n�zev [datab�ze].[schema].[tabulky]
(visit_id INT PRIMARY KEY IDENTITY (1, 1),			-- visit_id jako Primary key, Identity navy�uje ��slo dle po�adavk� (za��tek, o kolik se v�dycky nav���)
first_name VARCHAR (50) NOT NULL,					-- nazev_sloupce datovy_typ paremetry,
last_name VARCHAR (50) NOT NULL,
visited_at DATETIME,
phone VARCHAR (20),
store_id INT NOT NULL,
FOREIGN KEY (store_id) REFERENCES Sales.StoreNew (store_id)	-- Foreign key store_id v tabulce dle References sales.storenew (store_id)
);

CREATE TABLE [AdventureWorks2017].[Sales].[StoreNew] 
(
store_id INT PRIMARY KEY NOT NULL,
sales INT
);

SELECT * FROM [AdventureWorks2017].[Sales].[Visits];

--------------------------------------------------------

SELECT BusinessEntityID, firstname, lastname, Title
INTO #TempPersonTable										-- znakem # vytvo��me/zna��me do�asnou tabulku
FROM [Person].[Person]										-- do�asn� tabulky existuj� pouze v r�mci t�to relace
WHERE Title = 'Mr.'

SELECT * FROM #TempPersonTable;

DROP TABLE #TempPersonTable;								-- DROP TABLE sma�e tabulku