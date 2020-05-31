
-- stored procedure

select * FROM person.person
select * FROM person.PersonPhone
 
select p.LastName 'Last Name' , p.FirstName , pp.PhoneNumber , p.MiddleName
from person.person p
join
person.PersonPhone pp
on 
p.BusinessEntityID=pp.BusinessEntityID
order by Lastname, Firstname


 
CREATE PROC GetInfo
AS
select p.LastName , p.FirstName Name, pp.PhoneNumber , p.MiddleName
from person.person p
join
person.PersonPhone pp
on 
p.BusinessEntityID=pp.BusinessEntityID
order by Lastname, Firstname

 
EXEC GetInfo

GetInfo