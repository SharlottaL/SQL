USE PD_321;
GO

INSERT Students
		(last_name, first_name, middle_name,birth_date, [group])
VALUES
		(N'�������', N'������', N'����������', '2006-09-18', 5),
		(N'��������', N'�����', N'������������', '1987-09-16',5),
		(N'�������', N'��������', N'������������', '1987-09-05',5),
		(N'�������', N'������', N'����������', '1988-05-01',5),
		(N'��������', N'������', N'���������', '2000-04-11',5),
		(N'���������', N'�������', N'�������������', '2000-11-14',5),
		(N'�������', N'�����', N'���������', '2003-04-11',5)
		;
SELECT group_name AS N'������', COUNT ([group]) AS N'���������� ���������'
FROM Groups, Students WHERE group_id = [group] GROUP BY group_name;

SELECT direction_name AS N'�����������', COUNT(direction) AS N'���������� ���������'
FROM Students, Groups, Directions WHERE group_id = [group] AND direction = direction_id GROUP BY direction_name;

SELECT * FROM Students;