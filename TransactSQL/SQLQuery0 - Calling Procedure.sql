SET DATEFIRST 1;
USE PD_321;
GO

--DELETE FROM Schedule;
EXEC sp_AddSchedule N'PD_411', N'%MS SQL Server%', N'������', '2025-08-18', '13:30';
EXEC sp_SelectSchedule;
PRINT(dbo.GetNextLearningDay(N'PD_411', NULL));
PRINT(N'---------------------------------');
-----------------------PD_411------------------------------------------------------
PRINT N'������:' + N'PD_411, ' + N'����:' + ' 2025-09-11 ' + N'���� ������:' + (DATENAME(WEEKDAY, '2025-09-11'));
PRINT N'�������\�� ������� ����: ' + IIF(dbo.IsLearningDay(N'PD_411', '2025-09-11') = 1, N'�������', N'�� �������');
-----------------------PV_211------------------------------------------------------
--PRINT N'������:' + N'PV_211, ' + N'����:' + ' 2025-09-11 ' + N'���� ������:' + (DATENAME(WEEKDAY, '2025-09-11'));
--PRINT N'�������\�� ������� ����: ' + IIF(dbo.IsLearningDay(N'PV_211', '2025-09-11') = 1, N'�������', N'�� �������');
PRINT(dbo.GetNextLearningDay(N'PD_411', '2025-09-15'));