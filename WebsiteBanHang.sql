create database WebsiteBanHang
go
use WebsiteBanHang
go
create Table Brand
(
id int,
Name nvarchar(100) NOT NULL,
Avatar nvarchar(100)NOT NULL,
Slug varchar(100)NOT NULL,
ShowOnHomePage bit NOT NULL,
DisplayOrder int NOT NULL,
CreatedOnUtc datetime NOT NULL,
UpdateOnUtc datetime NOT NULL,
Deleted bit NOT NULL,
CONSTRAINT pk_Brand PRIMARY KEY(id)
)
create Table Category
(
id int,
Name nvarchar(100) NOT NULL,
Avatar nvarchar(100)NOT NULL,
Slug varchar(100)NOT NULL,
ShowOnHomePage bit NOT NULL,
DisplayOrder int NOT NULL,
Deleted bit NOT NULL,
CreatedOnUtc datetime NOT NULL,
UpdateOnUtc datetime NOT NULL,
CONSTRAINT pk_Category PRIMARY KEY(id)
)
create table DatHang
(
id int NOT NULL,
Name nvarchar(100) NOT NULL,
Productld int NOT NULL,
Price float NOT NULL,
Statuss int NOT NULL,
CeatedOnUtc datetime NOT NULL,
)
create table Product
(
id int,
Name nvarchar(100) NOT NULL,
Avatar nvarchar(100) NOT NULL,
Categoryid int NOT NULL, 
ShortDes nvarchar(100) NOT NULL,
FullDescription nvarchar (500) NOT NULL,
Price float NOT NULL,
PriceDiscount float NOT NULL,
Typeld int NOT NULL,
Slug varchar(50) NOT NULL,
Brandld int NOT NULL,
Deleted bit NOT NULL,
ShowOnHomePage bit NOT NULL,
DisplayOrder int NOT NULL,
CreatedOnUtc datetime NOT NULL,
UpdatedOnUtc datetime NOT NULL,
CONSTRAINT pk_Product PRIMARY KEY(id)
)
Create table Users
(
id int not null,
FistName varchar(50) not null,
LastName varchar(50) not null,
Email varchar(50) not null,
Password varchar(50) not null,
IsAdmin bit not null,
CONSTRAINT pk_Users PRIMARY KEY (id)
)