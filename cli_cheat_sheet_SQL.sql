/*
 SSSSSSSSS	 QQQQQQQQ 	L
S		Q	 Q	L
S		Q	 Q	L
 SSSSSSSS	Q	 Q	L
	 S	Q     Q  Q	L
	 S	Q	QQ	L
SSSSSSSSS	 QQQQQQQQ Q	LLLLLLLLL
*/


-------------------
-- MICROSOFT SQL --
-------------------

-- This is a single-line comment
/* This 
is
a 
multi line
comment
*/


-- Trace the path/process of your query 
SET SHOWPLAN_TEXT ON
SET SHOWPLAN_XML ON
SET SHOWPLAN_TEXT OFF
SET SHOWPLAN_XML OFF


-- Determine basic database and storage settings/info
sp_helpdb [my_database_name]

USE [my_database_name]
GO

EXECUTE sp_spaceused
GO

SELECT name, type_desc, size, growth, is_percent_growth
	FROM [my_database_name].sys.database_files;


-- View all transactions currently being processed
DBCC OPENTRAN

-- Determine the server instance for MS SQL
select @@servername + '\' + @@servicename
