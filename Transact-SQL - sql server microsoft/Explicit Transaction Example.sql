 
SELECT * INTO Person.PersonTest
FROM Person.Person

 
BEGIN TRAN TestTran
UPDATE Person.PersonTest
SET LastName='Essa'

 
select * from person.persontest
 
ROLLBACK TRAN TestTran
 

BEGIN TRAN TestTran

UPDATE person.persontest
SET LastName='Brown'
WHERE Lastname='Essa' and FirstName='Noah'

COMMIT TRAN TestTran

