
-- ALTERING TABLES


-- Let's create a test table
CREATE TABLE TestTable
(
 FirstName varchar(25) NOT NULL,
 LastName varchar(25) NOT NULL,
 PayGrade smallint
 )

 SELECT * FROM TestTable


 -- Insert a row into the TestTable
 INSERT INTO TestTable
 VALUES
 ('Mark','Long',23)

 -- Use ALTER TABLE to add a new column named HireDate
 ALTER TABLE TestTable
 ADD HireDate date NULL

 -- Add data to the new column
 UPDATE TestTable
 SET HireDate='5/15/08'
 WHERE LastName='Long'

 -- Use ALTER TABLE to remove the HireDate column
 ALTER TABLE TestTable
 DROP COLUMN HireDate
