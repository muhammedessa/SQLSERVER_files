
-- Updating Data
 
select * from Person.Address

 
UPDATE Person.Address
SET ModifiedDate = GETDATE();

 
select * from Person.Address

 
UPDATE Person.Address
SET AddressLine1='7000 Roundtree Drive'
WHERE AddressID= 3

 
select * from Person.Address

 
select * from Sales.SalesPerson

 
UPDATE Sales.SalesPerson
SET Bonus = 3000, CommissionPct = .30, SalesQuota = NULL
WHERE TerritoryID=2;

 
select * from Sales.SalesPerson


BEGIN TRAN ML
UPDATE Sales.SalesPerson
SET Bonus = 3000, CommissionPct = .30, SalesQuota = NULL

ROLLBACK TRAN ML