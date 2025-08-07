--create database TGfarm 
Use TGfarm
go

create table suppliers(
supplierID INT primary key identity, 
supplierName varchar(100),
contactPerson varchar(100),
phone varchar(12),
email varchar(100),
portstaladdress varchar(200))

create table suppliertransactions(
transactionsID INT primary key identity,
supplierID int,
itemtype varchar (50),
itemName varchar (100),
quantity Decimal(10,2),
TransactionDate date,
Foreign key (supplierID) References suppliers(supplierID))

select* from suppliertransactions

create table farmers (
FarmerID INT primary key identity,
Name varchar (100),
conatctnumber varcHAR (100),
Email varchar (100))

select* from farmers

create table employees(
EmployeeID INT primary key Identity,
Name Varchar(100),
Role varchar (100),
HiredFDate Date,
farmerID INT,
foreign key (farmerID) References farmers(FarmerID))

select * from employees

create table equipment(
equipmentID INT primary key Identity,
Name varchar(100),
purchase_date Date,
status varchar(50))

select * from equipment

create table crop(
name varchar(100),
season varchar(50))

select * from crop


create table crop_planted(
crop_planted_id INT Primary Key,
Crop_id INT,
plant_date date,
foreign key(Crop_id) References crop(crop_id))

select * from crop_planted

Alter Table crop
add crop_id INT primary key identity;