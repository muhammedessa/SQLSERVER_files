 
select top 1 * from person.person

 
select top 1 * from person.emailaddress

 
select P.FirstName, P.LastName,P.MiddleName, E.EmailAddress
from Person.Person P
JOIN
Person.EmailAddress E
ON
P.BusinessEntityID = E.BusinessEntityID
where LastName like 'B%'
order by LastName, FirstName