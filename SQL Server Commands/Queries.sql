SELECT TOP(10) *
FROM ProductManagement.dbo.LivestockProduct;

-----------------------------------------------------

SELECT TOP(10) FP.ProductName AS FarmProducts, LP.ProductName AS LivestockProducts
FROM ProductManagement.dbo.FarmProduct FP, ProductManagement.dbo.LivestockProduct LP
WHERE FP.SeasonOfProduction LIKE '%Spring%' AND LP.SeasonOfProduction LIKE '%Fall%';

-----------------------------------------------------

SELECT TOP(10) FP.ProductName AS FarmProducts, LP.ProductName AS LivestockProducts
FROM ProductManagement.dbo.FarmProduct FP, ProductManagement.dbo.LivestockProduct LP
WHERE FP.RemainingAmount > 10 AND LP.RemainingAmount > 10;

-----------------------------------------------------

SELECT TOP(10) FP.ProductName, FP.Price
FROM ProductManagement.dbo.FarmProduct FP
WHERE Price >= 20 AND Price <= 50
ORDER BY Price;

-----------------------------------------------------

SELECT TOP(5) ProductName,  DeliveryDate, (FirstName + LastName) AS SellerName
FROM (ProductManagement.dbo.FarmProduct FP JOIN ProductManagement.dbo.Farmer F ON FP.SellerSSN = F.SSN)
ORDER BY DeliveryDate DESC

-----------------------------------------------------

SELECT ProductName, DeliveryDate
FROM ProductManagement.dbo.FarmProduct
WHERE MONTH(DeliveryDate) >= 6 AND MONTH(DeliveryDate) <= 12
ORDER BY Price;

-----------------------------------------------------

SELECT (C.FirstName + ' ' + C.LastName) AS CustomerName, LP.ProductName, LP.DeliveryDate
FROM (ProductManagement.dbo.LivestockProduct LP JOIN ProductManagement.dbo.Customer C ON LP.CustomerSSN = C.SSN)
WHERE DeliveryDate = '2023-06-10'

-----------------------------------------------------

SELECT COUNT (*) AS FallAndSpringProducts
FROM (SELECT ProductName, SeasonOfProduction FROM ProductManagement.dbo.FarmProduct
		UNION ALL
		SELECT ProductName, SeasonOfProduction FROM ProductManagement.dbo.LivestockProduct)	AS Products
WHERE SeasonOfProduction = 'Fall' OR SeasonOfProduction = 'Spring'
 --GROUP BY (SeasonOfProduction)

-----------------------------------------------------