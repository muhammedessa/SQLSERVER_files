
select top 20 ProductID, SUM(quantity) 'In Stock'
 from production.productinventory
 GROUP BY ProductID


 CREATE TYPE InvInfoTable AS TABLE
 (
  ProdID int,
  Inventory int
 )


 CREATE PROC GetInvTotal
 @InvTVP InvInfoTable READONLY
 AS
 SELECT ProdID, Inventory 'Inventory >950' from @InvTVP
 WHERE Inventory>950
 ORDER BY Inventory;

 SELECT ProdID, Inventory 'Inventory <950' from @InvTVP
  WHERE Inventory<950
 ORDER BY Inventory;

 

 DECLARE @tInvParam AS InvInfoTable

 INSERT INTO @tInvParam
 select top 20 ProductID, SUM(quantity) 'In Stock'
 from production.productinventory
 GROUP BY ProductID

 EXEC GetInvTotal @tInvParam
