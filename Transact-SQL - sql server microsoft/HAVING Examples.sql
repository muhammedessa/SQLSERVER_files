 
select ProductID, SUM(LineTotal) 'Total'
from sales.salesorderdetail
group by ProductID
order by ProductID

 
select ProductID, SUM(LineTotal) 'Total'
from sales.salesorderdetail
where LineTotal > 5000
group by ProductID
order by ProductID

 
select ProductID, SUM(LineTotal) 'Total'
from sales.salesorderdetail
where LineTotal > 5000
group by ProductID
having SUM(LineTotal)>35000
order by 'Total'