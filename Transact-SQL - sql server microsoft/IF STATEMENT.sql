IF (1<1)
PRINT 'IF STATEMENT: CONDITION IS TRUE'
ELSE
PRINT 'ELSE STATEMENT: CONDITION IS FALSE'


IF (1=2)
PRINT 'IF STATEMENT: CONDITION IS TRUE'
ELSE
PRINT 'ELSE STATEMENT: CONDITION IS FALSE'



--IF...ELSE with the variable in Boolean Expression.
DECLARE @Course_ID varchar(23) = 'Sally'

IF (@Course_ID != 'Sally')
Select * from Students21 where StudentName = 'Sally'
ELSE
Select * from Students21 where English =  90
 




 DECLARE @Course_ID2 varchar(23) = 'Sally'

IF (@Course_ID2 != 'Muhammed')
Select * from Students where StudentName = 'Sally'
ELSE
Select * from Students where StudentName = 'Muhammed'


---IF...ELSE with Begin End
DECLARE @Course_ID3 INT = 2

IF (@Course_ID3 !=2)
	BEGIN
	Select * from Students where Id = 1
	Select * from Students where Id = 2
	END
ELSE
	BEGIN
	Select * from Students where Id = 3
	Select * from Students where Id = 4
	END

	Select * from Students


--	Nested IF…Else Statements

 DECLARE @age INT;
SET @age = 60;

IF @age < 18
   PRINT 'underage';
ELSE
BEGIN
   IF @age < 50
      PRINT 'You are below 50';
   ELSE
      PRINT 'Senior';
END;

