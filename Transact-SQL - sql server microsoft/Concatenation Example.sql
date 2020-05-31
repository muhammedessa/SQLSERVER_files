
-- Concatenation Example

select LastName, FirstName 
from person.person

-- Let's concatenate the Last and First names into one column
select distinct LastName + ', ' + FirstName AS Employee
from person.person
-- order by LastName, FirstName --Note this doesn't work...must use alias!
order by Employee


-- Now, let's concatenate a number with a name
-- This will fail due to the data type of EmailPromotion
select distinct FirstName + ' ' + LastName + ' : ' + EmailPromotion
from person.person

-- We can convert EmailPromotion to a string
select distinct FirstName + ' ' + LastName + ' : ' + CONVERT(varchar(5),EmailPromotion)
from person.person

-- We can also use CONCAT which will perform the conversion automatically
select CONCAT(FirstName,' ',LastName,' : ',EmailPromotion) Employee
from person.person
order by lastname, firstname
