--SQLQuery2 - SELECT.sql
USE PD_321;
GO


--SELECT
--		direction_id	AS	N'����� �����������',
--		direction_name	AS	N'��������'
--FROM Directions;

--INSERT Groups
--		(group_id,group_name,direction)
--VALUES	(7,N'SU_411',2);

SELECT
		group_name		AS	N'�������� ������',
		direction_name	AS	N'����������� ��������',
CASE 
        WHEN learning_days & 1 = 1 THEN '�����������, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 2 = 2 THEN '�������, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 4 = 4 THEN '�����, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 8 = 8 THEN '�������, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 16 = 16 THEN '�������, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 32 = 32 THEN '�������, '
        ELSE ''
    END +
    CASE 
        WHEN learning_days & 64 = 64 THEN '�����������, '
        ELSE ''
        END AS '������� ���'
FROM	Groups,Directions
WHERE	direction		=	direction_id
AND		direction_name	LIKE(N'������� ����������%')
AND     learning_days   = 21;
;


--SELECT
--		last_name + ' ' + first_name + ' ' + middle_name	AS N'�������',
--		group_name		AS	N'������',
--		direction_name	AS	N'����������� ��������'
--FROM	Students,Groups,Directions
--WHERE	[group]		=	group_id
--AND		direction	=	direction_id
--;

--SELECT 
--	COUNT(stud_id)	AS	N'���������� ���������' 
	
--FROM Students;