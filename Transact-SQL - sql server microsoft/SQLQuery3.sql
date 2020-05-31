--Altering 


CREATE TABLE indentitycolumnsexample3
(
 FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
PayGrade tinyint null 
)

SELECT * FROM indentitycolumnsexample3

INSERT INTO indentitycolumnsexample3
(FirstName , LastName , PayGrade)
VALUES
('Muhammed','Hameed', 33)

ALTER TABLE indentitycolumnsexample3
ADD HireDate date null

UPDATE indentitycolumnsexample3
SET HireDate = '08/03/2019' 
WHERE LastName = 'Hameed'



ALTER TABLE indentitycolumnsexample3
ADD HireDate date null

ALTER TABLE indentitycolumnsexample3
DROP COLUMN HireDate 