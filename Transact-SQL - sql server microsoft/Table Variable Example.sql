
-- Table Variables 

 
DECLARE @MyTable as TABLE
(FirstName varchar(40),
 LastName varchar(40),
 Orders int,
 OrderTot int)
   
 Insert into @MyTable
 (FirstName,LastName,Orders,OrderTot)
    select p.FirstName, p.LastName, COUNT(*), SUM(SalesOrderHeader.TotalDue)
    from person.person p
    join
    sales.SalesOrderHeader  
    on
    p.BusinessEntityID=SalesOrderHeader.SalesPersonID
    group by Firstname, Lastname





 
 select * from @MyTable
 order by orders desc