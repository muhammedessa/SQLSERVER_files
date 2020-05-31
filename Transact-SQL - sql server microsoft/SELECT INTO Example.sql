  
select top 1 * from person.person
select top 1 * from person.emailaddress


 
SELECT p.FirstName, p.Lastname, e.EmailAddress
INTO PersonEmailList  
from person.person p
JOIN
person.emailaddress e
on 
p.BusinessEntityID=e.BusinessEntityID




select * from PersonEmailList  