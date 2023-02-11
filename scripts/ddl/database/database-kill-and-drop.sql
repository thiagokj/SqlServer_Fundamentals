-- Script interrompe a base de dados e faz a exclusão.
USE [master];

DECLARE @database VARCHAR(100) = 'Curso'; /*** ATENÇÃO, ALTERE O NOME DO BANCO DE DADOS AQUI ***/
DECLARE @sql NVARCHAR(50) = 'DROP DATABASE ' + @database;
DECLARE @kill VARCHAR(8000) = '';

SELECT @kill = 'kill ' + CONVERT(varchar(5), session_id)
FROM sys.dm_exec_sessions
WHERE database_id = DB_ID(@database);

EXEC(@kill);

EXEC sp_executesql @sql;