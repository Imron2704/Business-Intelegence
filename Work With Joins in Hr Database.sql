Use [Joins On HR Database - Exercises]


-- Exercise 1

Create Table Departments(
id int,
name varchar(50),
manager_id int,
location_id int,
)
Insert into Departments Values (10, 'Administration', 200, 1700), (20, 'Marketing', 201, 1800), (30, 'Purchasing', 114, 1700), (40, 'Human Resources', 203, 2400), (50, 'Shipping', 121, 1500),(60, 'IT', 103, 1400),(70, 'Public Relations', 204, 2700),(80, 'Sales', 145, 2500),(90, 'Executive', 100, 1700),(100, 'Finance', 108, 1700),(110, 'Accounting', 205, 1700),(120, 'Treasury', 0, 1700),(130, 'Corporate Tax', 0, 1700),(140, 'Control And Credit', 0, 1700),(150, 'Shareholder Services', 0, 1700),(160, 'Benefits', 0, 1700),(170, 'Manufacturing', 0, 1700),(180, 'Construction', 0, 1700),(190, 'Contracting', 0, 1700),(200, 'Operations', 0, 1700),(210, 'IT Support', 0, 1700),(220, 'NOC', 0, 1700),(230, 'IT Helpdesk', 0, 1700),(240, 'Government Sales', 0, 1700),(250, 'Government Sales', 0, 1700),(260, 'Recruiting', 0, 1700),(270, 'Payroll', 0, 1700)

Select * from Departments

Create Table Employee(
id int,
first_name nchar(100),
last_name varchar(200),
email varchar(50),
phone_number varchar(50),
hire_date varchar(70),
job_id nvarchar(80),
salary real,
commission_pict float,
manager_id int,
department_id int
)

Select * from Employee

Insert into Employee Values (100, 'Steven', 'King', 'SKING', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 100, 90),(102, 'Lex', 'DE HAAN', 'LDEHAAN', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 100, 90),(103, 'Alexander', 'Hunold', 'AHUNOLD', '515.123.4567', '2003-06-17','AD_PRES', 9000.00, 0.00, 102, 60),(104, 'Bruce', 'Ernst', 'BERNST', '515.123.4567', '2003-06-17','AD_PRES', 6000.00, 0.00, 103, 60),(105, 'David', 'Austin', 'DAUSTIN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 103, 90),(106, 'Valli', 'Pataballa', 'VPATABAL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 103, 90),(107, 'Diana', 'Lorentz', 'DLORENTZ', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 103, 90),(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 101, 90),(109, 'Daniel', 'Faviet', 'DFAVIET', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 108, 90),(110, 'John', 'Chen', 'JCHEN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 108, 90),
(110, 'John', 'Chen', 'JCHEN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 108, 90),(111, 'ISMAEL', 'SCIARRA', 'ISCIARRA', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 108, 90),(112, 'JOSE MANUEL', 'URMAN', 'JMURMAN', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 108, 90),(113, 'Luis', 'Popp', 'LPOPP', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 114, 90),(115, 'Alexander', 'Khoo', 'AKHOO', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 114, 90),(116, 'Shelli', 'Baida', 'SBAIDA', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 114, 90),(117, 'Sigal', 'Tobias', 'STOBIAS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 114, 90),(118, 'Guy', 'Himuro', 'GHIMURO', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 114, 90),(119, 'Karen', 'Colmenares', 'KCOLMENA', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(120, 'Matthew', 'Weiss', 'MWEISS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),
(120, 'Mattew', 'Weiss', 'MWEISS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(121, 'ADAM', 'FRIPP', 'AFRIPP', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(122, 'PAYAM', 'KAUFLING', 'PKAUFLIN', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 120, 90),(123, 'Shanta', 'Vollman', 'SVOLLMAN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 120, 90),(124, 'Kevin', 'Mourgos', 'KMOURGOS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 120, 90),(125, 'Julia', 'Nayer', 'JNAYER', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 120, 90),(126, 'Irene', 'Mikkilineni', 'IMIKKILI', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),(127, 'James', 'Landry', 'JLANDRY', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),(128, 'Steven', 'Markle', 'SMARKLE', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),(129, 'Laura', 'Bissot', 'LBISSOT', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),(130, 'Mozhe', 'Atkinson', 'MATKINSO', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),
(130, 'Mozhe', 'Atkinson', 'MATKINSON', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(131, 'JAMES', 'MARLOW', 'JMARLOW', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(132, 'TJ', 'Olson', 'TJOLSON', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 100, 90),(133, 'Jason', 'MALLIN', 'JMALLIN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(134, 'Michael', 'Rogers', 'MROGERS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 145, 90),(135, 'Ki', 'Gee', 'KGEE', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 145, 90),(136, 'Hazel', 'Philtanker', 'HPHILTAN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 145, 90),(137, 'Renske', 'Ladwig', 'RLADWIG', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 145, 90),(138, 'Stephen', 'Stiles', 'SSTILES', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 145, 90),(139, 'John', 'Seo', 'JSEO', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 145, 90),(140, 'Joshua', 'Patel', 'JPATEL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 145, 90),
(140, 'Joshua', 'Patel', 'JPATEL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 146, 90),(141, 'TRENNA', 'RAJS', 'TRAJS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 146, 90),(142, 'Curtis', 'Davies', 'CDAVIES', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 146, 90),(143, 'Randall', 'Matos', 'RMATOS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 146, 90),(144, 'Peter', 'Vargas', 'PVARGAS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 146, 90),(145, 'John', 'Russell', 'JRUSSEL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 146, 90),(146, 'Karen', 'Partners', 'KPARTNER', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 147, 90),(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 147, 90),(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 147, 90),(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 147, 90),(150, 'Peter', 'Tucker', 'PTUCKER', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 147, 90),
(150, 'Peter', 'Tucker', 'PTUCKER', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 147, 90),(151, 'DAVID', 'BERNSTEIN', 'DBERNSTEIN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 148, 90),(152, 'Peter', 'Hall', 'PHALL', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 148, 90),(153, 'Christopher', 'Olsen', 'COLSEN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 148, 90),(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 148, 90),(155, 'Oliver', 'Tuvault', 'OTUVAULT', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 148, 90),(156, 'Janette', 'King', 'JKING', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 148, 90),(157, 'Patrick', 'Sully', 'PSULLY', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 149, 90),(158, 'Allan', 'McEwen', 'AMCEWEN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 149, 90),(159, 'Lindsey', 'Smith', 'LSMITH', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 149, 90),(160, 'Louise', 'Doran', 'LDORAN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 149, 90),
(160, 'Louise', 'Doran', 'LDORAN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 149, 90),(161, 'SARATH', 'SEWALL', 'SSEWALL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 149, 90),(162, 'Clara', 'Vishney', 'CVISHNEY', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 120, 90),(163, 'Danielle', 'Greene', 'DGREENE', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 120, 90),(164, 'Mattea', 'Marvins', 'MMARVINS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 120, 90),(165, 'David', 'Lee', 'DLEE', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 120, 90),(166, 'Sundar', 'Ande', 'SANDE', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 121, 90),(167, 'Amit', 'Banda', 'ABANDA', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 121, 90),(168, 'Lisa', 'Ozer', 'LOZER', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 121, 90),(169, 'Harrison', 'Bloom', 'HBLOOM', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 121, 90),(170, 'Tayler', 'Fox', 'TFOX', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 122, 90),
(170, 'Tayler', 'Fox', 'TFOX', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 122, 90),(171, 'WILLIAM', 'SMITH', 'WSMITH', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 122, 90),(172, 'Elizabeth', 'Bates', 'EBATES', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 122, 90),(173, 'Sundita', 'Kumar', 'SKUMAR', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 123, 90),(174, 'Ellen', 'Abel', 'EABEL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 123, 90),(175, 'Alyssa', 'Hutton', 'AHUTTON', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 123, 90),(176, 'Jonathon', 'Taylor', 'JTAYLOR', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 123, 90),(177, 'Jack', 'Livingston', 'JLIVINGS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),(178, 'Kimberely', 'Grant', 'KGRANT', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),(179, 'Charles', 'Johnson', 'CJOHNSON', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),(180, 'Winston', 'Taylor', 'WTAYLOR', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 124, 90),
(180, 'Winston', 'Taylor', 'WTAYLOR', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 101, 90),(181, 'JEAN', 'FLEAUR', 'JFLEAUR', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 100, 90),(182, 'Martha', 'Sullivan', 'MSULLIVA', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 201, 90),(183, 'Girard', 'Geoni', 'GGEONI', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 101, 90),(184, 'Nandita', 'Sarchand', 'NSARCHAN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 101, 90),(185, 'Alexis', 'Bull', 'ABULL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 101, 90),(186, 'Julia', 'Dellinger', 'JDELLING', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 205, 90),(187, 'Anthony', 'Cabrio', 'ACABRIO', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(188, 'Kelly', 'Chung', 'KCHUNG', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(189, 'Jennifer', 'Dilly', 'JDILLY', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(190, 'Timothy', 'Gates', 'TGATES', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),
(190, 'Timothy', 'Gates', 'TGATES', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(191, 'RANDALL', 'PERKINS', 'RPERKINS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(192, 'Sarah', 'Bell', 'SBELL', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 100, 90),(193, 'Britney', 'Everett', 'BEVERETT', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(194, 'Samuel', 'McCain', 'SMCCAIN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(195, 'Vance', 'Jones', 'VJONES', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(196, 'Alana', 'Walsh', 'AWALSH', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(197, 'Kevin', 'Feeney', 'KFEENEY', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(198, 'Donald', 'OConnell', 'DOCONNEL', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(199, 'Douglas', 'Grant', 'DGRANT', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(200, 'Jennifer', 'Whalen', 'JWALEN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(201, 'MICHAEL', 'HARTSTEIN', 'MHARTSTEIN', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(202, 'Pat', 'Fay', 'PFAY', '515.123.4568', '2005-09-21','AD_VP', 17000.00, 0.00, 100, 90),(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(204, 'Hermann', 'Baer', 'HBAER', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90),(206, 'William', 'Gietz', 'WGIETZ', '515.123.4567', '2003-06-17','AD_PRES', 24000.00, 0.00, 0, 90)

Select e.first_name, e.last_name,d.id,d.name from Employee e
inner join Departments d
on e.manager_id=d.manager_id

-- Exercise 2



-- Exercise 3



-- Exercise 4



-- Exercise 5



-- Exercise 6



-- Exercise 7



-- Exercise 8



-- Exercise 9



-- Exercise 10



-- Exercise 11



-- Exercise 12



-- Exercise 13



-- Exercise 14



-- Exercise 15



-- Exercise 16



-- Exercise 17



-- Exercise 18



-- Exercise 19



-- Exercise 20



-- Exercise 21



-- Exercise 22



-- Exercise 23



-- Exercise 24



-- Exercise 25



-- Exercise 26



-- Exercise 27


create proc usp_Even_Number @number int
as 
begin
	Select case When @number%2=0 then 'Even' else 'No' end as 
end

as 
if @number % 2 = 0
begin
	select 'Even' as IsEven
end
else






