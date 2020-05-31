--DELETE Examples

 SELECT * FROM Person.Person

SELECT TOP 25 BusinessEntityID, LastName, FirstName INTO DeleteTable2
FROM Person.Person

 
select * from DeleteTable

 
DELETE FROM DeleteTable 

 
INSERT INTO DeleteTable
SELECT TOP 25 LastName, FirstName FROM Person.Person

 
select * from DeleteTable2

DELETE FROM DeleteTable2
WHERE BusinessEntityID = 38

 
DELETE FROM DeleteTable
WHERE LastName='Abbas' AND FirstName='Syed'

 
 
SELECT
LastName, FirstName 
FROM DeleteTable
WHERE LastName='Abolrous' AND FirstName='Hazem'
DELETE
FROM DeleteTable
WHERE LastName='Abolrous' AND FirstName='Hazem'