
-- Creating indexes
 
CREATE TABLE dbo.Atable_Table  
    (TestCol1 int NOT NULL,  
     TestCol2 nchar(10) NULL,  
     TestCol3 nvarchar(50) NULL);  


  
CREATE CLUSTERED INDEX CLUSTERED_INDEX_MUHAMMED   
    ON dbo.Atable_Table (TestCol1);   
 
  
CREATE NONCLUSTERED INDEX NONCLUSTERED_INDEX_MUHAMMED   
    ON dbo.Atable_Table (TestCol2); 

	 