-- TVF 
 
select top 1 * from person.person
select top 1 * from person.emailaddress
select top 1 * from humanresources.employee
 



CREATE FUNCTION dbo.GetEmployeesInfo(@gender char(1))
RETURNS TABLE
AS  
RETURN
	SELECT p.FirstName, p.Lastname,em.EmailAddress,hr.Gender
	FROM person.person p
	JOIN person.EmailAddress em   on p.BusinessEntityID=em.BusinessEntityID
	JOIN HumanResources.Employee hr  on em.BusinessEntityID=hr.BusinessEntityID
	WHERE hr.Gender=@gender




 
SELECT * FROM dbo.GetEmployeesInfo('m')


 
SELECT * FROM dbo.GetEmployeesInfo('f')
WHERE LastName LIKE 'G%'




