CREATE DATABASE ProductManagement;

CREATE TABLE ProductManagement.dbo.Farmer
(
	FirstName VARCHAR(30),
	LastName VARCHAR(50),
	SSN VARCHAR(20) PRIMARY KEY,
	Gender VARCHAR(10),
	Born DATE
);

CREATE TABLE ProductManagement.dbo.Farm
(
	LicenseID VARCHAR(20) PRIMARY KEY,
	OwnerName VARCHAR(100),
	NumberOfEmployees INT,
	FarmAddress VARCHAR(100),
	Size INT,
	TypesOfProducts TEXT,
	OwnerSSN VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.Farmer(SSN)
);

CREATE TABLE ProductManagement.dbo.Rancher
(
 	FirstName VARCHAR(30),
	LastName VARCHAR(50),
	SSN VARCHAR(20) PRIMARY KEY,
	Gender VARCHAR(10),
	Born DATE
);

CREATE TABLE ProductManagement.dbo.AnimalHusbandry
(
	LicenseID VARCHAR(20) PRIMARY KEY,
	OwnerName VARCHAR(100),
	NumberOfEmployees INT,
	HusbandryAddress VARCHAR(100),
	Size INT,
	TypesOfProducts TEXT,
	OwnerSSN VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.Rancher(SSN)
);

CREATE TABLE ProductManagement.dbo.Customer
(
	FirstName VARCHAR(30),
	LastName VARCHAR(50),
	SSN VARCHAR(20) PRIMARY KEY,
	Born DATE,
	CustomerAddress VARCHAR(100)
);

CREATE TABLE ProductManagement.dbo.TransportationCompany
(
	CompanyName VARCHAR(100),
	LicenseID VARCHAR(20) PRIMARY KEY,
	CompanyAddress VARCHAR(100),
	Phone VARCHAR(12),
	TransportationType VARCHAR(15),
);

CREATE TABLE ProductManagement.dbo.FarmProduct
(
	ProductID VARCHAR(20) PRIMARY KEY,
	ProductName VARCHAR(50),
	RemainingAmount INT,
	TypeOfProduct VARCHAR(20),
	SeasonOfProduction VARCHAR(8),
	FarmID VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.Farm(LicenseID),
	SellerSSN VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.Farmer(SSN),
	AmountOfOrder INT,
	Price INT,
	CustomerAddress VARCHAR(100),
	OrderID VARCHAR(20),
	DeliveryDate DATE,
	CustomerSSN VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.Customer(SSN),
	TransportationCompanyLicenseID VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.TransportationCompany(LicenseID),

);

CREATE TABLE ProductManagement.dbo.LivestockProduct
(
	ProductID VARCHAR(20) PRIMARY KEY,
	ProductName VARCHAR(50),
	RemainingAmount INT,
	TypeOfProduct VARCHAR(20),
	SeasonOfProduction VARCHAR(8),
	HusbandryID VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.AnimalHusbandry(LicenseID),
	SellerSSN VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.Rancher(SSN),
	AmountOfOrder INT,
	Price INT,
	CustomerAddress VARCHAR(100),
	OrderID VARCHAR(20),
	DeliveryDate DATE,
	CustomerSSN VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.Customer(SSN),
	TransportationCompanyLicenseID VARCHAR(20) FOREIGN KEY REFERENCES ProductManagement.dbo.TransportationCompany(LicenseID),
);
