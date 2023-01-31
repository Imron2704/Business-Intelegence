Create Database  [SQL Exercises, Practice, Solution - SUBQUERIES]

Use [SQL Exercises, Practice, Solution - SUBQUERIES]

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

Select ord_no, purchase_stuff,ord_date,customer_id,salesman_id from Orders Where salesman_id=(Select salesman_id from Salesman Where name='Paul Adam')

-- Exercise 2
Select * from Salesman
Select ord_no, purchase_stuff,ord_date,customer_id,salesman_id from Orders Where salesman_id=(Select salesman_id from Salesman Where city='London')

-- Exercise 3

Select ord_no, purchase_stuff,ord_date,customer_id,salesman_id from Orders Where salesman_id=(Select salesman_id from Orders Where customer_id=3007)

-- Exercise 4

Select ord_no, purchase_stuff,ord_date,customer_id,salesman_id from Orders Where purchase_stuff>(Select avg(purchase_stuff) from Orders Where ord_date='2012-10-10')

-- Exercise 5

Select o.ord_no, o.purchase_stuff,o.ord_date,o.customer_id,o.salesman_id from Orders o Where salesman_id in (Select salesman_id from Salesman s Where city='New York')

-- Exercise 6

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

Select S.commission from Salesman s Where salesman_id in (Select salesman_id from Customer Where city='Paris')

-- Exercise 7 
-- ! in question 

Select * from Customer Where customer_id in (Select salesman_id from Salesman Where name='Mc Lyon' and salesman_id<2001)

-- Exercise 8

Select count(customer_id),grade from Customer group by grade having grade > (select AVG(grade) from Customer Where city='New York')

-- Exercise 9

Select  ord_no, purchase_stuff, ord_date, salesman_id from Orders Where salesman_id in (Select salesman_id from Salesman Where commission=(Select max(commission) from Salesman))

-- Exercise 10

Select o.ord_no, o.purchase_stuff, o.ord_date, o.salesman_id, c.customer_name from Customer c, Orders o Where o.customer_id=c.customer_id and o.ord_date='2012-08-17'

-- Exercise 11

Select * from Salesman A Where (Select count(*) from Customer C where C.salesman_id=A.salesman_id) > 1

-- Exercise 12

Select ord_no, purchase_stuff, ord_date, customer_id, salesman_id from Orders A Where purchase_stuff > (Select AVG(purchase_stuff) from Orders B Where A.customer_id=B.customer_id)

-- Exercise 13

Select ord_no, purchase_stuff, ord_date, customer_id, salesman_id from Orders A Where purchase_stuff >= (Select AVG(purchase_stuff) from Orders B Where A.customer_id=B.customer_id)

-- Exercise 14
-- in question

Select sum(purchase_stuff) from Orders Where purchase_stuff not in (Select ord_date from Orders Where Orders.customer_id=Orders.customer_id)

-- Exercise 15

Select * from Customer c Where exists (Select * from Customer b Where city='London')

-- Exercise 16
-- in question

Select salesman_id,name,city,commission from Salesman A Where salesman_id in (Select salesman_id from Customer B Where A.salesman_id=B.salesman_id)

-- Exercise 17
-- in question

Select salesman_id,name,city,commission from Salesman A Where salesman_id in (Select salesman_id from Customer B Where A.salesman_id=B.salesman_id)

-- Exercise 18
-- in question

Select salesman_id, name, city, commission from Salesman

-- Exercise 19
-- in question

Select salesman_id, name, city, commission from Salesman

-- Exercise 20

Select salesman_id,name,city,commission from Salesman Where city = any (Select city from Customer)

-- Exercise 21

Select salesman_id, name, city, commission from Salesman S Where exists (Select * from Customer C Where S.name < C.customer_name)

-- Exercise 22

Select * from Customer  Where grade> any (Select grade from Customer  Where city<'New York')

-- Exercise 23
-- in question

Select ord_no, purchase_stuff, ord_date, customer_id,salesman_id from Orders Where ord_no > (Select ord_date from Orders Where ord_date='2012-09-10')

-- Exercise 24
-- in question

Select ord_no, purchase_stuff, ord_date, customer_id,salesman_id from Orders

-- Exercise 25
-- in question

Select ord_no, purchase_stuff, ord_date, customer_id,salesman_id from Orders


-- Exercise 26

Select customer_id, customer_name, city, grade,salesman_id from Customer Where grade > all(Select grade from Customer Where city='New York')

-- Exercise 27
-- in question


-- Exercise 28
-- in question

Select customer_id, customer_name, city, grade,salesman_id from Customer Where grade not in (Select grade from Customer Where city='London')

-- Exercise 29

Select customer_id, customer_name, city, grade,salesman_id from Customer Where grade not in (Select grade from Customer Where city='Paris')

-- Exercise 30

Select customer_id, customer_name,city, grade,salesman_id from Customer Where not grade = any  (Select grade from Customer Where city='Dallas')

-- Exercise 31

Create Table Item_mast(
pro_id int,
pro_name varchar(50),
pro_price real,
pro_com int,
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

Create Table Company_Mast(
comp_id int,
com_name varchar(45)
)
Insert Into Company_Mast Values (11,'Samsung'),(12,'iBall'),(13,'Epison'),(14,'Zebronics'),(15,'Asus'),(16,'Frontech')  

Select com_name as company_name,(Select avg(pro_price) from Item_mast Where pro_com=comp_id) as average_prices from Company_Mast

-- Exercise 32

Select com_name,(Select avg(pro_price) from Item_mast Where pro_com=comp_id having avg(pro_price) >= 350)as average_price from Company_Mast
-- Exercise 33

Select c.com_name, i.pro_price, i.pro_name from Company_Mast c, Item_mast i Where c.comp_id=i.pro_com and i.pro_price = (Select max(i.pro_price) from Item_mast i Where c.comp_id=i.pro_com)

-- Exercise 34

Create Table Emp_Details(
emp_idno int,
emp_fname varchar(40),
emp_lname varchar(50),
emp_dept int
)
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

Select emp_idno, emp_fname, emp_lname,emp_dept from Emp_Details Where emp_idno in (Select emp_idno from Emp_Details Where emp_lname='Gabriel' or emp_lname='Dosio')

-- Exercise 35

Create Table Emp_Department(
dpt_code int,
dpt_name nchar(50),
dpt_allotment int
)

Insert into Emp_Department Values (57, 'IT', 65000), (63, 'Finance', 15000), (47, 'HR', 240000), (27, 'RD', 55000), (89, 'QC', 75000)

select *
from emp_details
where emp_dept in (89, 63);

-- Exercise 36

Select emp_fname,emp_lname from Emp_Details Where emp_dept in (Select dpt_code from Emp_Department Where dpt_allotment > 50000)

-- Exercise 37

Select dpt_code, dpt_name,dpt_allotment from Emp_Department Where dpt_allotment > (Select avg(dpt_allotment) from Emp_Department )

-- Exercise 38

Select dpt_name from Emp_Department Where dpt_code in (Select emp_dept from Emp_Details Group by emp_dept Having count(emp_dept) > 2)

-- Exercise 39
select emp_fname, emp_lname
from emp_details
where emp_dept in (select dpt_code from (select dpt_code, rank() over (order by dpt_allotment asc) rank from emp_department) as second_lowest where rank = 2)