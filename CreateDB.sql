--�������� ��������
CREATE TABLE [Main substance]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Name] nvarchar(30) not null
)

--������
CREATE TABLE [Section]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Name] nvarchar(30) not null
)

--�������
CREATE TABLE [Disease]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Name] nvarchar(30) not null
)

--�������������
CREATE TABLE [Producer]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Name] nvarchar(100) not null
)

--���������
CREATE TABLE [Medicine]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Name] nvarchar(30) not null,
 [Annotation] nvarchar(100),
 [Price sale] int not null
	check ([Price sale] >= 0),
 [Price order] int not null
	check ([Price order] >= 0),
 [Main substence] int not null FOREIGN KEY REFERENCES [Main substance]
	ON UPDATE CASCADE,
 [Section] int not null FOREIGN KEY REFERENCES Section
	ON UPDATE CASCADE,
 [Producer] int not null FOREIGN KEY REFERENCES Producer
	ON UPDATE CASCADE,
)

--�����
CREATE TABLE [Product]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Quantity] int not null 
	check (Quantity >= 0),
 [Date death] date not null,
 [Medicine] int not null FOREIGN KEY REFERENCES Medicine
	ON UPDATE CASCADE,
)

--������
CREATE TABLE [Status]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Name] nvarchar(30) not null
	check ([Name] in 
	(N'���������', N'��������', N'��������', N'�� ���������'))
)

--�����
CREATE TABLE [Order]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Date] date not null,
 [Total price] int not null DEFAULT 0
	check ([Total price] >= 0),
 [Producer] int not null FOREIGN KEY REFERENCES Producer
	ON UPDATE CASCADE,
 [Status] int not null FOREIGN KEY REFERENCES [Status]
	ON UPDATE CASCADE,
)

--��������
CREATE TABLE [Seller]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Full name] nvarchar(100) not null
)

--����������
CREATE TABLE [Buyer]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Full name] nvarchar(100) not null
)

--�������
CREATE TABLE [Sale]
(
 [Id] int not null PRIMARY KEY IDENTITY(1,1),
 [Date] date not null,
 [Total price] int not null DEFAULT 0
	check ([Total price] >= 0),
 [Seller] int not null FOREIGN KEY REFERENCES Seller
	ON UPDATE CASCADE,
 [Buyer] int not null FOREIGN KEY REFERENCES Buyer
	ON UPDATE CASCADE,
)

--������ �������� � ���������
CREATE TABLE [Medicine_Disease]
(
 [Medicine] int not null FOREIGN KEY REFERENCES Medicine,
 [Disease] int not null FOREIGN KEY REFERENCES Disease,
 PRIMARY KEY (Medicine, Disease)
)

--������ ������� � ������
CREATE TABLE [Product_Order]
(
 [Product] int not null FOREIGN KEY REFERENCES [Product],
 [Order] int not null FOREIGN KEY REFERENCES [Order],
 [Quantity] int not null 
	check (Quantity > 0),
 PRIMARY KEY ([Product], [Order])
)

--������ ������� � �������
CREATE TABLE [Product_Sale]
(
 [Product] int not null FOREIGN KEY REFERENCES [Product],
 [Sale] int not null FOREIGN KEY REFERENCES Sale,
 [Quantity] int not null 
	check (Quantity > 0),
 PRIMARY KEY ([Product], Sale)
)