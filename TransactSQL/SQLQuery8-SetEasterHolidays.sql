USE PD_321;
GO
SET DATEFIRST 1;
GO

CREATE  PROCEDURE sp_SetEasterHolidays @year AS INT, @holiday_name NVARCHAR(150)
AS
BEGIN
  DECLARE @holiday  AS TINYINT =   (SELECT holiday_id  FROM Holidays WHERE holiday_name LIKE @holiday_name);
  DECLARE @duration AS TINYINT =   (SELECT duration    FROM Holidays WHERE holiday_id = @holiday);
  --DECLARE @day      AS TINYINT =   (SELECT start_day   FROM Holidays WHERE holiday_id = @holiday);
 -- DECLARE @month    AS TINYINT =   (SELECT start_month FROM Holidays WHERE holiday_id = @holiday);
 DECLARE @a AS TINYINT, @b AS TINYINT, @c AS TINYINT, @d AS TINYINT, @e AS TINYINT, @f AS TINYINT,
 @day AS TINYINT, @month AS TINYINT;

 SET @a = @year % 19;
 SET @b = @year % 4;
 SET @c = @year % 7;
 SET @d = (19 * @a + 15) % 30;
 SET @e = (2 * @b + 4 * @c + 6 * @d + 6) % 7;
 SET @f = @d + @e;
 SET @day = IIF(@f <= 26, 4 + @f, @f - 26);
 SET @month = IIF(@f <= 26, 4, 5);

  DECLARE @start_date AS DATE = DATEFROMPARTS(@year, @month, @day);
 -- SET     @start_date = DATEADD(DAY, 1-DATEPART(WEEKDAY, @start_date), @start_date);
  PRINT (@holiday);
  PRINT(@duration);
  PRINT(@start_date);
   IF EXISTS	(SELECT daysoff_id FROM DaysOFF WHERE holiday = @holiday AND [date] = @start_date)
	BEGIN
		RETURN;
	END
  DECLARE @date AS DATE = @start_date;
  WHILE @date < DATEADD(DAY,@duration, @start_date)
  BEGIN
  INSERT DaysOFF
  VALUES (@date, @holiday)
  SET @date = DATEADD(DAY, 1, @date);
  END
END