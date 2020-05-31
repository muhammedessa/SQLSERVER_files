-- Built-in Functions
 
select * from sales.salesorderdetail

 
select LineTotal 
from sales.SalesOrderDetail

 select AVG(LineTotal) 'Line Totals'
from sales.SalesOrderDetail


 
select AVG(LineTotal) 'Line Totals over 25000'
from sales.SalesOrderDetail
where LineTotal>25000

 
select count(LineTotal) '# Line Totals over 25000'
from sales.SalesOrderDetail
where LineTotal>25000


 
select max(LineTotal) 'Line Totals'
from sales.SalesOrderDetail
where LineTotal>25000

 
select min(LineTotal) 'Line Totals'
from sales.SalesOrderDetail
where LineTotal>25000

 
select avg(LineTotal) 'Line Totals'
from sales.SalesOrderDetail
where LineTotal>25000

 
select avg(LineTotal) 'Line Totals'
from sales.SalesOrderDetail