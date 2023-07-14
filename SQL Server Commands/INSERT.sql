---------------------Farmer----------------------------

INSERT INTO ProductManagement.dbo.Farmer ([FirstName], [LastName], [SSN], [Gender], [Born])
VALUES ('Alex', 'Williams', 'FM35678', 'MALE', '1988-01-02');

INSERT INTO ProductManagement.dbo.Farmer ([FirstName], [LastName], [SSN], [Gender], [Born])
VALUES ('Sarah', 'petterson', 'FF39345', 'FEMALE', '1984-04-15');

INSERT INTO ProductManagement.dbo.Farmer ([FirstName], [LastName], [SSN], [Gender], [Born])
VALUES ('Bernarndo', 'griffen', 'FM40983', 'MALE', '1983-06-26');

INSERT INTO ProductManagement.dbo.Farmer ([FirstName], [LastName], [SSN], [Gender], [Born])
VALUES ('Baron', 'Kreiger', 'FM41987', 'MALE', '1981-04-16');

INSERT INTO ProductManagement.dbo.Farmer ([FirstName], [LastName], [SSN], [Gender], [Born])
VALUES ('Zella', 'Kling I', 'FM41457', 'MALE', '1986-01-06');

INSERT INTO ProductManagement.dbo.Farmer ([FirstName], [LastName], [SSN], [Gender], [Born])
VALUES ('Albin', 'Sipes', 'FM41434', 'MALE', '1976-05-20');

---------------------Farm----------------------------

INSERT INTO ProductManagement.dbo.Farm (LicenseID, OwnerName, NumberOfEmployees, FarmAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('FMF16475', 'Alex Williams', 40, 'The St, Stafford ST20 0QA', 50000, 'Wheat', 'FM35678');

INSERT INTO ProductManagement.dbo.Farm (LicenseID, OwnerName, NumberOfEmployees, FarmAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('FFF29874', 'Sarah petterson', 60, 'Eccleshall, Stafford ST21 6HL', 100000, 'Dairy, Meat', 'FF39345');

INSERT INTO ProductManagement.dbo.Farm (LicenseID, OwnerName, NumberOfEmployees, FarmAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('FMF36546', 'Bernarndo griffen', 70, 'Stafford ST20 0NH', 120000,	 'Dairy, Meat, Wool', 'FM40983');

INSERT INTO ProductManagement.dbo.Farm (LicenseID, OwnerName, NumberOfEmployees, FarmAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('FEF36286', 'Baron Kreiger', 100, '2 North El Dorado Lane Muncie', 90000, 'Dairy, Meat', 'FM41987');

INSERT INTO ProductManagement.dbo.Farm (LicenseID, OwnerName, NumberOfEmployees, FarmAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('FME86486', 'Zella Kling I', 50, '505 Vine St. Mobile, AL 36605', 60000, 'Meat, Wool', 'FM41457');

INSERT INTO ProductManagement.dbo.Farm (LicenseID, OwnerName, NumberOfEmployees, FarmAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('FFF33256', 'Albin Sipes', 40, '267 Vale St. Avon, IN 46123', 50000, 'Meat', 'FM41434');

---------------------Rancher----------------------------

INSERT INTO ProductManagement.dbo.Rancher (FirstName, LastName, SSN, Gender, Born)
VALUES ('Teri', 'Dactyl', 'H4B0516', 'FEMALE', '1982-04-04');

INSERT INTO ProductManagement.dbo.Rancher (FirstName, LastName, SSN, Gender, Born)
VALUES ('Peg', 'Legge', 'H4B0678', 'MALE', '1983-05-23');

INSERT INTO ProductManagement.dbo.Rancher (FirstName, LastName, SSN, Gender, Born)
VALUES ('Allie', 'Grater', 'H4B0117', 'FEMALE', '1990-03-15');

INSERT INTO ProductManagement.dbo.Rancher (FirstName, LastName, SSN, Gender, Born)
VALUES ('Maudie', 'Thompson', 'H4B0427', 'MALE', '1992-03-25');

INSERT INTO ProductManagement.dbo.Rancher (FirstName,LastName, SSN, Gender, Born)
VALUES ('Jammie', 'Frami', 'H4B2547', 'FEMALE', '1988-04-10');

INSERT INTO ProductManagement.dbo.Rancher (FirstName, LastName, SSN, Gender, Born)
VALUES ('Virgie', 'Howe II', 'H4B5381', 'MALE', '1978-12-15');

---------------------AnimalHusbandry----------------------------

INSERT INTO ProductManagement.dbo.AnimalHusbandry (LicenseID, OwnerName, NumberOfEmployees, HusbandryAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('L4C9941', 'Teri Dactyl', 30, 'New Inn House, Felinfach', 500, 'Meat', 'H4B0516');

INSERT INTO ProductManagement.dbo.AnimalHusbandry (LicenseID, OwnerName, NumberOfEmployees, HusbandryAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('A8M4896', 'Peg Legge', 40, 'Redhill Farm, Alcester', 450, 'M, Meat','H4B0678');

INSERT INTO ProductManagement.dbo.AnimalHusbandry (LicenseID, OwnerName, NumberOfEmployees, HusbandryAddress, Size, TypesOfProducts, OwnerSSN )
VALUES ('A5B3906', 'Allie Grater', 60, '62 Norton, Woodley', 700, 'Wool', 'H4B0117');

INSERT INTO ProductManagement.dbo.AnimalHusbandry (LicenseID, OwnerName, NumberOfEmployees, HusbandryAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('A5C3876', 'Maudie Thompson', 40, '548 Poplar Rd. Dedham, MA 02026', 600, 'Meat, milk, Wool', 'H4B0427');

INSERT INTO ProductManagement.dbo.AnimalHusbandry (LicenseID, OwnerName, NumberOfEmployees, HusbandryAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('A3W3446', 'Jammie Frami', 30, '5 Littleton Dr. Rosemount, MN 55068', 450, 'Meat, Dairy, Wool', 'H4B2547');

INSERT ProductManagement.dbo.AnimalHusbandry (LicenseID, OwnerName, NumberOfEmployees, HusbandryAddress, Size, TypesOfProducts, OwnerSSN)
VALUES ('A2V3576', 'Virgie Howe II', 30, '782 Temple Dr. New Orleans, LA 70115', 300, 'Meat, Wool','H4B5381');

---------------------Customer----------------------------

INSERT INTO ProductManagement.dbo.Customer (FirstName, LastName, SSN, Born, CustomerAddress)
VALUES ('Olive', 'Yew', 'C87689', '1990-01-01', '3 Elmfield Road, Bristol');

INSERT INTO ProductManagement.dbo.Customer (FirstName, LastName, SSN, Born, CustomerAddress)
VALUES ('Aida', 'Bugg', 'C54567', '2000-09-10', '18 Abbeydale Vale, Leeds');

INSERT INTO ProductManagement.dbo.Customer (FirstName, LastName, SSN, Born, CustomerAddress )
VALUES ('Agnes', 'Corkery', 'C12467', '1995-10-06', '97 Vine Drive Holly Springs NC 27540');

INSERT INTO ProductManagement.dbo.Customer (FirstName, LastName, SSN, Born, CustomerAddress)
VALUES ('Elouise', 'Mohr', 'C23467', '1997-07-16', '9346 Country Club Street Allentown PA 18102');

---------------------TransportationCompany----------------------------

INSERT INTO ProductManagement.dbo.TransportationCompany (CompanyName, LicenseID, CompanyAddress, Phone, TransportationType)
VALUES ('FASTTRAVEL','CO1267', '19 Lenton Drive, Leeds', '7735902100', 'AIR');

INSERT INTO ProductManagement.dbo.TransportationCompany (CompanyName , LicenseID, CompanyAddress, Phone, TransportationType)
VALUES ('DTRAVEL', 'CO2478', '49 Cornwall Road, Bristol', '7466163572', 'VEHICLE');

INSERT INTO ProductManagement.dbo.TransportationCompany (CompanyName, LicenseID, CompanyAddress, Phone, TransportationType)
VALUES ('SPEEDTRAVEL', 'CO2589', '3 Shepherd Drive, High Green', '7863543572', 'VEHICLE');

INSERT INTO ProductManagement.dbo.TransportationCompany (CompanyName, LicenseID, CompanyAddress, Phone, TransportationType)
VALUES ('EXPRESS', 'CO4780', '15 Lancaster Estate, Gimingham', '7863873572', 'BOAT');

---------------------FarmProduct----------------------------

INSERT INTO ProductManagement.dbo.FarmProduct (ProductID, ProductName, RemainingAmount, TypeOfProduct, SeasonOfProduction, FarmID, SellerSSN, AmountOfOrder, Price,
	CustomerAddress, OrderID, DeliveryDate, CustomerSSN, TransportationCompanyLicenseID)
VALUES ('P231856', 'lamb meat', 30000, 'Meat', 'Spring', 'FMF16475', 'FM35678', 20000, 400,
	'18 Abbeydale Vale, Leeds', 'O32514', '2023-06-05', 'C54567', 'CO1267');

INSERT INTO ProductManagement.dbo.FarmProduct (ProductID, ProductName, RemainingAmount, TypeOfProduct, SeasonOfProduction, FarmID, SellerSSN, AmountOfOrder, Price,
	CustomerAddress, OrderID, DeliveryDate, CustomerSSN, TransportationCompanyLicenseID)
VALUES ('P546865', 'Wheat', 100000, 'Wheat', 'Spring', 'FFF29874', 'FF39345', 50000, 5000,
	'3 Elmfield Road, Bristol', 'O24658', '2023-06-10', 'C87689', 'CO2478');

INSERT INTO ProductManagement.dbo.FarmProduct (ProductID, ProductName, RemainingAmount, TypeOfProduct, SeasonOfProduction, FarmID, SellerSSN, AmountOfOrder, Price,
	CustomerAddress, OrderID, DeliveryDate, CustomerSSN, TransportationCompanyLicenseID)
VALUES ('P568425', 'Milk', 20, 'Dairy', 'Spring', 'FEF36286', 'FM41987', 10, 50,
	'9346 Country Club Street Allentown, PA 18102', 'O24649', '2023-06-12', 'C23467', 'CO2589');

---------------------LivestockProduct----------------------------

INSERT INTO ProductManagement.dbo.LivestockProduct (ProductID, ProductName, RemainingAmount, TypeOfProduct, SeasonOfProduction, HusbandryID, SellerSSN, AmountOfOrder, Price,
	CustomerAddress, OrderID, DeliveryDate, CustomerSSN, TransportationCompanyLicenseID)
VALUES ('P887543', 'Wool', 20000, 'Wool', 'Fall', 'A5C3876', 'H4B0427', 10000, 20,
	'97 Vine Drive Holly Springs, NC 27540', 'O56532', '2023-06-20', 'C12467', 'CO4780');

INSERT INTO ProductManagement.dbo.LivestockProduct (ProductID, ProductName, RemainingAmount, TypeOfProduct, SeasonOfProduction, HusbandryID, SellerSSN, AmountOfOrder, Price,
	CustomerAddress, OrderID, DeliveryDate, CustomerSSN, TransportationCompanyLicenseID)
VALUES ('P980943', 'Cow meat', 50000, 'Meat', 'Fall', 'A8M4896', 'H4B0678', 10000, 300,
	'18 Abbeydale Vale, Leeds', 'O56473', '2023-06-05', 'C54567', 'CO1267');

INSERT INTO ProductManagement.dbo.LivestockProduct (ProductID, ProductName, RemainingAmount, TypeOfProduct, SeasonOfProduction, HusbandryID, SellerSSN, AmountOfOrder, Price,
	CustomerAddress, OrderID, DeliveryDate, CustomerSSN, TransportationCompanyLicenseID)
VALUES ('P764482', 'Butter', 5000, 'Dairy', 'Summer', 'A3W3446', 'H4B2547', 2000, 10,
	'97 Vine Drive Holly Springs, NC 27540', 'O55785', '2023-06-10', 'C12467', 'CO2478');