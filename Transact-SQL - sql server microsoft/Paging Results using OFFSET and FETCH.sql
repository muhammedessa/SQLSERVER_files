 
SELECT productid, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER BY Name  

 
SELECT productid, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER BY Name  
OFFSET 0 ROWS FETCH NEXT 6 ROWS ONLY;

 
SELECT productid, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER BY Name ASC
OFFSET 6 ROWS FETCH NEXT 6 ROWS ONLY;


 
SELECT productid, Name, ProductNumber, ListPrice
FROM Production.Product
ORDER BY Name ASC
OFFSET 12 ROWS FETCH NEXT 6 ROWS ONLY;





