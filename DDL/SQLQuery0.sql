CREATE DATABASE PD_411_SQL
ON 
(
NAME        =  PD_411_SQL, --Логическое имя файла
FILENAME    = 'F:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\PD_411_SQL.mdf', --Физическое имя файла
SIZE        =  8MB,
MAXSIZE     =  500MB,
FILEGROWTH  =  5MB
)
LOG ON
(
NAME   = PD_411_SQL_Log,
FILENAME    = 'F:\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\Data\PD_411_SQL_log.ldf',
SIZE        =  8MB,
MAXSIZE     =  500MB,
FILEGROWTH  =  8MB
);
GO
