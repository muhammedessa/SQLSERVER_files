
-- Using DISTINCT

USE AdventureWorks2012;

-- This query returns all columns and all rows
SELECT * FROM Sales.SalesOrderDetail

-- This query returns all ProductID rows from the table
-- including duplicate rows
SELECT ProductID FROM Sales.SalesOrderDetail

-- By using the DISTINCT keyword, we can limit the results
-- set to only the unique ProductID values in the table
SELECT DISTINCT ProductID FROM Sales.SalesOrderDetail