--   BETWEEN 

SELECT
      e.FirstName, e.LastName, ep.Rate 
FROM 
      HumanResources.vEmployee e JOIN HumanResources.EmployeePayHistory ep 
ON 
      e.BusinessEntityID = ep.BusinessEntityID 

WHERE ep.Rate > 27 AND ep.Rate < 30 

ORDER BY ep.Rate; 

 

--   BETWEEN & NOT BETWEEN

SELECT BusinessEntityID, RateChangeDate 
FROM HumanResources.EmployeePayHistory 
WHERE RateChangeDate BETWEEN '20011212' AND '20020105'; 



 

SELECT 
e.FirstName, e.LastName, ep.Rate 
FROM 
HumanResources.vEmployee e JOIN HumanResources.EmployeePayHistory ep 
ON e.BusinessEntityID = ep.BusinessEntityID 

WHERE ep.Rate NOT BETWEEN 27 AND 30 ORDER BY ep.Rate; 






-- IF  ELSE

 
   IF (SELECT MAX(ListPrice) FROM Production.Product) > $200  
     SELECT MAX(ListPrice) FROM Production.Product
   ELSE  
     SELECT MIN(ListPrice) FROM Production.Product
  







WHILE (SELECT AVG(ListPrice) FROM Production.Product) < $38626.16  
BEGIN  
   UPDATE Production.Product  
      SET ListPrice = ListPrice * 2  
   SELECT MAX(ListPrice) FROM Production.Product  
   IF (SELECT MAX(ListPrice) FROM Production.Product)> $200  
      BREAK  
   ELSE  
      CONTINUE  
END  
PRINT 'Too much for the market to Milk'; 



