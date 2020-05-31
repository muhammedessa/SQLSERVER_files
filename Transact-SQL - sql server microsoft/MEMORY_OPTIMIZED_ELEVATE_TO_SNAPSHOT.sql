
SELECT d.compatibility_level 
FROM sys.databases as d
WHERE d.name = DB_NAME()

ALTER Database CURRENT
SET compatibility_level = 130

ALTER Database CURRENT
SET MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = ON