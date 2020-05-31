
select *
from Production.Product

 
select ProductID, Name, Availability=
  CASE DaysToManufacture
	WHEN '0' THEN 'Done'
	WHEN '1' THEN 'Wait for 1 day'
	WHEN '2' THEN 'waiting 2 days'
	WHEN '3' THEN 'waiting 3 days'
	Else 'under review'
  END
from Production.Product


 
select ProductID, Name, Availability=
  CASE 
	WHEN DaysToManufacture = '0' THEN 'Done'
	WHEN DaysToManufacture >0 AND DaysToManufacture < '4' THEN 'waiting 4 Days'
	WHEN DaysToManufacture = '4' THEN 'More than 4 days Days'
	ELSE 'Under review'
  END
from Production.Product
