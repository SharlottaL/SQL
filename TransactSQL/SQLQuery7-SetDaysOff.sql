USE PD_321;
SET DATEFIRST 1;
GO

ALTER PROCEDURE sp_SetDaysOff @year AS INT
AS
BEGIN
EXEC sp_SetNewYearHolidays @year, N'����������%';

SELECT 
 [����] = [date],
 [��������] = holiday_name
FROM DaysOFF 
JOIN Holidays ON(holiday=holiday_id)
END