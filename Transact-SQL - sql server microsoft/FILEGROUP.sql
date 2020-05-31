ALTER DATABASE MuhammedEssa
  ADD FILEGROUP MuhammedEssa_FG1 ;


  

SELECT name, type_desc
FROM sys.filegroups;



-- Add data files to file groups
ALTER DATABASE MuhammedEssa
ADD FILE (NAME = MuhammedEssa_1,FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MuhammedEssa_1.ndf')
TO FILEGROUP MuhammedEssa_FG1
 
-- Add data file to MuhammedEssa_FG1
ALTER DATABASE MuhammedEssa
ADD FILE (NAME = MuhammedEssa_2,FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\MuhammedEssa_2.ndf')
TO FILEGROUP MuhammedEssa_FG1
 
-- Verify files in file groups
USE MuhammedEssa
GO
sp_helpfile
 

 ALTER DATABASE MuhammedEssa
  MODIFY FILEGROUP MuhammedEssa_FG1 DEFAULT ;



 -- Create a table in the user-defined filegroup. USE MyDB;
CREATE TABLE MyTable
  ( cola int PRIMARY KEY,
    colb char(8) )
ON MuhammedEssa_FG1;