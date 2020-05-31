-- Table Aliasing


-- Here's the basic structure of a simple JOIN query
select Person.FirstName, Person.LastName, EmailAddress.EmailAddress
from Person.Person
JOIN
Person.EmailAddress
ON
Person.BusinessEntityID = EmailAddress.BusinessEntityID
where LastName like 'b%'
order by LastName, FirstName


-- Table aliasing can be used to reduce keystrokes
-- and make the query easier to read
select p.FirstName, p.LastName, e.EmailAddress
from Person.Person p
JOIN
Person.EmailAddress e
ON
p.BusinessEntityID = e.BusinessEntityID
where LastName like 'b%'
order by LastName, FirstName