 
 
--Create Customer Table
CREATE TABLE Customer 
( CustomerId INT IDENTITY (1, 1) NOT NULL ,
  FirstName NVARCHAR(50), LastName NVARCHAR(50))
 
--Add sample records
INSERT INTO dbo.Customer ( FirstName, LastName )
VALUES('Muhammed','Essa'),
      ('Ahmed','Osama')



CREATE TRIGGER INSERTEDAndDELETEDTableExample
ON Customer
FOR INSERT, UPDATE, DELETE
AS
BEGIN
     PRINT '**********DELETED Table***************'
     SELECT * FROM DELETED
     PRINT '*********INSERTED Table***************'
     SELECT * FROM INSERTED
END



INSERT INTO dbo.Customer ( FirstName, LastName )
VALUES('Ali','Samir')



SELECT * FROM dbo.Customer




UPDATE Customer
SET FirstName = 'Mr. ' + FirstName






DELETE FROM Customer WHERE CustomerId = 2










