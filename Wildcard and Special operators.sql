Create Database [Wildcard and Special operators]

Use [Wildcard and Special operators]
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

Select * from Salesman

Select * from Salesman Where city='Paris' or city='Rome'

-- Exercise 2

Select * from Salesman Where city='Paris' or city='Rome'

-- Exercise 3

Select * from Salesman Where city!='Paris' and city!='Rome'

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

Select * from Customer

Select * from Customer Where customer_id = 3007 or customer_id = 3008 or customer_id = 3009

-- Exercise 5

Select * from Salesman

Select salesman_id, name, city, commission from Salesman Where commission>=0.12 and commission<=0.14


-- Exercise 6

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

Select * from Orders

Select * from Orders Where purchase_stuff between 500 and 4000 and not purchase_stuff in (948.50, 1983.43)

-- Exercise 7

SELECT * FROM salesman WHERE name BETWEEN 'A' and 'L';

SELECT * FROM salesman WHERE name BETWEEN 'A%' and 'L%';

-- Exercise 8

Select * from Salesman Where name not BETWEEN 'A%' and 'L%'

-- Exercise 9

Select * from Customer Where customer_name like 'B%'

-- Exercise 10

Select * from Customer Where customer_name like '%N'

-- Exercise 11

Select * from Salesman Where name like 'N__L%'

-- Exercise 12

Create Table TestTable(
col1 varchar(200),
)

Insert Into TestTable(col1) Values ('A001/DJ-402\44_/100/2015'), ('A001_\DJ-402\44_/100/2015'), ('A001_DJ-402-2014-2015'), ('A002_DJ-401-2014-2015'), ('A001/DJ_401'), ('A001/DJ_402\44'), ('A001/DJ_402\44\2015'), ('A001/DJ-402%45\2015/200'), ('A001/DJ_402\45\2015%100'), ('A001/DJ_402%45\2015/300'), ('A001/DJ-402\44')

Select * from TestTable Where col1 like '%*_%' escape '*'

-- Exercise 13

Select * from TestTable Where col1 not like '%*_%' escape '*'

-- Exercise 14

Select * from TestTable Where col1 like '%*/%' escape '*'

-- Exercise 15

Select * from TestTable Where col1 not like '%*/%' escape '*'

-- Exercise 16

Select * from TestTable Where col1 like '%*_/%' escape '*'

-- Exercise 17

Select * from TestTable Where col1 not like '%*_/%' escape '*'

-- Exercise 18

Select * from TestTable Where col1 like '%*%%' escape '*'

-- Exercise 19

Select * from TestTable Where col1 not like '%*%%' escape '*'

-- Exercise 20

Select * from Customer Where grade is null 

-- Exercise 21

Select * from Customer Where grade is not null

-- Exercise 22

Create Table Emp_Details(
emp_idno int,
emp_fname varchar(40),
emp_lname varchar(50),
emp_dept int

)

Select * from Emp_Details

Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (127323, 'Michale', 'Robbin', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (526689, 'Carlos', 'Snares', 63)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (843795, 'Enric', 'Dosio', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (328717, 'Jhon', 'Snares', 63)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (444527, 'Joseph', 'Dosni', 47)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (659831, 'Zanifer', 'Emily', 47)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (847674, 'Kuleswar', 'Sitaraman', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (748681, 'Henrey', 'Gabriel', 47)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (555935, 'Alex', 'Manuel', 57)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (539569, 'George', 'Mardy', 27)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (733843, 'Mario', 'Saule', 63)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (631548, 'Alan', 'Snappy', 27)
Insert Into Emp_Details(emp_idno, emp_fname, emp_lname, emp_dept) Values (839139, 'Maria', 'Foster', 57)

Select * from Emp_Details Where emp_lname like 'D%'