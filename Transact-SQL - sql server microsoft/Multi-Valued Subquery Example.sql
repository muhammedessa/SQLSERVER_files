-- Multi-valued  
 
SELECT TOP 3 * from Person.Person
SELECT TOP 3 * from HumanResources.Employee

 

SELECT Firstname 'First name' , Lastname  'Last name'
FROM Person.Person
WHERE Person.BusinessEntityID IN
	(SELECT BusinessEntityID
	 FROM HumanResources.Employee
	 WHERE Year(BirthDate)>1960)
ORDER BY LastName, FirstName


 
SELECT OrderYear, MAX(SalesOrderID) LastOrderID
FROM
	(SELECT SalesOrderID, Year(OrderDate) OrderYear  
	 FROM Sales.SalesOrderHeader) as DataYear               
GROUP BY OrderYear 
ORDER BY OrderYear



