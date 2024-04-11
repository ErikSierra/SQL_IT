DECLARE @last_boot datetime
SET @last_boot = (SELECT [sqlserver_start_time] FROM sys.dm_os_sys_info)

SELECT
    @@SERVERNAME AS [ServerName],
    CONVERT(VARCHAR(30), @last_boot, 100) AS [last_boot_formatted],
    DATEDIFF(D, @last_boot, GETDATE()) AS days_since_last_boot

if object_id('tempdb..##Table_usage_data') is not null
drop table ##Table_usage_data

create table ##Table_usage_data (
    ID int identity (1,1),
    [database] varchar(255),
    [table_name] varchar(255),
    [last_user_seek] datetime,
    [last_user_scan] datetime,
    [last_update] datetime
)

declare @get_last_user_activity_timestamp varchar(max)
set @get_last_user_activity_timestamp = ''
select @get_last_user_activity_timestamp = @get_last_user_activity_timestamp +
'select db_name([database_id]), object_name([object_id]), max(last_user_seek), max(last_user_scan), max([last_user_update]) from sys.dm_db_index_usage_stats where db_name([database_id]) = ' + quotename('SQL_IT','''') 
   + ' and object_name([object_id]) IN ('+ quotename('DatabaseDescription','''') + ',' + quotename('Departments','''') + ',' + quotename('Managers','''') + ',' + quotename('Persons','''') + ',' + quotename('Roles','''') + ',' + quotename('TeamMembers','''') + ',' + quotename('Teams','''') + ')'
 + ' group by [database_id],[object_id];' + char(10)

insert into ##Table_usage_data (
    [database],
    [table_name],
    [last_user_seek],
    [last_user_scan],
    [last_update])
exec (@get_last_user_activity_timestamp)

SELECT
    [database],
    [table_name], -- modify 'table' to 'table_name'
    CONVERT(VARCHAR(30), last_user_scan, 100) AS last_user_scan_formatted,
    CONVERT(VARCHAR(30), last_user_seek, 100) AS last_user_seek_formatted,
    CONVERT(VARCHAR(30), last_update, 100) AS last_update_formatted
FROM
    ##Table_usage_data

SELECT * FROM DatabaseDescription;