--------------------------------------------------------

--ALTER TABLE ProductManagement.dbo.FarmProduct
--ADD isDiscontinued VARCHAR(10);

--ALTER TABLE ProductManagement.dbo.LivestockProduct
--ADD isDiscontinued VARCHAR(10);

------------------------------------------------------

--UPDATE ProductManagement.dbo.FarmProduct
--SET isDiscontinued = 'NO'
--WHERE RemainingAmount > 0;

--UPDATE ProductManagement.dbo.FarmProduct
--SET isDiscontinued = 'YES'
--WHERE RemainingAmount = 0;

--UPDATE ProductManagement.dbo.LivestockProduct
--SET isDiscontinued = 'No'
--WHERE RemainingAmount > 0;

--UPDATE ProductManagement.dbo.LivestockProduct
--SET isDiscontinued = 'YES'
--WHERE RemainingAmount = 0;

----------------------------------------------------------

--DELETE FROM ProductManagement.dbo.FarmProduct
--WHERE isDiscontinued = 'YES';

--DELETE FROM ProductManagement.dbo.LivestockProduct
--WHERE isDiscontinued = 'YES';

---------------------------------------------------------

--ALTER TABLE Productmanagement.dbo.FarmProduct
--DROP COLUMN isDiscontinued;

--ALTER TABLE ProductManagement.dbo.LivestockProduct
--DROP COLUMN isDiscontinued;

---------------------------------------------------------

--ALTER TABLE ProductManagement.dbo.Customer
--ADD discount_code INT ;

---------------------------------------------------------

--ALTER TABLE ProductManagement.dbo.TransportationCompany
--ADD PRICE_OF_TRANSPORT MONEY ;

-------------------------------------------------------

--UPDATE ProductManagement.dbo.TransportationCompany
--SET  PRICE_OF_TRANSPORT = '$30'
--WHERE TransportationType = 'VEHICLE' ;

--UPDATE ProductManagement.dbo.TransportationCompany
--SET  PRICE_OF_TRANSPORT = '$100'
--WHERE TransportationType = 'AIR';

--UPDATE ProductManagement.dbo.TransportationCompany
--SET  PRICE_OF_TRANSPORT = '$80'
--WHERE TransportationType = 'BOAT';

----------------------------------------------------------

--------------------CONSTRAINTS---------------------------

--ALTER TABLE ProductManagement.dbo.Customer
--ADD CONSTRAINT UNIQUE_CODE UNIQUE(discount_code);

--ALTER TABLE ProductManagement.dbo.TransportationCompany
--ADD CONSTRAINT PRICE_ISSUE CHECK( PRICE_OF_TRANSPORT < '150');

--ALTER TABLE ProductManagement.dbo.FarmProduct
--ADD CONSTRAINT VALID_ORDER CHECK(AmountOfOrder <= RemainingAmount);

--ALTER TABLE ProductManagement.dbo.LivestockProduct
--ADD CONSTRAINT VALID_ORDER CHECK(AmountOfOrder <= RemainingAmount);


-- ----------------------------------------------------------


--ALTER TABLE ProductManagement.dbo.TransportationCompany
--DROP CONSTRAINT PRICE_ISSUE;

--ALTER TABLE ProductManagement.dbo.Customer
--DROP CONSTRAINT UNIQUE_CODE;


-- ----------------------------------------------------------

---------------------------VIEW-------------------------

--CREATE VIEW [SHOW-AS-TRANSPORT-TYPE1] AS
--SELECT * FROM ProductManagement.dbo.TransportationCompany WHERE TransportationType LIKE '%BOAT%' ;


--CREATE VIEW [SHOW-AS-TRANSPORT-TYPE2] AS
--SELECT TransportationType, COUNT(TransportationType) as NUM
--FROM ProductManagement.dbo.TransportationCompany
--GROUP BY TransportationType;

--------------------------------------------------------------

----------------------Procedure-------------------------

--CREATE PROCEDURE SelectFarmers
--AS
--SELECT * FROM ProductManagement.dbo.Farmer
--GO;



--CREATE PROCEDURE SelectTransactionByAir @type VARCHAR(10)
--AS
--SELECT * FROM ProductManagement.dbo.TransportationCompany WHERE TransportationType = @type


----------------------------------------------------------------

-----------------------Function--------------------------

	--CREATE FUNCTION dbo.choosebyprice(@price int)
	--RETURNS TABLE
	--AS
	--RETURN
	--(
	--	SELECT *
	--	FROM ProductManagement.dbo.TransportationCompany
	--	WHERE PRICE_OF_TRANSPORT < @price
	--);
	--GO
		
--------------------------------------------------------------

-----------------------Trigger--------------------------

--USE ProductManagement;
--GO
--CREATE TRIGGER dbo.CheckIfRemaining
--ON ProductManagement.dbo.FarmProduct
--AFTER INSERT, UPDATE
--AS 
--BEGIN
--	UPDATE ProductManagement.dbo.FarmProduct
--	SET isDiscontinued = 'YES'
--	WHERE RemainingAmount = 0;
--END

-----------------------------------------------

--USE ProductManagement;
--GO
--CREATE TRIGGER dbo.CheckForAge
--ON dbo.Farmer
--AFTER INSERT
--AS 
--BEGIN
--	DELETE FROM dbo.Farmer
--	WHERE (2023 - YEAR(Farmer.Born) < 18);
--END
