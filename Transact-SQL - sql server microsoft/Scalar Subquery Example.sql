-- Scalar Subquery  
 
SELECT * from Sales.SalesOrderHeader

 
SELECT MIN(TotalDue)
FROM Sales.SalesOrderHeader

 
SELECT SalesOrderID,MIN(TotalDue)
FROM Sales.SalesOrderHeader

 
SELECT SalesOrderID,MIN(TotalDue) MINOrder
FROM Sales.SalesOrderHeader
GROUP BY SalesOrderID
ORDER BY MINOrder DESC

 
SELECT SalesOrderID, TotalDue
FROM Sales.SalesOrderHeader
WHERE TotalDue = (SELECT MIN(TotalDue) FROM Sales.SalesOrderHeader);


