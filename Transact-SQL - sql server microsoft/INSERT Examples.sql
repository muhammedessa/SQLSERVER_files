
 


CREATE TABLE InsertPeople
(
  SID int IDENTITY, 
  FirstName varchar(25) not null,
  LastName varchar(25) not null,
  City varchar(12) null,
  Country char(2) DEFAULT ('IQ')
)




 
INSERT INTO InsertPeople
(FirstName, LastName, City)
VALUES
('Muhammed','Essa','Kirkuk')

select * from InsertPeople

 
INSERT INTO InsertPeople
VALUES
('Ahmed','Salim','Ankara','TR')

 
INSERT INTO InsertPeople
(LastName,City,FirstName,Country)
VALUES
('Hassan','Istanbul','Walid','TR')


 
INSERT INTO InsertPeople
(LastName,FirstName,Country)
VALUES
('Ghassan','Samir','TR')


 
INSERT INTO InsertPeople
(LastName,City,Country)
VALUES
('Muhsin','Wasit','IQ')

 
INSERT INTO InsertPeople
(LastName,FirstName,City)
VALUES
('Walid','Isam','Babil'),
('Thamer','Islam','Basra'),
('Khalid','Othman','Ninava'),
('Omer','Bakir','Erbil')


select * from InsertPeople

