


SELECT TOP 10 SalesOrderID ,OrderDate ,SalesOrderNumber ,CustomerID 
FROM [Sales].[SalesOrderHeader]
FOR JSON AUTO	





SELECT TOP 100 SD.SalesOrderID,OrderDate,SalesOrderNumber,CustomerID ,
   SalesOrderDetailID ,ProductID ,LineTotal 
FROM [Sales].[SalesOrderHeader] SH 
   INNER JOIN [Sales].[SalesOrderDetail] SD on SH.SalesOrderID = SD.SalesOrderID
FOR JSON AUTO	




SELECT TOP 10 SalesOrderID ,OrderDate ,SalesOrderNumber ,CustomerID 
    
FROM [Sales].[SalesOrderHeader]
FOR JSON PATH -- here
 

