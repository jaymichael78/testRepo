

SELECT 
pr.name, 
pr.create_date, 
pr.modify_date,
ps.last_execution_time

--* 
FROM sys.procedures pr
LEFT JOIN sys.dm_exec_procedure_stats ps ON ps.object_id = pr.object_id
ORDER BY ps.last_execution_time ASC;