CREATE TABLE suppliers (
    supplierID INT PRIMARY KEY IDENTITY, 
    supplierName VARCHAR(100),
    contactPerson VARCHAR(100),
    phone VARCHAR(12),
    email VARCHAR(100),
    portstaladdress VARCHAR(200)
);

CREATE TABLE suppliertransactions (
    transactionsID INT PRIMARY KEY IDENTITY,
    supplierID INT,
    itemtype VARCHAR(50),
    itemName VARCHAR(100),
    quantity DECIMAL(10,2),
    TransactionDate DATE,
    FOREIGN KEY (supplierID) REFERENCES suppliers(supplierID)
);

SELECT * FROM suppliertransactions;

CREATE TABLE farmers (
    FarmerID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100),
    conatctnumber VARCHAR(100),  -- Typo: should be 'contactNumber'
    Email VARCHAR(100)
);

SELECT * FROM farmers;

CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100),
    Role VARCHAR(100),
    HiredFDate DATE,
    farmerID INT,
    FOREIGN KEY (farmerID) REFERENCES farmers(FarmerID)
);

CREATE TABLE equipment (
    equipmentID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(100),
    purchase_date DATE,
    status VARCHAR(50)
);

SELECT * FROM equipment;

CREATE TABLE crop (
    name VARCHAR(100),
    season VARCHAR(50)
);

-- Add primary key after creation
ALTER TABLE crop
ADD crop_id INT PRIMARY KEY IDENTITY;

CREATE TABLE crop_planted (
    crop_planted_id INT PRIMARY KEY,
    Crop_id INT,
    plant_date DATE,
    FOREIGN KEY (Crop_id) REFERENCES crop(crop_id)
);

SELECT * FROM crop_planted;

