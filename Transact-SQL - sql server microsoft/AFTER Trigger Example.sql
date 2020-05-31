 
CREATE TABLE PersonTableTest
(
 FirstName varchar(15),
 LastName varchar(20),
 SSN varchar(11),
 State char(2)
)

 
INSERT INTO PersonTableTest
VALUES
('Muhammed','Essa','123456','KI'),    
('Ahmed','Osama','98765433','BG')

 
CREATE TRIGGER myTriggerPerson 
ON PersonTableTest
AFTER UPDATE
AS
BEGIN
PRINT  CONVERT(varchar(5),@@rowcount) + ' row(s) were updated.'
+ CHAR(13) + CHAR(13) + 'This rowcount Muhammed Essa...'
--ROLLBACK TRANSACTION
END


 
UPDATE PersonTableTest
SET FirstName='Essa'
WHERE FirstName='Muhammed'


select * from PersonTableTest



 
Alter TRIGGER trAfterTrigTest_upd
ON AfterTrigTest
AFTER UPDATE
AS
BEGIN
PRINT  CONVERT(varchar(5),@@rowcount) + ' row(s) were updated.'
PRINT   'Muhammed Essa.'
 ROLLBACK TRANSACTION
END


 
UPDATE PersonTableAfter
SET FirstName='Bob'
WHERE FirstName='Essa'


select * from PersonTableAfter


CREATE TRIGGER myTriggerPerson2 
ON PersonTableTest
AFTER UPDATE
AS
BEGIN
PRINT  CONVERT(varchar(5),@@rowcount) + ' row(s) were updated.'
+ CHAR(13) + CHAR(13) + 'This rowcount Muhammed Essa...'
ROLLBACK TRANSACTION
END

select * from PersonTableAfter