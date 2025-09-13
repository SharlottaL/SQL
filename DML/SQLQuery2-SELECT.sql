--SQLQuery2 - SELECT.sql
USE PD_321;
GO


--SELECT
--		direction_id	AS	N'Номер направления',
--		direction_name	AS	N'Название'
--FROM Directions;

--INSERT Groups
--		(group_id,group_name,direction)
--VALUES	(7,N'SU_411',2);

SELECT
		group_name		AS	N'Название группы',
		direction_name	AS	N'Направление обучения',
CASE 
        WHEN learning_days & 1 = 1 THEN 'Понедельник, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 2 = 2 THEN 'Вторник, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 4 = 4 THEN 'Среда, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 8 = 8 THEN 'Четверг, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 16 = 16 THEN 'Пятница, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 32 = 32 THEN 'Суббота, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 64 = 64 THEN 'Воскресенье, '
        ELSE ''
        END AS 'Учебные дни'
FROM	Groups,Directions
WHERE	direction		=	direction_id
AND		direction_name	LIKE(N'Сетевые технологии%')
AND     learning_days   = 21;
;


--SELECT
--		last_name + ' ' + first_name + ' ' + middle_name	AS N'Студент',
--		group_name		AS	N'Группа',
--		direction_name	AS	N'Направление обучения'
--FROM	Students,Groups,Directions
--WHERE	[group]		=	group_id
--AND		direction	=	direction_id
--;

--SELECT 
--	COUNT(stud_id)	AS	N'Количество студентов' 
	
--FROM Students;