 
CREATE TABLE Members
(
 EID int not null,
 FirstName varchar(20) not null,
 LastName varchar(25) not null,
 PhoneNumber varchar(50), 
 City varchar(20), 
 Country char(2)
 )


 CREATE TABLE People
 (
 PID int not null,
 FirstName varchar(20) not null,
 LastName varchar(25) not null,
 PhoneNumber varchar(50), 
 City varchar(20), 
 Country char(2)
 )

 INSERT INTO Members
 VALUES
 ('1','Muhammed','Essa','07101231234', 'Kirkuk', 'IQ'),
 ('2','Ahmed','Osama','07203217654', 'Mosul', 'IQ'),
 ('3','Hassan','Marwan','07400987631', 'Najaf', 'IQ') 

 INSERT INTO People
 VALUES
 ('1','Saad','Samir','07107659321', 'Basra', 'IQ'),
 ('2','Walid','Hussain','07209873211', 'Karbalaa', 'IQ'),
 ('3','Hassan','Salam','07408472917', 'Wasit', 'IQ') 

  
 select * from Members
  
 select * from People

 
 select Firstname, Lastname, PhoneNumber, City, Country
 from Members
 UNION
 select Firstname, Lastname, PhoneNumber, City, Country
 from People
 order by Lastname, Firstname