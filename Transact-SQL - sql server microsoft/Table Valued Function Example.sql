
select top 1 * from person.person
select top 1 * from person.emailaddress
select top 1 * from humanresources.employee



CREATE FUNCTION dbo.fnGetEmail(@gender char(1))
RETURNS TABLE
AS
RETURN
	SELECT p.FirstName, p.Lastname,e.EmailAddress,em.Gender
	FROM person.person p
	JOIN person.EmailAddress e on p.BusinessEntityID=e.BusinessEntityID
	JOIN HumanResources.Employee em on e.BusinessEntityID=em.BusinessEntityID
	WHERE em.Gender=@gender

-- Let's use our TVF
SELECT * FROM dbo.fnGetEmail('m')


 SELECT * FROM dbo.fnGetEmail('m')
WHERE LastName LIKE 'D%'
