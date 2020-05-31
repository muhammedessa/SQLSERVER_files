--Disk-Based Table
	CREATE TABLE [dbo].[ProductDiskBased]
	   (
	     ID INT NOT NULL PRIMARY KEY,
	     Code VARCHAR(10) NOT NULL ,
	     Description VARCHAR(200) NOT NULL ,
	     Price FLOAT NOT NULL
	);





ALTER DATABASE MuhammedEssa 
ADD FILEGROUP MuhammedEssaMOD_FG1 
CONTAINS MEMORY_OPTIMIZED_DATA  


ALTER DATABASE MuhammedEssa 
ADD FILE (name='MuhammedEssaMOD_FG1', filename='C:\data\MuhammedEssa_MOPTIMIZED_DATA_1') 
TO FILEGROUP MuhammedEssaMOD_FG1  



--Memory-Optimized Table 1
	CREATE TABLE [dbo].[ProductMemoryOptimized1]
	   (
	      ID INT NOT NULL PRIMARY KEY NONCLUSTERED ,
	      Code VARCHAR(10)   NOT NULL,
	      Description VARCHAR(200) NOT NULL,
	      Price FLOAT NOT NULL
	   )WITH (MEMORY_OPTIMIZED = ON);



--Memory-Optimized Table 1 / SCHEMA_ONLY
	CREATE TABLE [dbo].[ProductMemoryOptimized2]
	   (
	      ID INT NOT NULL PRIMARY KEY NONCLUSTERED ,
	      Code VARCHAR(10)   NOT NULL,
	      Description VARCHAR(200) NOT NULL,
	      Price FLOAT NOT NULL
	   )WITH (MEMORY_OPTIMIZED = ON,  DURABILITY = SCHEMA_ONLY);
	    
 

--Memory-Optimized Table: Durable / SCHEMA_AND_DATA
	CREATE TABLE [dbo].[ProductMemoryOptimized3]
	   (
	      ID INT NOT NULL PRIMARY KEY NONCLUSTERED ,
	      Code VARCHAR(10) NOT NULL,
	      Description VARCHAR(200) NOT NULL,
	      Price FLOAT NOT NULL
	   )WITH (MEMORY_OPTIMIZED = ON,  DURABILITY = SCHEMA_AND_DATA);




--Natively Compiled Stored Procedure for Product Table Update
	CREATE PROCEDURE [dbo].[spProductUpdate]
	    WITH NATIVE_COMPILATION, SCHEMABINDING,   EXECUTE AS OWNER
	AS
	   BEGIN ATOMIC WITH ( TRANSACTION ISOLATION LEVEL = SNAPSHOT,
	   LANGUAGE = N'us_english' )
	        UPDATE dbo.ProductMemoryOptimized1
	        SET Price = Price - ( Price * 0.10 );
	END;



INSERT INTO dbo.ProductMemoryOptimized1
(ID , Code, Description, Price)
VALUES 
(1 , '123', 'Ahmed Essa', 400.0),
(2, '456', 'Muhammed Essa', 200.0),
(3, '789', 'Osama Essa', 300.0),
(4 , '432', 'Ali Essa', 500.0),
(5 , '876', 'Hussain Osama', 600.0),
(6 , '543', 'Muhammed Ahmed', 700.0),
(7 , '123', 'Ahmed Essa', 400.0),
(8 , '456', 'Muhammed Essa', 200.0),
(9 , '789', 'Osama Essa', 300.0),
(10 , '432', 'Ali Essa', 500.0),
(11 , '876', 'Hussain Osama', 600.0),
(12 , '543', 'Muhammed Ahmed', 700.0),
(13 , '123', 'Ahmed Essa', 400.0),
(14 , '456', 'Muhammed Essa', 200.0),
(15 , '789', 'Osama Essa', 300.0),
(16 , '432', 'Ali Essa', 500.0),
(17 , '876', 'Hussain Osama', 600.0),
(18 , '543', 'Muhammed Ahmed', 700.0)







INSERT INTO dbo.ProductDiskBased
(ID , Code, Description, Price)
VALUES 
(1 , '123', 'Ahmed Essa', 400.0),
(2, '456', 'Muhammed Essa', 200.0),
(3, '789', 'Osama Essa', 300.0),
(4 , '432', 'Ali Essa', 500.0),
(5 , '876', 'Hussain Osama', 600.0),
(6 , '543', 'Muhammed Ahmed', 700.0),
(7 , '123', 'Ahmed Essa', 400.0),
(8 , '456', 'Muhammed Essa', 200.0),
(9 , '789', 'Osama Essa', 300.0),
(10 , '432', 'Ali Essa', 500.0),
(11 , '876', 'Hussain Osama', 600.0),
(12 , '543', 'Muhammed Ahmed', 700.0),
(13 , '123', 'Ahmed Essa', 400.0),
(14 , '456', 'Muhammed Essa', 200.0),
(15 , '789', 'Osama Essa', 300.0),
(16 , '432', 'Ali Essa', 500.0),
(17 , '876', 'Hussain Osama', 600.0),
(18 , '543', 'Muhammed Ahmed', 700.0)






SELECT * FROM dbo.ProductMemoryOptimized1



spProductUpdate










