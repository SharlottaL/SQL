SET DATEFIRST 1;
USE PD_321;
GO

--DELETE FROM Schedule;
EXEC sp_AddSchedule N'PD_411', N'%MS SQL Server%', N'Ковтун', '2025-08-18', '13:30';
EXEC sp_SelectSchedule;
PRINT(dbo.GetNextLearningDay(N'PD_411', NULL));
PRINT(N'---------------------------------');
-----------------------PD_411------------------------------------------------------
PRINT N'Группа:' + N'PD_411, ' + N'Дата:' + ' 2025-09-11 ' + N'День недели:' + (DATENAME(WEEKDAY, '2025-09-11'));
PRINT N'Учебный\Не учебный день: ' + IIF(dbo.IsLearningDay(N'PD_411', '2025-09-11') = 1, N'Учебный', N'Не учебный');
-----------------------PV_211------------------------------------------------------
--PRINT N'Группа:' + N'PV_211, ' + N'Дата:' + ' 2025-09-11 ' + N'День недели:' + (DATENAME(WEEKDAY, '2025-09-11'));
--PRINT N'Учебный\Не учебный день: ' + IIF(dbo.IsLearningDay(N'PV_211', '2025-09-11') = 1, N'Учебный', N'Не учебный');
PRINT(dbo.GetNextLearningDay(N'PD_411', '2025-09-15'));