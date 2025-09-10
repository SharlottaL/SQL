CREATE FUNCTION IsLearningDay
(
	@date			AS		DATE
)
RETURNS	BIT
AS
BEGIN
RETURN CASE
        WHEN MONTH(@date) = 1 AND DAY(@date) IN (1, 2, 7) THEN 1
        WHEN MONTH(@date) = 3 AND DAY(@date) = 8 THEN 1
        WHEN MONTH(@date) = 5 AND DAY(@date) IN (1, 9) THEN 1
        -- Добавьте другие праздники
        ELSE 0
       
	END;
 PRINT IIF(MONTH(@date) = 1 AND DAY(@date) IN (1, 2, 7), 0, 1);
END