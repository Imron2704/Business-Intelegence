Create Database [SQL-EXERCISES-PRACTICE-SOLUTION Joins]

Use [SQL-EXERCISES-PRACTICE-SOLUTION Joins]

-- Exercise 1

-- Created Tables

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
Select * from Customer

Select s.name,c.customer_name,s.city from Salesman s
Join Customer c
on s.city=c.city 

-- Exercise 2

Select * from Customer

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

Select o.ord_no, o.purchase_stuff, c.customer_name, c.city from Orders o
inner join Customer c
on c.customer_id = o.customer_id
Where o.purchase_stuff between 500 and 2000

-- Exercise 3

Select c.customer_name as "Customer Name", c.city, s.name as "Salesman Name", s.commission from Salesman s
inner join Customer c
on s.salesman_id=c.salesman_id

Select * from Salesman
Select * from Customer

-- Exercise 4 

Select c.customer_name, c.city, s.name, s.commission from Customer c
left join Salesman s
on s.salesman_id = c.salesman_id 
where s.commission > 0.12

-- Exercise 5 

Select c.customer_name, c.city, s.name,s.city, s.commission from Customer c
join Salesman s
on s.salesman_id = c.salesman_id
where commission > 0.12
and c.city != s.city

-- Exercise 6

Select o.ord_no, o.ord_date, o.purchase_stuff,c.customer_name,c.grade, s.name, s.commission from Orders o
join Customer c
on o.customer_id = c.customer_id
join Salesman s
on o.salesman_id = s.salesman_id

-- Exercise 7
/* in question */
Select * from Orders o
join Customer c
on o.customer_id = c.customer_id
join Salesman s
on o.salesman_id = s.salesman_id

-- Exercise 8

Select c.customer_name, c.city, c.grade,s.name, s.city from Customer c
inner join Salesman s
on s.salesman_id = c.salesman_id 
order by c.customer_id asc

-- Exercise 9

select c.customer_name, c.city, c.grade, s.name, s.city from Customer c
left join Salesman s
on s.salesman_id = c.salesman_id
where c.grade < 300
order by c.customer_id asc

-- Exercise 10

select c.customer_name, c.city, o.ord_no, o.ord_date, o.purchase_stuff from customer c
left outer join Orders o
on c.customer_id = o.customer_id
order by ord_date

-- Exercise 11

select c.customer_name,c.city, o.ord_no, o.ord_date, o.purchase_stuff, s.name, s.commission from customer c
left outer join Orders o
on c.customer_id = o.customer_id
left outer join Salesman s
on s.salesman_id = o.salesman_id

-- Exercise 12

select s.name from Salesman s
LEFT OUTER join Customer c
on s.salesman_id = c.salesman_id
order by c.salesman_id asc

-- Exercise 13

Select s.name,c.customer_name, c.city, c.grade , o.ord_no, o.ord_date, o.purchase_stuff from Salesman s
left join Customer c
on s.salesman_id = c.salesman_id
left join Orders o
on c.customer_id = o.customer_id

-- Exercise 14

select * from Salesman s
left outer join Customer c
on s.salesman_id = c.salesman_id
left outer join Orders o
on c.customer_id = o.customer_id
Where o.purchase_stuff > 2000 and grade is not null

-- Exercise 15

select * from Salesman s
left outer join Customer c
on s.salesman_id = c.salesman_id
left outer join Orders o
on c.customer_id = o.customer_id
Where o.purchase_stuff > 2000 and grade is not null

-- Exercise 16

Select c.customer_name, c.city, o.ord_no, o.ord_date, o.purchase_stuff from Customer c
full outer join Orders o 
on c.customer_id = o.customer_id
where c.grade is not null

-- Exercise 17

select * from salesman
select * from Customer

select s.name, c.customer_name from Salesman s
cross join Customer c

-- Exercise 18

select * from Salesman s
cross join Customer c
where s.city is not null

-- Exercise 19

select * from Salesman s
cross join Customer c
where s.city is not null and c.grade is not null

-- Exercise 20

select * from Salesman s
cross join Customer c
where s.city is not null and s.city != c.city and grade is not null

-- Exercise 21

Create Table Company_Mast(
comp_id int,
com_name varchar(45)
)

Insert Into Company_Mast Values (11,'Samsung'),(12,'iBall'),(13,'Epison'),(14,'Zebronics'),(15,'Asus'),(16,'Frontech')  

Select * from Company_Mast

Create Table Item_mast(
pro_id int,
pro_name varchar(50),
pro_price real,
pro_com int
)

Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (101, 'Mother Board', 3200.00, 15)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (102, 'Key Board', 450.00, 16)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (103, 'ZIP drive', 250.00, 14)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (104, 'Speaker', 550.00, 16)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (105, 'Monitor', 5000.00, 11)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (106, 'DVD drive', 900.00, 12)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (107, 'CD drive', 800.00, 12)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (108, 'Printer', 2600.00, 13)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (109, 'Refill cartridge', 350.00, 13)
Insert Into Item_mast(pro_id, pro_name, pro_price, pro_com) Values (110, 'Mouse', 250.00, 12)

Select * from Item_mast

Select * from Company_Mast com
inner join Item_mast item
on com.comp_id = item.pro_com


-- Exercise 22

Select item.pro_name, item.pro_price, com.com_name from Item_mast item
join  Company_Mast com
on item.pro_com = com.comp_id

-- Exercise 23

Select com.com_name, avg(item.pro_price) from Company_Mast com
inner join Item_mast item
on item.pro_com = com.comp_id
group by com.com_name

-- Exercise 24

Select com.com_name, avg(item.pro_price) from Company_Mast com
inner join Item_mast item
on item.pro_com = com.comp_id
group by com.com_name
having avg(item.pro_price) >= 350

-- Exercise 25

select com.com_name, item.pro_name, item.pro_price from Company_Mast com
left outer join Item_mast item
on item.pro_com = com.comp_id and item.pro_price = (select max(item.pro_price) from Item_mast item where item.pro_com = com.comp_id)
group by com.com_name, item.pro_name, item.pro_price

-- Exercise 26

Create Table Emp_Details(
emp_idno int,
emp_fname varchar(50),
emp_lname varchar(60),
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

Create Table Emp_Department(
dpt_code int,
dpt_name nchar(50),
dpt_allotment int
)

Insert into Emp_Department Values (57, 'IT', 65000), (63, 'Finance', 15000), (47, 'HR', 240000), (27, 'RD', 55000), (89, 'QC', 75000)

Select * from Emp_Department

Select emp_details.emp_idno, emp_details.emp_fname,emp_details.emp_lname, emp_details.emp_dept,emp_dempartment.dpt_name,emp_dempartment.dpt_allotment from Emp_Details emp_details
left join Emp_Department emp_dempartment
on emp_details.emp_dept = emp_dempartment.dpt_code

-- Exercise 27

Select emp_details.emp_fname as "First Name",emp_details.emp_lname as "Last Name",emp_dempartment.dpt_name as "Department Name",emp_dempartment.dpt_allotment as "Sanction Amount" from Emp_Details emp_details
inner join Emp_Department emp_dempartment
on emp_details.emp_dept = emp_dempartment.dpt_code

-- Exercise 28

Select emp_details.emp_fname as "First Name",emp_details.emp_lname as "Last Name",emp_dempartment.dpt_name as "Department Name",emp_dempartment.dpt_allotment as "Department's Budget" from Emp_Details emp_details
inner join Emp_Department emp_dempartment
on emp_details.emp_dept = emp_dempartment.dpt_code and emp_dempartment.dpt_allotment > 50000

-- Exercise 29

Select emp_department.dpt_name from Emp_Department emp_department
inner join Emp_Details emp_details
on emp_details.emp_dept = emp_department.dpt_code
group by emp_department.dpt_name
having count(emp_department.dpt_name) > 2

Select * from Emp_Department
Select * from Emp_Details



