--Correlated Subquery

 
SELECT TOP 10 sh.SalesOrderID, sh.OrderDate   , sh.SalesOrderNumber ,sh.CustomerID
FROM 
sales.SalesOrderHeader sh
FOR JSON PATH
 

SELECT TOP 10 sh.SalesOrderID, sh.OrderDate   , sh.SalesOrderNumber ,sh.CustomerID
FROM 
sales.SalesOrderHeader sh
FOR JSON AUTO 




 
