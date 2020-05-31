
SELECT * FROM Person.Person

CREATE FUNCTION fnEmailPromo (@promo int)
RETURNS varchar(20)
AS
BEGIN
DECLARE @ret_promo varchar(20)
select @ret_promo=
	CASE
		WHEN @promo=0 then 'None'
		WHEN @promo=1 then 'Local'
		WHEN @promo=2 THEN 'National'
		ELSE 'Not designated'
	END
	RETURN @ret_promo
END

 
SELECT FirstName + ' ' + Lastname Customer, dbo.fnEmailPromo(EmailPromotion) 'Promotion Type'
FROM Person.Person
ORDER BY LastName, FirstName
