--Correlated Subquery

 
SELECT DISTINCT p.BusinessEntityID, p.FirstName first , p.LastName last
FROM
Person.Person p
JOIN
sales.SalesOrderHeader sh
ON
p.BusinessEntityID=sh.SalesPersonID
WHERE sh.TotalDue>90000

 
SELECT p.BusinessEntityID, FirstName first, LastName last FROM Person.Person p
WHERE
EXISTS
	(SELECT sh.SalesPersonID FROM Sales.Salesorderheader sh 
	 WHERE TotalDue>90000
	 and p.BusinessEntityID=sh.SalesPersonID)




 
