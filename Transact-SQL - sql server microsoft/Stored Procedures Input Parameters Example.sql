-- Stored Procedures Input Parameters

CREATE PROC GetOrders
@ProdID int = 712   -- Create the input parameter
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
WHERE sod.ProductID = @ProdID   -- Use the input parameter in the WHERE clause
	GROUP BY
	  sod.ProductID, Name, YEAR(OrderDate), MONTH(OrderDate)
	ORDER BY  YEAR(OrderDate), MONTH(OrderDate),sod.ProductID 


-- Call the stored procedure
EXEC GetOrders '712'

-- You can just use the name of the stored procedure
GetOrders '712'