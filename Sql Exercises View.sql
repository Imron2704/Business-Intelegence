Create Database [SQL Exercises with Solution - VIEW]

Go
Use [SQL Exercises with Solution - View]
Go



-- Exercise 1

Create Table Salesman(
salesman_id int,
name nvarchar(50),
city varchar(30),
commission float
)
Insert Into Salesman(salesman_id, name, city, commission) Values (5001, 'James Hoog','New York', 0.15)
Insert Into Salesman(salesman_id, name, city, commission) Values (5002, 'Nail Knite', 'Paris', 0.13)
Insert Into Salesman(salesman_id, name, city, commission) Values (5005, 'Pit Alex', 'London', 0.11)
Insert Into Salesman(salesman_id, name, city, commission) Values (5006, 'Mc Lyon', 'Paris', 0.14)
Insert Into Salesman(salesman_id, name, city, commission) Values (5007, 'Paul Adam', 'Rome', 0.13)
Insert Into Salesman(salesman_id, name, city, commission) Values (5003, 'Lauson Hen', 'San Jose', 0.12)

Create View ViewNewyorkStaff 
AS
Select * From Salesman Where city like 'New York'

Select * from ViewNewyorkStaff

-- Exercise 2

Create View ViewSalesOwn 
AS
Select salesman_id, name, city From Salesman

Select * from ViewSalesOwn

-- Exercise 3

Select * from ViewNewyorkStaff

-- Exercise 4

Create Table Customer(
customer_id int,
customer_name varchar(50),
city varchar(60),
grade int,
salesman_id int
)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3002, 'Nick Rimando', 'New York', 100, 5001)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3007, 'Brad Davis', 'New York', 200, 5001)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3005, 'Graham Zusi', 'California', 200, 5002)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3008, 'Julian Green', 'London', 300, 5002)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3004, 'Fabian Johnson', 'Paris', 300, 5002)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3009, 'Geoff Cameron', 'Berlin', 100, 5003)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3003, 'Jozy Altidor', 'Moscow', 200, 5007)
Insert Into Customer(customer_id, customer_name, city, grade, salesman_id) Values (3001, 'Brad Guzan', 'London', Null, 5005)

Create View ViewGradeCount 
AS
Select grade, count(salesman_id) as number From Customer group by grade

Select * from ViewGradeCount Where grade>2

-- Exercise 5

Create Table Orders(
ord_no int,
purchase_stuff real,
ord_date varchar(45),
customer_id int,
salesman_id int,
)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70001, 150.5, '2012-10-05',3005,5002)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70009, 270.65, '2012-09-10', 3001, 5005)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70002, 65.26, '2012-10-05', 3002, 5001)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70004, 110.5, '2012-08-17', 3009, 5003)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70007, 948.5, '2012-09-10', 3005, 5002)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70005, 2004.6, '2012-07-27', 3007, 5001)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70008, 5760, '2012-09-10', 3002, 5001)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70010, 1983.43, '2012-10-10', 3004, 5006)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70003, 2480.4, '2012-10-10', 3009, 5003)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70012, 250.45, '2012-06-27', 3008, 5002)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70011, 75.29, '2012-08-17', 3003, 5007)
Insert Into Orders(ord_no, purchase_stuff, ord_date, customer_id, salesman_id) Values (70013, 3045.6, '2012-04-25', 3002, 5001)

Create View ViewTotalForDay
As
Select count(distinct customer_id) as count, avg(purchase_stuff) as avg,sum(purchase_stuff) as sum,ord_date from Orders  group by ord_date

Select * from ViewTotalForDay

-- Exercise 6

Create View ViewNameOrders
As 
Select o.ord_no, o.purchase_stuff, o.salesman_id, s.name, c.customer_name from Orders o
inner join Customer c
on o.customer_id=c.customer_id
Left Join Salesman s
on o.salesman_id=s.salesman_id

Select * from ViewNameOrders Where name like 'Mc Lyon'

--

CREATE VIEW ViewNameOrders2
AS 
SELECT o.ord_no,o.purchase_stuff, o.salesman_id, s.name, c.customer_name From Orders o, Customer c, Salesman s WHERE o.customer_id = c.customer_id AND o.salesman_id = s.salesman_id

Select * from ViewNameOrders2 Where name like 'Mc Lyon'

-- Exercise 7

Create View ElitSalesman
As
Select o.ord_date, o.salesman_id, s.name from Orders o, Salesman s Where o.salesman_id=s.salesman_id and o.purchase_stuff in (Select max(purchase_stuff)from Orders b Where b.salesman_id=s.salesman_id)

Select * from ElitSalesman

-- Exercise 8
-- in question

Create Table Elitesalesman(
salesman_id int,
name nvarchar(50),
city varchar(30),
commission float
)
Insert Into Elitesalesman(salesman_id, name, city, commission) Values (5001, 'James Hoog','New York', 0.15)
Insert Into Elitesalesman(salesman_id, name, city, commission) Values (5002, 'Nail Knite', 'Paris', 0.13)
Insert Into Elitesalesman(salesman_id, name, city, commission) Values (5005, 'Pit Alex', 'London', 0.11)
Insert Into Elitesalesman(salesman_id, name, city, commission) Values (5006, 'Mc Lyon', 'Paris', 0.14)
Insert Into Elitesalesman(salesman_id, name, city, commission) Values (5007, 'Paul Adam', 'Rome', 0.13)
Insert Into Elitesalesman(salesman_id, name, city, commission) Values (5003, 'Lauson Hen', 'San Jose', 0.12)

Select * from Elitesalesman

Create View ViewIncentive
As
Select salesman_id,name from Elitesalesman a Where 3 <= (SELECT COUNT (*)FROM Elitesalesman b WHERE a.salesman_id = b.salesman_id)

Select * from ViewIncentive

-- Exercise 9

Create View ViewHighGrade
as
Select * from Customer Where grade=(Select max(grade) from Customer)

Select * from ViewHighGrade

sp_helptext ViewHighGrade

-- Exercise 10

Create View CityNumber
As
Select city, count(salesman_id) as numbers from Salesman group by city;

Select * from CityNumber

-- Exercise 11
-- in question 

Create View Norders
As
Select  name from Salesman s, Orders o Where salesman_id in (Select salesman_id, avg(purchase_stuff), sum(purchase_stuff) From Orders b Where s.salesman_id=b.salesman_id group by salesman_id)

Select * from ViewNOrders

-- Exercise 12
-- in question 

Create View ViewmCustomer
As
Select * from Customer c,Salesman s Where c.salesman_id<>s.salesman_id and c.salesman_id=s.salesman_id

-- Exercise 13
-- in question 

Create View ViewCityMatch
As
Select * from Customer

Select * from ViewCityMatch

-- Exercise 14
-- in question 

Create View ViewDateOrder
As
Select ord_date, sum(ord_no) from Orders Group by ord_date 

-- Exercise 15

Create View ViewSalesmanOnOct
AS
Select s.salesman_id,s.name,s.commission,s.city,o.ord_date from Salesman s, Orders o Where s.salesman_id=o.salesman_id and ord_date='2012-10-10'

Select * from ViewSalesmanOnOct

-- Exercise 16

Create View Viewsorder
As 
Select o.salesman_id, o.ord_no, o.customer_id from Orders o Where ord_date='2012-08-17' or ord_date='2012-10-10'

--

Create View Viewsorder2
As 
Select o.salesman_id, o.ord_no, o.customer_id from Orders o Where ord_date in ('2012-08-17','2012-10-10')

Select * from Viewsorder
Select * from Viewsorder2
