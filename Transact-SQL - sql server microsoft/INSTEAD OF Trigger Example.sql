 
CREATE TABLE dbo.PersonTable2
(
 FirstName varchar(15),
 LastName varchar(20),
 SSN char(11),
 State char(2)
)

 

CREATE TRIGGER my_trigger
ON dbo.PersonTable2
INSTEAD OF INSERT
AS
BEGIN
  PRINT 'INSTEAD OF trigger!'
  PRINT 'Not added to the table'
END



select * from dbo.PersonTable2

 
INSERT INTO dbo.PersonTable2
VALUES
('Muhammed','Essa','438-76-2362','IQ')
