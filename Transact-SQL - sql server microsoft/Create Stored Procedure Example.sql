-- Create Stored Procedure Example

CREATE PROC GetOrders
AS
SELECT 
	 YEAR(soh.OrderDate) 'Year'
	,MONTH(soh.OrderDate) 'Month'
	,sod.ProductID
	,p.Name
	,SUM(sod.OrderQty) 'Orders'
	,SUM(sod.LineTotal) 'Total'
FROM            
	Sales.SalesOrderHeader soh
	INNER JOIN 
	Sales.SalesOrderDetail sod
	ON 
	soh.SalesOrderID = sod.SalesOrderID 
	INNER JOIN 
	Production.Product p
	ON 
	sod.ProductID = p.ProductID
	GROUP BY
	  sod.ProductID, Name, YEAR(OrderDate), MONTH(OrderDate)
	ORDER BY  YEAR(OrderDate), MONTH(OrderDate),sod.ProductID 


-- Call the stored procedure
EXEC GetOrders

-- You can just use the name of the stored procedure
GetOrders