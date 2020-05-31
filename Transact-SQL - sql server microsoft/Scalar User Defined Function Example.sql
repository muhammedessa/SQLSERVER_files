 
SELECT * FROM Person.Person
 
CREATE FUNCTION EmailPromotion (@epromo int)
RETURNS varchar(20)
AS
BEGIN
DECLARE @ret_promo varchar(20)
select @ret_promo=
	CASE 
		WHEN @epromo=0 then 'Done'
		WHEN @epromo=1 then 'waiting for one day'
		WHEN @epromo=2 THEN 'waiting for two day'
		ELSE 'Under review'
	END
	RETURN @ret_promo
END
 
SELECT FirstName , Lastname  , dbo.EmailPromotion(EmailPromotion) 'Status'
FROM Person.Person

