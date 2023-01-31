CREATE DATABASE [SQL Exercises, Practice, Solution - UNION]

Go 
Use [SQL Exercises, Practice, Solution - UNION]
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

Select salesman_id,name from Salesman Where city='London'
Union
Select customer_id,customer_name from Customer Where city='London'

-- Exercise 2

Select distinct salesman_id, city from Salesman
Union
Select distinct salesman_id, city from Customer

-- Exercise 3

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

Select salesman_id,customer_id from Customer
Union
Select salesman_id,customer_id from Orders

-- Exercise 4

SELECT a.salesman_id, name, ord_no, 'Highest', ord_date FROM salesman a, orders b WHERE a.salesman_id =b.salesman_id AND b.purchase_stuff=(SELECT MAX (purchase_stuff)FROM orders c WHERE c.ord_date = b.ord_date)
UNION
SELECT a.salesman_id, name, ord_no, 'Lowest', ord_date FROM salesman a, orders b WHERE a.salesman_id =b.salesman_id AND b.purchase_stuff=(SELECT MIN (purchase_stuff)FROM orders c WHERE c.ord_date = b.ord_date)

-- Exercise 5

SELECT a.salesman_id, name, ord_no, 'Highest', ord_date FROM salesman a, orders b WHERE a.salesman_id =b.salesman_id AND b.purchase_stuff=(SELECT MAX (purchase_stuff)FROM orders c WHERE c.ord_date = b.ord_date)
UNION
SELECT a.salesman_id, name, ord_no, 'Lowest', ord_date FROM salesman a, orders b WHERE a.salesman_id =b.salesman_id AND b.purchase_stuff=(SELECT MIN (purchase_stuff)FROM orders c WHERE c.ord_date = b.ord_date) ORDER BY 3

-- Exercise 6
-- in question

-- Exercise 7

Select c.salesman_id, s.name, c.city,'Matched' from Customer c, Salesman s Where c.city=s.city
Union 
Select c.salesman_id, s.name, c.city,'Not Matched' from Customer c, Salesman s Where c.city<>s.city

-- Exercise 8

Select customer_id, city, grade,'High Rating' from Customer Where grade >= 300 
Union 
Select customer_id, city, grade,'Low Rating' from Customer Where grade < 300

-- Exercise 9
-- in question
