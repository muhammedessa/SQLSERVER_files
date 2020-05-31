 
CREATE TABLE InsertPerson
(
  SID int IDENTITY, 
  FirstName varchar(25) not null,
  LastName varchar(25) not null,
  Emailaddress varchar(50),
)


 
INSERT INTO InsertPerson
  SELECT p.Firstname, p.Lastname, e.emailaddress
  FROM person.person p
  JOIN person.emailaddress e
  ON p.businessentityid = e.businessentityid

 
select * from InsertPerson

