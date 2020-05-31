Create Database MuhammedTest


CREATE TABLE AdventureWorks2012.dbo.OMERHameed
(
EID tinyint IDENTITY,
FirstName varchar(25) not null,
LastName  varchar(25) not null,
DateOfContract date null
)

SELECT * FROM OMERHameed

INSERT INTO OMERHameed (FirstName,LastName) 
VALUES 
('Muhammed','Essa'),('Ahmed','Essa'),('Osama','Essa')




CREATE TABLE AdventureWorks2012.dbo.AhmedHameed
(
EID UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL,
FirstName varchar(25) not null,
LastName  varchar(25) not null,
age tinyint null
)
SELECT * FROM AhmedHameed

INSERT INTO AhmedHameed (FirstName,LastName , age) 
VALUES 
('Muhammed','Essa',36),('Ahmed','Essa',30),('Osama','Essa',39)

 -- GUID

 ---WHERE ID=100 or WHERE ID=F357EBFD-5262-4401-A672-BF1C5BE93C90




 --Altering table
 CREATE TABLE  AhmedAltering
(
EID UNIQUEIDENTIFIER DEFAULT NEWID() NOT NULL,
FirstName varchar(25) not null,
LastName  varchar(25) not null,
age tinyint null
)

INSERT INTO AhmedAltering (FirstName,LastName , age) 
VALUES 
('Muhammed','Essa',36) 

SELECT * FROM AhmedAltering

ALTER TABLE AhmedAltering
ADD City varchar(25) null

ALTER TABLE AhmedAltering
ADD City2 varchar(25) null

UPDATE AhmedAltering 
SET City = 'Kirkuk'
WHERE LastName = 'Essa'

ALTER TABLE AhmedAltering
DROP COLUMN City2  