
-- Select all names with the last name of Adams
select Lastname + ', ' + Firstname
from person.person
where Lastname='Adams'


-- Select all last names that begin with A
select Lastname + ', ' + Firstname
from person.person
where Lastname like 'A%'


-- Select all names with 'ber' anywhere in the last name
select Lastname + ', ' + Firstname
from person.person
where Lastname like '%ber%'

-- Select all names with last names beginning with a, d, or g
select Lastname + ', ' + Firstname
from person.person
where Lastname LIKE '[adg]%'

-- Select all names with last names beginning with f, g, h, or i
select Lastname + ', ' + Firstname
from person.person
where Lastname LIKE '[f-i]%'

-- Select all names where last name is Adams, Jones, or Smith
-- and the first name begins with d, e, or f
select Lastname + ', ' + Firstname
from person.person
where Lastname IN ('Adams', 'Jones', 'Smith')
AND Firstname LIKE '[d-f]%'

