
-- Column Aliasing

USE AdventureWorks2012;

SELECT FirstName AS First, LastName AS Last
FROM Person.Person
WHERE LastName = 'Adams' AND FirstName = 'Alex'

SELECT FirstName 'Employee First Name', LastName 'Last Name'
FROM Person.Person
WHERE LastName = 'Adams' AND FirstName = 'Alex'

