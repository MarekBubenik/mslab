-- Vytvoøíme tabulku Sales.Visits
CREATE TABLE [AdventureWorks2017].[Sales].[Visits]	-- specifikujeme název [databáze].[schema].[tabulky]
(visit_id INT PRIMARY KEY IDENTITY (1, 1),			-- visit_id jako Primary key, Identity navyšuje èíslo dle požadavkù (zaèátek, o kolik se vždycky navýší)
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
INTO #TempPersonTable										-- znakem # vytvoøíme/znaèíme doèasnou tabulku
FROM [Person].[Person]										-- doèasné tabulky existují pouze v rámci této relace
WHERE Title = 'Mr.'

SELECT * FROM #TempPersonTable;

DROP TABLE #TempPersonTable;								-- DROP TABLE smaže tabulku