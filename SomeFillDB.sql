--�������� ��������
INSERT INTO [Main substance]
	VALUES
	(N'�����������'),
	(N'���������'),
	(N'����������'),
	(N'���������'),
	(N'������'),
	(N'����������'),
	(N'�����������'),
	(N'������������'),
	(N'���������'),
	(N'�������������� �����')

--������
INSERT INTO [Section]
	VALUES
	(N'��������������'),
	(N'��������������'),
	(N'���������������������'),
	(N'��������������'),
	(N'�������������������'),
	(N'������������������'),
	(N'�� ����������')

--�������
INSERT INTO [Disease]
	VALUES
	(N'������ ����'),
	(N'����'),
	(N'�����������'),
	(N'���������� ���������'),
	(N'������'),
	(N'���������'),
	(N'�������� ����'),
	(N'��������'),
	(N'����������')

--�������������
INSERT INTO [Producer]
	VALUES
	(N'�-����'),
	(N'�������'),
	(N'������������'),
	(N'AstraZeneca')

--���������
INSERT INTO [Medicine]
	VALUES
	(N'���������', N'��������� �������������� ���������', 
	200, 150, 1, 1, 1),
	(N'�������', N'������� ��������� �������������� � ��������������', 
	250, 200, 1, 2, 3),
	(N'�����������', N'����������� � ��������� �� ����', 
	100, 50, 1, 1, 1),
	(N'�������', N'��������� �������������� �������', 
	200, 150, 2, 2, 2),
	(N'��������', N'�������� ��������� ���������������������', 
	300, 250, 3, 3, 1),
	(N'��������', N'������������������� ���������', 
	300, 250, 6, 5, 4),
	(N'������', N'�������������� ������', 
	250, 200, 4, 4, 3),
	(N'������', N'������ � ��������� �� ������� � ���������', 
	100, 50, 5, 4, 2),
	(N'��������', N'�������� �������� �� ���������', 
	200, 150, 4, 4, 1),
	(N'������������', N'������������ � ��������� �� ��������', 
	100, 50, 8, 6, 1),
	(N'�����', N'����� �������� �� ��������', 
	150, 100, 7, 6, 2),
	(N'���������', N'��������� ������������������ ��������� �� ����������', 
	300, 250, 7, 6, 3),
	(N'��-���', N'��-��� �� ���������� ��������', 
	150, 100, 7, 7, 1),
	(N'�����', N'�����, ������� ������� � ���', 
	200, 150, 9, 7, 3),
	(N'�������������� �����', N'�������������� ����� �� ����������', 
	50, 20, 10, 7, 3),
	(N'���������', N'��������� � ��������� �� ����������', 
	100, 50, 9, 7, 4)

--�����
INSERT INTO [Product]
	VALUES
	(25, convert(date, '2024-12-03'), 1),
	(70, convert(date, '2025-03-05'), 3),
	(50, convert(date, '2025-02-18'), 4),
	(100, convert(date, '2025-08-10'), 7),
	(20, convert(date, '2024-12-15'), 9),
	(200, convert(date, '2026-12-12'), 15),
	(50, convert(date, '2025-03-04'), 13),
	(45, convert(date, '2024-12-15'), 11),
	(60, convert(date, '2025-05-12'), 12),
	(70, convert(date, '2025-07-16'), 6)

--������
INSERT INTO [Status]
	VALUES
	(N'�� ���������'),
	(N'��������'), 
	(N'��������'), 
	(N'���������')

--�����
INSERT INTO [Order]
	VALUES
	(convert(date, '2024-11-02'), default,  3, 3),
	(convert(date, '2024-10-15'), default,  2, 3),
	(convert(date, '2024-11-04'), default,  1, 4)

--��������
INSERT INTO [Seller]
	VALUES
	(N'������� ��������� ��������������'),
	(N'��������� ������ ���������')

--����������
INSERT INTO [Buyer]
	VALUES
	(N'�������� �������� �������'),
	(N'�������� ��������� ���������'),
	(N'������ ������� ������������'),
	(N'�������� ������ �����')

--�������
INSERT INTO [Sale]
	VALUES
	(convert(date, '2024-09-11'), default,  1, 3),
	(convert(date, '2024-10-11'), default,  2, 1),
	(convert(date, '2024-10-17'), default,  2, 2),
	(convert(date, '2024-02-15'), default,  1, 4)

--������ �������� � ���������
INSERT INTO [Medicine_Disease]
	VALUES
	(1,1),
	(1,2),
	(2,3),
	(3,1),
	(4,3),
	(5,4),
	(6,7),
	(7,5),
	(7,6),
	(8,5),
	(9,5),
	(9,6),
	(10,8),
	(11,8),
	(12,8),
	(13,9),
	(14,9),
	(15,9),
	(16,9)

--������ ������� � ������
INSERT INTO [Product_Order]
	VALUES
	(4,1,10),
	(7,3,6),
	(10,2,60)

--������ ������� � �������
INSERT INTO [Product_Sale]
	VALUES
	(3,1,2),
	(6,4,2),
	(8,3,4),
	(10,2,3)