--PIVOT Example

 
CREATE TABLE dbo.MyShop
(
  ProductID   INT        NOT NULL,
  ProductDate DATE       NOT NULL,
  SalesID     INT        NOT NULL,
  CustomerID    VARCHAR(5) NOT NULL,
  Qty       INT        NOT NULL,
  CONSTRAINT PK_Orders PRIMARY KEY(ProductID)
);

 
INSERT INTO dbo.MyShop(ProductID, ProductDate, SalesID, CustomerID, Qty)
VALUES
  (30001, '20190603', 44, 'd', 16),
  (10001, '20191016', 33, 'd', 33),
  (10005, '20191016', 22, 'd', 44),
  (40001, '20180110', 33, 'c', 34),
  (10006, '20180104', 22, 'c', 2),
  (20001, '20190208', 33, 'c', 5),
  (40005, '20200202', 22, 'a', 7),
  (20002, '20200226', 22, 'b', 67),
  (30003, '20200415', 33, 'b', 12),
  (30004, '20200415', 44, 'b', 4),
  (30007, '20180928', 33, 'c', 6);

 
SELECT * FROM dbo.MyShop;

 
SELECT SalesID, CustomerID, SUM(Qty) 'Total Qty'
FROM MyShop
GROUP BY SalesID, CustomerID

 
SELECT SalesID,
  SUM(CASE WHEN CustomerID = 'a' THEN Qty END) as a,
  SUM(CASE WHEN CustomerID = 'b' THEN Qty END) as b,
  SUM(CASE WHEN CustomerID = 'c' THEN Qty END) as c,
  SUM(CASE WHEN CustomerID = 'd' THEN Qty END) as d
FROM MyShop
GROUP BY SalesID




 
SELECT SalesID, a, b, c, d
FROM 
  (SELECT SalesID, CustomerID, Qty		 
   FROM MyShop) as dt			 
PIVOT(SUM(Qty) FOR CustomerID IN (a,b,c,d)) as pv



