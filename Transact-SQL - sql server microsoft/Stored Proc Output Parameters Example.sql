 
CREATE PROC OutPutParams
@fname varchar(40),
@numofrows int=0 OUTPUT  
as
select FirstName from Person.Person
where FirstName like @fname
set @numofrows=@@rowcount

  
Declare @retrows int
exec OutPutParams 'E%', @numofrows=@retrows OUTPUT;
select @retrows as 'Total of rows'
 