USE AdventureWorks2012

SELECT * FROM Person.Person 
/*
fdsfsdfsdf
sdfsdfsdfsdf
sdfsdfsdfsdf
sdfsdfsdf

*/
SELECT --this is select statement
  LastName AS 'Last Name' ,  FirstName AS 'First Name'
FROM 
    Person.Person 
WHERE LastName = 'Adams' AND FirstName ='Isaac'


SELECT DISTINCT ProductID FROM Sales.SalesOrderDetail

SELECT firstname , lastname ,emailpromotion 
FROM Person.Person
ORDER BY firstname desc,lastname 


SELECT DISTINCT firstname +' '+ lastname +','+
CONVERT(varchar(5) ,EmailPromotion )    
FROM Person.Person  

SELECT DISTINCT CONCAT(firstname, ' ',  lastname , ' ' ,  EmailPromotion )    
FROM Person.Person  


SELECT  * 
FROM Person.Person  



SELECT  firstname 'First Name' , lastname 'Last Name'   
FROM Person.Person 
WHERE lastname LIKE '[adg]%'



SELECT  lastname 'Last Name' , firstname 'First Name'  
FROM Person.Person 
WHERE lastname IN ('Adams' , 'Jones' , 'Smith')
AND firstname LIKE '[d-f]%'




