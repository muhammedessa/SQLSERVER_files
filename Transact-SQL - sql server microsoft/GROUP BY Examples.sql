 
select * from 
sales.SalesOrderDetail

 
select productid, unitprice
from sales.SalesOrderDetail
order by productid

 
select productid, sum(unitprice)
from sales.SalesOrderDetail

 
select productid, sum(unitprice) 'Total per ID'
from sales.SalesOrderDetail
GROUP BY productid
ORDER BY 'Total per ID'
