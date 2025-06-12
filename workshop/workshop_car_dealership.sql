/*CREATE SCHEMA MARQ

CREATE TABLE MARQ.dealerships(
    dealership_id INT PRIMARY KEY IDENTITY (1,1),
    name NVARCHAR (50),
    address NVARCHAR(50),
    phone NVARCHAR(12)
)

CREATE TABLE MARQ.vehicles(
    vin INT PRIMARY KEY,
    year INT,
    make NVARCHAR(15),
    model NVARCHAR(15),
    vehicle_type NVARCHAR(12),
    color NVARCHAR(12),
    odometer INT,
    price DECIMAL(10,2),
    sold BIT DEFAULT 0
)

CREATE TABLE MARQ.inventory(
    dealership_id INT,
    vin INT
)

CREATE TABLE MARQ.sales_contracts(
    contract_id INT PRIMARY KEY IDENTITY(1,1),
    date NVARCHAR(10),
    name NVARCHAR(18),
    email NVARCHAR(30),
    vin INT,
    total_price DECIMAL(10,2),
    leased BIT DEFAULT 0,
    monthly DECIMAL(10,2)
)
CREATE TABLE MARQ.lease_contracts(
    contract_id INT PRIMARY KEY IDENTITY(1,1),
    date NVARCHAR(10),
    name NVARCHAR(18),
    email NVARCHAR(30),
    vin INT,
    expected_ending_value DECIMAL(10,2),
    lease_fee DECIMAL(10,2),
    total_price DECIMAL(10,2),
    monthly_fee DECIMAL(10,2)
)
INSERT INTO MARQ.dealerships( name, address, phone)
VALUES('DEALERS','123 TEST AVE', '123-456-7890')

INSERT INTO MARQ.vehicles(vin, year, make, model, vehicle_type, color, odometer, price)
VALUES(1234, 2020, 'TEST-MAKE','TEST-MODEL','TEST-TYPE','TEST-COLOR', 0, 0.0)

INSERT INTO MARQ.inventory(dealership_id,vin)
VALUES(1,1234)                                                      

INSERT INTO MARQ.sales_contracts(date, name, email, vin)
VALUES('06-06-2025','test-name','test@gmail.com',1234)
                                                                */
SELECT *
FROM MARQ.dealerships;

SELECT *
FROM MARQ.vehicles;

SELECT *
FROM MARQ.inventory;

SELECT *
FROM MARQ.sales_contracts;