 --CTE


WITH C AS
(
  SELECT YEAR(OrderDate) AS Years, SalesOrderID
  FROM Sales.SalesOrderHeader
)
SELECT Years, COUNT(DISTINCT SalesOrderID) AS  CustomersNumber
FROM C
GROUP BY Years;

 

WITH C1 AS
(
 SELECT YEAR(OrderDate)  Years, SalesOrderID
 FROM Sales.SalesOrderHeader
),
C2 AS
(
 SELECT Years, COUNT(DISTINCT SalesOrderID)  CustomersNumber
 FROM C1
 GROUP BY Years
)
SELECT Years, CustomersNumber
FROM C2
WHERE CustomersNumber>100