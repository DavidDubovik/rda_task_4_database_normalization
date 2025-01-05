-- Create database and tables

create DATABASE ShopDB;
USE ShopDB;

create TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

create TABLE ProductInventory (
    ID INT,
    ProductName VARCHAR(50),
    WarehouseID  INT,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouse(ID) ON delete NO ACTION,
    CountryID INT,
	FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON delete NO ACTION,
    PRIMARY KEY (ID)
);

create TABLE Warehouse (
    ID INT,
    WarehouseAmount INT,
    WarehouseName VARCHAR(50),
    WarehouseAddress VARCHAR(50),
    PRIMARY KEY (ID)
);

-- Populate test data

insert into Countries (ID,Name)
	values (1, 'Country1');
insert into Countries (ID,Name)
	values (2, 'Country2');
    
insert into ProductInventory (ID,ProductName, WarehouseID, CountryID)
	values (1, 'AwersomeProduct',1, 1);
insert into ProductInventory (ID,ProductName, WarehouseID, CountryID)
	values (2, 'AwersomeProduct', 2, 2);

insert into Warehouse (ID, WarehouseAmount, WarehouseName, WarehouseAddress)
	values (1, 2, 'Warehouse-1', 'City-1, Street-1');
insert into Warehouse (ID, WarehouseAmount, WarehouseName, WarehouseAddress)
	values (2, 5, 'Warehouse-2', 'City-2, Street-2');

