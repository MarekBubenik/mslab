USE AdventureWorks2017
GO

CREATE PROCEDURE SelectAllPersonAddress 
AS
SELECT * FROM Person.Address
GO

EXEC SelectAllPersonAddress

-- Odstraneni procedury:
-- DROP PROCEDURE SelectAllPersonAddress

CREATE PROCEDURE SelectAllPersonAddressWithParamWithEncryption (@City NVARCHAR(30),@StateProvinceID INT)
-- WITH ENCRYPTION				-- WITH ENCRYPTION zasifruje kod uvnitr procedury, pouzivat s opatrnosti - tezko se desifruje
AS

BEGIN							-- BEGIN END se pou��v� k definov�n� bloku p��kaz�. Blok p��kaz� se skl�d� ze sady p��kaz� SQL, kter� se prov�d�j� spole�n�
	SET NOCOUNT ON				-- Prikazujeme, aby nam SQL Server nevracel pocet ovlivnenych radku
	SELECT * FROM Person.Address WHERE City = @City
END

GO

EXEC SelectAllPersonAddressWithParam @City = 'New York'
EXEC SelectAllPersonAddressWithParam 'New York'