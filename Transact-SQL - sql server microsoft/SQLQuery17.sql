PRINT '-- top 10 Active CPU Consuming Queries (aggregated)--'  


SELECT TOP 10 GETDATE() runtime, * 
FROM(SELECT query_stats.query_hash, 
SUM(query_stats.cpu_time) 'Total_Request_Cpu_Time_Ms', 
SUM(logical_reads) 'Total_Request_Logical_Reads', 
MIN(start_time) 'Earliest_Request_start_Time', COUNT(*) 
'Number_Of_Requests', SUBSTRING(REPLACE(REPLACE(MIN(query_stats.statement_text), 
CHAR(10), ' '), CHAR(13), ' '), 1, 256) AS "Statement_Text" 
FROM(SELECT req.*, SUBSTRING(ST.text, (req.statement_start_offset / 2)+1, 
((CASE statement_end_offset WHEN -1 THEN DATALENGTH(ST.text)ELSE 
req.statement_end_offset END-req.statement_start_offset)/ 2)+1) 
AS statement_text FROM sys.dm_exec_requests AS req 
CROSS APPLY sys.dm_exec_sql_text(req.sql_handle) AS ST ) AS 
query_stats GROUP BY query_hash) AS t ORDER BY Total_Request_Cpu_Time_Ms DESC;



PRINT '--top 10 Active CPU Consuming Queries by sessions--'; 
SELECT TOP 10 req.session_id, req.start_time, cpu_time 'cpu_time_ms', 
OBJECT_NAME(ST.objectid, ST.dbid) 'ObjectName', 
SUBSTRING(REPLACE(REPLACE(SUBSTRING(ST.text, (req.statement_start_offset / 2)+1, 
((CASE statement_end_offset WHEN -1 THEN DATALENGTH(ST.text)ELSE 
req.statement_end_offset END-req.statement_start_offset)/ 2)+1), 
CHAR(10), ' '), CHAR(13), ' '), 1, 512) AS statement_text 
FROM sys.dm_exec_requests AS req CROSS APPLY sys.dm_exec_sql_text(req.sql_handle) 
AS ST ORDER BY cpu_time DESC;  



-- Top 15 CPU consuming queries by query hash -- note that a query hash can have many query id if not parameterized or not parameterized properly -- it grabs a sample query text by min 
WITH AggregatedCPU AS (SELECT q.query_hash, SUM(count_executions * avg_cpu_time / 1000.0) AS total_cpu_millisec, SUM(count_executions * avg_cpu_time / 1000.0)/ SUM(count_executions) AS avg_cpu_millisec, MAX(rs.max_cpu_time / 1000.00) AS max_cpu_millisec, MAX(max_logical_io_reads) max_logical_reads, COUNT(DISTINCT p.plan_id) AS number_of_distinct_plans, COUNT(DISTINCT p.query_id) AS number_of_distinct_query_ids, SUM(CASE WHEN rs.execution_type_desc='Aborted' THEN count_executions ELSE 0 END) AS Aborted_Execution_Count, SUM(CASE WHEN rs.execution_type_desc='Regular' THEN count_executions ELSE 0 END) AS Regular_Execution_Count, SUM(CASE WHEN rs.execution_type_desc='Exception' THEN count_executions ELSE 0 END) AS Exception_Execution_Count, SUM(count_executions) AS total_executions, MIN(qt.query_sql_text) AS sampled_query_text FROM sys.query_store_query_text AS qt JOIN sys.query_store_query AS q ON qt.query_text_id=q.query_text_id JOIN sys.query_store_plan AS p ON q.query_id=p.query_id JOIN sys.query_store_runtime_stats AS rs ON rs.plan_id=p.plan_id JOIN sys.query_store_runtime_stats_interval AS rsi ON rsi.runtime_stats_interval_id=rs.runtime_stats_interval_id WHERE rs.execution_type_desc IN ('Regular', 'Aborted', 'Exception')AND rsi.start_time>=DATEADD(HOUR, -2, GETUTCDATE()) GROUP BY q.query_hash), OrderedCPU AS (SELECT query_hash, total_cpu_millisec, avg_cpu_millisec, max_cpu_millisec, max_logical_reads, number_of_distinct_plans, number_of_distinct_query_ids, total_executions, Aborted_Execution_Count, Regular_Execution_Count, Exception_Execution_Count, sampled_query_text, ROW_NUMBER() OVER (ORDER BY total_cpu_millisec DESC, query_hash ASC) AS RN FROM AggregatedCPU) SELECT OD.query_hash, OD.total_cpu_millisec, OD.avg_cpu_millisec, OD.max_cpu_millisec, OD.max_logical_reads, OD.number_of_distinct_plans, OD.number_of_distinct_query_ids, OD.total_executions, OD.Aborted_Execution_Count, OD.Regular_Execution_Count, OD.Exception_Execution_Count, OD.sampled_query_text, OD.RN FROM OrderedCPU AS OD WHERE OD.RN<=15 ORDER BY total_cpu_millisec DESC;
