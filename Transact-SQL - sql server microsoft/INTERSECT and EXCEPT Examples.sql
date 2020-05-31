 
select productid
from production.product
order by productid

select productid
from production.workorder

 
select productid
from production.product
INTERSECT
select productid
from production.workorder


 
select productid
from production.product
EXCEPT
select productid
from production.workorder
