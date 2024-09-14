Create Database Restaurant
Use Restaurant

Create Table Meals
(
Id int Primary Key Identity,
MealName varchar(20) not null
)

Create Table Orders
(
Id int Primary Key Identity,
MealId int Foreign Key References Meals(Id),
TableId int Foreign Key References [Tables](Id),
OrderTime datetime
)

Create Table [Tables]
(
Id int Primary Key Identity,
TableName varchar(20) not null
)

Alter Table Meals
Add Price int

Select * From Meals

Insert Into Meals Values
('Meal1',220),
('Meal2',170),
('Meal3',220),
('Meal4',340)

Insert Into [Tables] Values
('Table1'),('Table2'),('Table3'),('Table4')


Select * From [Tables]

Insert Into Orders Values
(1,3,'2024-05-22 5:55:00 PM'),
(2,3,'2024-05-22 1:15:00 PM'),
(3,4,'2024-05-22 5:50:00 PM'),
(4,1,'2024-05-22 12:55:00 PM'),
(1,2,'2024-05-22 12:55:00 PM'),
(2,2,'2024-05-22 10:27:00 PM'),
(3,2,'2024-05-22 11:35:00 PM'),
(4,3,'2024-05-22 12:23:00 PM')

Select * From Orders
Drop Table Orders

--1
SELECT  t.Id,  t.TableName, COUNT(o.TableId) AS OrderCount
FROM [Tables] t
JOIN Orders o ON t.Id = o.TableId
GROUP BY t.Id, t.TableName;

--2
SELECT  m.Id,  m.MealName, COUNT(o.MealId) AS OrderCount
FROM Meals m
JOIN Orders o ON m.Id = o.MealId
GROUP BY m.Id, m.MealName;

--3
Select o.*,m.MealName From Orders o
Join Meals m On m.Id=o.MealId

--4
Select o.*,m.MealName, t.TableName From Orders o
Join Meals m On m.Id=o.MealId
Join [Tables] t On t.Id=o.TableId

--5
Select t.*,
(Select Sum(m.Price) TotalPrice From Orders o
Join Meals m
On m.Id=o.MealId
Where t.Id=o.TableId)
From [Tables] t
Order By Id Desc

--6
SELECT DATEDIFF(hour, Min(OrderTime), Max(OrderTime)) AS DateDiff From [Tables] t
Join Orders o On t.Id=o.TableId
Where o.TableId=1

--7
Select * From Orders o
Where DateDiff(Minute , OrderTime, Getdate())<30

--8
Select * From [Tables] t
Where Not Exists (Select TableId From Orders o Where t.Id=o.TableId)

--9
Select * From [Tables] t
Where Not Exists (Select TableId From Orders o Where t.Id=o.TableId And DateDiff(Minute , OrderTime, Getdate())<60)

