 
ALTER PROC GetInfo
@lastname varchar(50)='%'   
AS
select p.LastName, p.FirstName  , pp.PhoneNumber
from person.person p
join
person.PersonPhone pp
on 
p.BusinessEntityID=pp.BusinessEntityID		
where LastName LIKE @lastname


 
GetInfo 'Abbas'

 
ALTER PROC GetInfo
@lastname varchar(50),
@firstname varchar(50)
AS
select p.LastName + ', ' + p.FirstName Name, pp.PhoneNumber
from person.person p
join
person.PersonPhone pp
on 
p.BusinessEntityID=pp.BusinessEntityID
where LastName=@lastname and FirstName=@firstname

GetInfo 'Abel', 'Catherine'