
-- Orders the results by LastName only
select distinct LastName, FirstName, EmailPromotion 
from Person.person
order by LastName 

-- Orders the results by LastName, then FirstName
select distinct LastName, FirstName, EmailPromotion 
from Person.person
order by LastName,FirstName

-- Orders the results by LastName in descending order (Z-A), then FirstName
select distinct LastName, FirstName, EmailPromotion 
from Person.person
order by LastName DESC,FirstName

-- Orders the results by EmailPromotion
select distinct LastName, FirstName, EmailPromotion 
from Person.person
order by EmailPromotion ASC