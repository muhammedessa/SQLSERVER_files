DROP TABLE PKtable


CREATE TABLE PKtable2
(
 FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
CONSTRAINT PK_MAYSAN_OIL_COMPANY PRIMARY KEY clustered(LastName),
City varchar(30)  null 
)




CREATE TABLE PKtable3
(
 FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
 PRIMARY KEY clustered(LastName),
City varchar(30)  null 
)

INSERT INTO PKtable3
(FirstName , LastName , City)
VALUES
('Muhammed','Hameed', 'Maysan'),
('Ahmed','Hameed', 'Baghdad')



CREATE TABLE PKtable4
(
 FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
CONSTRAINT PK_MAYSAN_OIL_COMPANY_02 PRIMARY KEY clustered(LastName,FirstName),
City varchar(30)  null 
)


INSERT INTO PKtable4
(FirstName , LastName , City)
VALUES
('Muhammed','Hameed', 'Maysan'),
('Ahmed','Hameed', 'Baghdad')



INSERT INTO PKtable4
(FirstName , LastName , City)
VALUES
('Ali','Hameed', 'Maysan'),
('Ali','Ahmed', 'Baghdad')


INSERT INTO PKtable4
(FirstName , LastName , City)
VALUES
('Mahmoud','Samir', 'Maysan'),
('Mahmoud','Samir', 'Baghdad')


SELECT * FROM  PKtable4