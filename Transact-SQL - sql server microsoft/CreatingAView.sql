-- Creating a View

 
select top 1 * from production.product
select top 1 * from purchasing.productvendor


select p.productnumber, p.Name, p.Color,pv.MinOrderQty 'Min Order',pv.OnOrderQty 'On Order',pv.AverageLeadTime 'Avg Lead Time'
from production.product p
join purchasing.productvendor pv
on p.productid = pv.productid
order by p.name

-- Let's create a view based on the query
-- Note that we can't use ORDER BY in a view
CREATE VIEW vProductInfo
AS
select p.productnumber, p.Name, p.Color,pv.MinOrderQty 'Min Order',pv.OnOrderQty 'On Order',pv.AverageLeadTime 'Avg Lead Time'
from production.product p
join purchasing.productvendor pv
on p.productid = pv.productid

-- Now let's use the vProductInfo view
select * from vProductInfo

select * from vProductInfo
order by Name

select * from vProductInfo
order by 'Avg Lead Time'