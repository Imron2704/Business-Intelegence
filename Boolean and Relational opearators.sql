Create Database [Boolean and Relational operators]

Use [Boolean and Relational operators]
Go

-- Exercise 1

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

Select * from Customer Where grade>100

-- Exercise 2

Select * from Customer Where city like 'New York' and grade > 100

-- Exercise 3

Select * from Customer Where city='New York' and grade > 100

-- Exercise 4

Select * from Customer Where city like 'New York' or not grade > 100

-- Exercise 5

Select * from Customer Where not city like 'New York' and not grade>100

-- Exercise 6

Create Table Orders(
ord_no int,
purchase_stuff real,
ord_date varchar(45),
customer_id int,
salesman_id int,
)

Select * from Orders

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

Select * from Orders Where not ((ord_date = '2012-09-10'and salesman_id > 5005) or purchase_stuff > 1000.00)

Select * from Orders

-- Exercise 7

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

Select * From Salesman

Select salesman_id, name, city, commission from Salesman Where commission between 0.10 and 0.12

-- Exercise 8

Select * from Orders Where purchase_stuff < 200 or not (ord_date >= '2012-02-10' and customer_id<3009)

-- Exercise 9

Select * from Orders Where not ((ord_date = '2012-08-17' or customer_id> 3005) and purchase_stuff<1000.00)

-- Exercise 10

SELECT ord_no,purchase_stuff, (100 * purchase_stuff) / 6000 AS "Achieved %", (100 * (6000-purchase_stuff) / 6000) AS "Unachieved %" FROM  orders WHERE (100*purchase_stuff)/6000>50

-- Exercise 11

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

Select * from Emp_Details where emp_lname='Dosni' or emp_lname='Mardy'

-- Exercise 12

Select * from Emp_Details Where emp_dept=47 or emp_dept=63
