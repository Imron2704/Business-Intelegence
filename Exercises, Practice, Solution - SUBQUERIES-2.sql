-- Exercise 1
create table departments(DEPARTMENT_ID INT,DEPARTMENT_NAME VARCHAR(100),MANAGER_ID INT, LOCATION_ID INT )
 INSERT INTO departments VALUES(10,'Administration', 200, 1700), (20,'Marketing', 201, 1800),(30,'Purchasing', 114, 1700),
 (40,'Human Resources', 203, 2400),(50,'Shipping', 121, 1500), (60,'IT', 103, 1400), (70,'Public Relations',204,2700),
 (80,'Sales',145,2500),(90,'Executive',100, 1700),(100,'Finance',108, 1700),(110,'Accounting',205, 1700),(120,'Treasury','', 1700)
 ,(130,'Corporate Tax','', 1700),(140,'Control And Credit','', 1700),(150,'Shareholder Services','', 1700)
 ,(160,'Benefits','', 1700),(170,'Manufacturing','', 1700),(180,'Construction','', 1700),(190,'Constracting','', 1700)
 ,(200,'Operations','', 1700),(210,'IT Support','', 1700),(220,'NOC','', 1700),(230,'IT Helpdesk','', 1700),(240,'Government Sales','', 1700)
 ,(250,'Retail Sales','', 1700),(260,'Recruiting','', 1700),(270,'Payroll','', 1700)
create table employees(EMPLOYEE_ID INT identity(100,1), FRIST_NAME VARCHAR(55), LAST_NAME VARCHAR(65), EMAIL VARCHAR(50),PHONE_NUMBER Varchar (400), HIRE_DATE DATE, JOB_ID VARCHAR(55), SALARY SMALLMONEY, COMMISSION_PCT NUMERIC(2,2), MANAGER_ID INT, DEPARTMENT_ID INT)
insert into employees (FRIST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER, HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID, DEPARTMENT_ID) 
values('Steven','King','Sking','515.123.4567','2003-06-17','AD_PRESS',24000,0.00,0,90), 
('Neena','Kochhar','Nkochhar','515.123.4568','2005-09-21','AD_VP',17000,0.00,100,90),
('Lex','De Haan','LDeHaan','515.123.4569','2001-01-13','AD_VP',17000,0.00,100,90),
('Alexander','Hunold','Ahunold','590.423.4567','2006-01-03','IT_PROG',9000,0.00,102,60),
('Bruce','Ernst','Bernst','590.423.4568','2007-05-21','IT_PROG',6000,0.00,103,60),
('David','Austin','Daustin','590.423.4569','2005-06-25','IT_PROG',4800,0.00,103,60),
('Valli','Pataballa','Vpatabal','590.423.4560','2006-02-05','IT_PROG',4800,0.00,103,60),
('Dianna','Lorentz','Dlorentz','590.423.5567','2007-02-07','IT_PROG',4200,0.00,103,60),
('Nancy','Greenberg','Ngreenbe','515.124.4569','2002-08-17','FI_MGR',12008,0.00,101,100),
('Daniel','Faviet','Dfaviet','515.124.4169','2002-08-16','FI_ACCOUNT',9000,0.00,108,100),
('John','Chen','Jchen','515.124.4269','2005-09-28','FI_ACCOUNT',8200,0.00,108,100),
('Ismael','Sciarra','Isciarra','515.124.4369','2005-09-30','FI_ACCOUNT',7700,0.00,108,100),
('Jose Manuel','Urman','Jmurman','515.124.4469','2006-03-07','FI_ACCOUNT',7800,0.00,108,100),
('Luis','Popp','Lpopp','515.124.4567','2007-12-07','FI_ACCOUNT',6900,0.00,108,100),
('Den','Raphaely','Draphael','515.127.4561','2002-12-07','PU_MAN',11000,0.00,100,30),
('Alexander','Khoo','Akhoo','515.127.4562','2003-05-18','PU_CLERK',3100,0.00,114,30),
('Shelli','Baida','Sbaida','515.127.4563','2005-12-24','PU_CLERK',2900,0.00,114,30),
('Sigal','Tobias','Stobias','515.127.4564','2003-07-24','PU_CLERK',2800,0.00,114,30),
('Guy','Himuro','Ghimuro','515.127.4565','2006-11-15','PU_CLERK',2600,0.00,114,30),
('Karen','Colmenares','Kcolmena','515.127.4566','2007-08-10','PU_CLERK',2500,0.00,114,30),
('Matthew','Weiss','Mweiss','650.123.1234','2004-07-18','ST_MAN',8000,0.00,100,50),
('Adam','Fripp','Afripp','650.123.2234','2005-04-10','ST_MAN',8200,0.00,100,50),
('Payam','Kaufling','Pkauflin','650.123.3234','2003-05-01','ST_MAN',7900,0.00,100,50),
('Shanta','Vollman','Svollman','650.123.4234','2005-10-10','ST_MAN',6500,0.00,100,50),
('Kevin','Mourgos','Kmourgos','650.123.5234','2007-11-16','ST_MAN',5800,0.00,100,50),
('Julia','Nayer','Jnayer','650.124.1214','2005-07-16','ST_CLERK',3200,0.00,120,50),
('Irene','Mikkilineni','Imikkili','650.124.1224','2006-09-28','ST_CLERK',2700,0.00,120,50),
('James','Landry','Jlandry','650.124.1334','2007-01-14','ST_CLERK',2400,0.00,120,50),
('Steven','Markle','Smarkle','650.124.1434','2008-03-08','ST_CLERK',2200,0.00,120,50),
('Laura','Bissot','Lbissot','650.124.5234','2005-08-20','ST_CLERK',3300,0.00,121,50),
('Mozhe','Atkinson','Matkinso','650.124.6234','2005-10-30','ST_CLERK',2800,0.00,121,50),
('James','Marlow','Jmarlow','650.124.7234','2005-02-16','ST_CLERK',2500,0.00,121,50),
('TJ','Olson','TJolson','650.124.8234','2007-04-10','ST_CLERK',2100,0.00,121,50),
('Jason','Mallin','Jmallin','650.127.1934','2004-06-14','ST_CLERK',3300,0.00,122,50),
('Michael','Rogers','Mrogers','650.127.1834','2006-08-26','ST_CLERK',2900,0.00,122,50),
('Ki','Gee','Kgee','650.127.1734','2007-12-12','ST_CLERK',2400,0.00,122,50),
('Hazel','Philtanker','Hphiltan','650.127.1634','2008-02-06','ST_CLERK',2200,0.00,122,50),
('Renske','Ladwig','Rladwig','650.121.1234','2003-07-14','ST_CLERK',3600,0.00,123,50),
('Stephen','Styles','SStiles','650.121.2034','2005-10-26','ST_CLERK',3200,0.00,123,50),
('John','Seo','Jseo','650.121.2019','2006-02-12','ST_CLERK',2700,0.00,123,50),
('Joshua','Patel','Jpatel','650.121.1834','2006-04-06','ST_CLERK',2500,0.00,123,50),
('Trenna','Rajs','Trajs','650.121.8009','2003-10-17','ST_CLERK',3500,0.00,124,50),
('Custis','Davies','Cdavies','650.121.2994','2005-01-29','ST_CLERK',3100,0.00,124,50),
('Randall','Matos','Rmatos','650.121.2874','2006-03-15','ST_CLERK',2600,0.00,124,50),
('Peter','Vargas','Pvargas','650.121.2004','2006-06-09','ST_CLERK',2500,0.00,124,50),
('John','Russell','Jrussel','011.44.1344.429268','2004-10-01','SA_MAN',14000,0.40,100,80),
('Karen','Partners','Kparner','011.44.1344.467268','2005-01-05','SA_MAN',13500,0.30,100,80),
('Alberto','Errazuriz','Aerrazur','011.44.1344.429278','2005-03-10','SA_MAN',12000,0.30,100,80),
('Gerald','Cambrault','Gcambrau','011.44.1344.619268','2007-10-15','SA_MAN',11000,0.30,100,80),
('Eleni','Zlotkey','Ezlotkey','011.44.1344.429018','2008-01-29','SA_MAN',10500,0.20,100,80),
('Peter','Tucker','Ptucker','011.44.1344.129268','2005-01-30','SA_REP',10000,0.30,145,80),
('David','Bernstein','Dbernste','011.44.1344.345268','2005-03-24','SA_REP',9500,0.25,145,80),
('Peter','Hall','Phall','011.44.1344.478968','2005-08-20','SA_REP',9000,0.25,145,80),
('Christopher','Olsen','Colsen','011.44.1344.498718','2006-03-30','SA_REP',8000,0.20,145,80),
('Nanette','Cambrault','Ncambrau','011.44.1344.987668','2006-12-09','SA_REP',7500,0.20,145,80),
('Oliver','Tuvault','Otuvault','011.44.1344.486508','2007-11-23','SA_REP',7000,0.15,145,80),
('Janette','King','Jking','011.44.1345.429268','2004-01-30','SA_REP',10000,0.35,146,80),
('Patrick','Sully','Psully','011.44.1345.929268','2004-03-04','SA_REP',9500,0.35,146,80),
('Allen','McEvin','Amcevin','011.44.1345.829268','2004-08-01','SA_REP',9000,0.35,146,80),
('Lindsey','Smith','Lsmith','011.44.1345.729268','2005-03-10','SA_REP',8000,0.30,146,80),
('Louse','Doran','Ldoran','011.44.1345.729268','2005-12-15','SA_REP',7500,0.30,146,80),
('Sarath','Sewall','Ssewall','011.44.1345.529268','2006-11-03','SA_REP',7000,0.25,146,80),
('Clara','Vishney','Cvishney','011.44.1346.129268','2005-11-11','SA_REP',10500,0.25,147,80),
('Danielle','Greene','Dgreene','011.44.1346.229268','2007-03-19','SA_REP',9500,0.15,147,80),
('Mattea','Marvins','Mmarvins','011.44.1346.329268','2008-01-24','SA_REP',7200,0.10,147,80),
('David','Lee','Dlee','011.44.1346.529268','2008-02-23','SA_REP',6800,0.10,147,80),
('Sundar','Ande','Sande','011.44.1346.629268','2008-03-24','SA_REP',6400,0.10,147,80),
('Amit','Banda','Abanda','011.44.1346.729268','2008-04-21','SA_REP',6200,0.10,147,80),
('Lisa','Ozer','Lozer','011.44.1343.929268','2005-03-11','SA_REP',11500,0.25,148,80),
('Harrison','Bloom','Hbloom','011.44.1343.829268','2006-03-23','SA_REP',10000,0.20,148,80),
('Tayler','Fox','Tfox','011.44.1343.729268','2006-01-26','SA_REP',9600,0.20,148,80),
('William','Smith','Wsmith','011.44.1343.629268','2007-02-23','SA_REP',7400,0.15,148,80),
('Elizabeth','Bates','Ebates','011.44.1343.529268','2007-03-24','SA_REP',7300,0.15,148,80),
('Sundita','Kumar','Skumar','011.44.1343.329268','2008-04-21','SA_REP',6100,0.10,148,80),
('Ellen','Abel','Eabel','011.44.1644.429267','2004-05-11','SA_REP',11000,0.30,149,80),
('Alyssa','Hutton','Ahutton','011.44.1644.429266','2005-03-19','SA_REP',8800,0.25,149,80),
('Jonathon','Taylor','Jtaylor','011.44.1644.429265','2006-03-24','SA_REP',8600,0.20,149,80),
('Jack','Livingston','Jlivings','011.44.1344.429264','2006-04-23','SA_REP',8400,0.20,149,80),
('Kimberly','Grant','Kgrant','011.44.1344.429263','2007-05-24','SA_REP',7000,0.15,149,0),
('Charles','Johnson','Cjohnson','011.44.1344.429262','2008-01-04','SA_REP',6200,0.10,149,80),
('Winston','Taylor','Wtaylor','650.507.9876','2006-01-24','SH_CLERK',3200,0.00,120,50),
('Jean','Fleaur','Jfleaur','650.507.9877','2006-02-23','SH_CLERK',3100,0.00,120,50),
('Martha','Sullivan','Msulliva','650.507.9878','2007-06-21','SH_CLERK',2500,0.00,120,50),
('Girard','Geoni','Ggeoni','650.507.9879','2008-02-03','SH_CLERK',2800,0.00,120,50),
('Nandita','Sarchand','Nsarchan','650.509.1876','2004-01-03','SH_CLERK',4200,0.00,121,50),
('Alexis','Bull','Abull','650.509.2876','2005-02-20','SH_CLERK',4100,0.00,121,50),
('Julia','Dellinger','Jdelling','650.509.3876','2006-06-24','SH_CLERK',3400,0.00,121,50),
('Anthony','Cabrio','Acabrio','650.509.4876','2007-02-07','SH_CLERK',3000,0.00,121,50),
('Kelly','Chung','Kchung','650.505.1876','2005-06-14','SH_CLERK',3800,0.00,122,50),
('Jennifer','Dilly','Jdilly','650.505.2876','2005-08-13','SH_CLERK',3600,0.00,122,50),
('Timothy','Gates','Tgates','650.505.3876','2006-07-11','SH_CLERK',2900,0.00,122,50),
('Randall','Perkins','Rperkins','650.505.4876','2007-12-19','SH_CLERK',2500,0.00,122,50),
('Sarah','Bell','Sbell','650.501.1876','2004-02-04','SH_CLERK',4000,0.00,123,50),
('Britney','Everett','Beverett','650.501.2876','2005-03-03','SH_CLERK',3900,0.00,123,50),
('Samuel','McCain','Smccain','650.501.3876','2006-07-01','SH_CLERK',3200,0.00,123,50),
('Vance','Jones','Vjones','650.501.4876','2007-03-17','SH_CLERK',2800,0.00,123,50),
('Alana','Walsh','Awalsh','650.507.9811','2006-04-24','SH_CLERK',3100,0.00,124,50),
('Kevin','Feeney','Kfeeney','650.507.9822','2006-05-23','SH_CLERK',3000,0.00,124,50),
('Donald','OConnell','Doconnel','650.507.9833','2007-06-21','SH_CLERK',2600,0.00,124,50),
('Douglas','Grant','Dgrant','650.507.9844','2008-01-13','SH_CLERK',2600,0.00,124,50),
('Jennifer','Whalen','Jwhalen','515.123.4444','2003-09-17','AD_ASST',4400,0.00,101,10),
('Michael','Hartstein','Mhartste','515.123.5555','2004-02-17','MK_MAN',13000,0.00,100,20),
('Pat','Fay','Pfay','603.123.6666','2005-08-17','MK_REP',6000,0.00,201,20),
('Susan','Mavris','Smavris','515.123.7777','2002-06-07','HR_REP',6500,0.00,101,40),
('Hermann','Baer','Hbaer','515.123.8888','2002-06-07','PR_REP',10000,0.00,101,70),
('Shelley','Higgins','Shiggins','515.123.8080','2002-06-07','AC_MGR',12008,0.00,101,110),
('William','Giets','Wgiets','515.123.8181','2002-06-07','AC_ACCOUNT',8300,0.00,205,110)

Select * from departments
Select * from employees

Select FRIST_NAME, LAST_NAME from employees a Where SALARY in (Select max(SALARY) from employees b where EMPLOYEE_ID=163)

-- Exercise 2

Select FRIST_NAME, LAST_NAME, JOB_ID, DEPARTMENT_ID from employees a Where JOB_ID = (Select JOB_ID from employees b Where EMPLOYEE_ID=169)

-- Exercise 3

Select frist_name, last_name, DEPARTMENT_ID from employees Where salary in (select min(salary) from employees group by DEPARTMENT_ID)

-- Exercise 4

Select employee_ID, frist_name, last_name from employees Where salary > (Select AVG(salary) from employees)

-- Exercise 5

Select frist_name, last_name, employee_ID,salary from employees

-- Exercise 6

Select a.DEPARTMENT_ID, a.frist_name, a.JOB_ID from employees a where a.DEPARTMENT_ID in (select b.DEPARTMENT_ID from departments b where a.DEPARTMENT_ID=b.DEPARTMENT_ID and b.DEPARTMENT_NAME='Finance')

-- Exercise 7

Select * from employees Where EMPLOYEE_ID in (Select EMPLOYEE_ID from employees where salary=3000 and MANAGER_ID=121)

-- Exercise 8

Select * from employees Where EMPLOYEE_ID in (select EMPLOYEE_ID from employees where EMPLOYEE_ID in (134,159) or EMPLOYEE_ID=183)

-- Exercise 9

Select * from employees Where SALARY in (select salary from employees where SALARY between 1000 and 3000)

-- Exercise 10

Select * from employees a Where SALARY in (select min(SALARY) from employees b where a.EMPLOYEE_ID=b.EMPLOYEE_ID  and salary between SALARY and 2500 group by SALARY ) 

SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500.00

-- Exercise 11

Select * from employees where DEPARTMENT_ID not in (Select DEPARTMENT_ID from departments where MANAGER_ID between 100 and 200)

-- Exercise 12

Select * from employees where salary in (Select top 2 max(salary) from employees where salary < (select max(SALARY) from employees))

-- Exercise 13

Select frist_name, last_name, hire_date from employees where DEPARTMENT_ID in (Select DEPARTMENT_ID from employees where FRIST_NAME like 'Clara')

-- Exercise 14

Select EMPLOYEE_ID, FRIST_NAME,LAST_NAME from employees where DEPARTMENT_ID in (Select DEPARTMENT_ID from employees where FRIST_NAME like 'T%')

-- Exercise 15

Select employee_id, frist_name,salary from employees a Where DEPARTMENT_ID in (Select DEPARTMENT_ID from employees b Where FRIST_NAME like 'J%' and a.DEPARTMENT_ID=b.DEPARTMENT_ID) and SALARY > (select avg(SALARY) from employees)

-- Exercise 16

Create Table Locations(
location_ID int,
street_address varchar(75),
postal_code text,
city nvarchar(80),
state_province text,
country_ID varchar(50)
)

Insert into Locations(location_ID,street_address,postal_code,city,state_province,country_ID) Values (1000,'1297 Via Cola di Rie', '989','Roma',null,'IT'),(1100,'93091 Calle della Testa','10934','Venice',null,'IT'),(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP'),(1300,'9450 Kamiya-cho','6823','Hiroshima',null,'JP'),(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),(1600,'2007 Zagora St','50090', 'South Brunswick','New Jersey', 'US'),(1700,'2004 Charade Rd','98199','Seattle','Washington','US'),(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),(2000,'40-5-12 Laogianggen','190518','Beijing',null,'CN'),(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN'),(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),(2300,'198 Clementi North','540198','Singapore',null,'SG'),(2400,'8204 Arthur St',null,'London', null,'UK'),(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK'),(2600,'9702 Chester Road','9629850293','Stretford','Manchester','UK'),(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE'),(2800,'Rua Frei Caneca 1360','01307-002','Sao Paulo','Sao Paulo','BR'),(2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH'),(3000,'Murtenstrasse 921','3095','Bern','BE','CH'),(3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL'),(3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX')

Select e.frist_name, e.last_name, e.employee_id, e.JOB_ID,e.department_id from employees e,departments d Where e.DEPARTMENT_ID=d.DEPARTMENT_ID and  d.LOCATION_ID in (Select location_ID from Locations l Where d.LOCATION_ID=l.location_ID and city='Toronto') 

-- Exercise 17

Select employee_id, frist_name, last_name, JOB_ID from employees e1 Where SALARY < (select SALARY from employees e2 Where JOB_ID='MK_MAN')

-- Exercise 18

Select employee_id, frist_name, last_name, JOB_ID from employees Where SALARY < any (select SALARY from employees Where JOB_ID='MK_MAN') and JOB_ID<>'MK_MAN'

-- Exercise 19

Select employee_id, frist_name, last_name, JOB_ID from employees Where salary > all (Select salary from employees Where JOB_ID='PU_MAN') and JOB_ID!='PU_MAN'

-- Exercise 20

Select employee_id, frist_name, last_name from employees Where Salary > (Select avg(SALARY) from employees)

-- Exercise 21

Select DEPARTMENT_ID, frist_name, last_name from employees Where SALARY > any (select EMPLOYEE_ID from employees)

-- Exercise 22

Select DEPARTMENT_ID, sum(SALARY) from employees Where DEPARTMENT_ID in (Select DEPARTMENT_ID from departments) Group by DEPARTMENT_ID Having count(DEPARTMENT_ID) >=1

-- Exercise 23

Select EMPLOYEE_ID,FRIST_NAME,LAST_NAME,
	case when job_id = 'ST_MAN' then  'SALESMAN'
	when JOB_ID='IT_PROG' then 'DEVELOPER'
	ELSE job_id END AS job_id_mod
	from employees

-- Exercise 24

Select EMPLOYEE_ID,FRIST_NAME,LAST_NAME,
	case when salary>=(select avg(SALARY ) from employees) then 'HIGH'
	else 'LOW' end as 'Salary Status'
	from employees

-- Exercise 25
-- in question
Select EMPLOYEE_ID,FRIST_NAME,LAST_NAME, case when salary >= (Select avg(salary) from employees) then 'High' else 'Low' end 'statues' from employees

-- Exercise 26

Select DEPARTMENT_NAME from departments where DEPARTMENT_ID in (select DEPARTMENT_ID from employees )

-- Exercise 27
-- in question
Create Table Country(
country_id text,
country_name text,
region_id int
)
Insert Country values ('AR','Argentina',2),('AU','Australia',3),('BE','Belgium',1),('BR','Brazil',2),('CA','Canada',2),('CH','Switzerland',1),('CN','China',3),('DE','Germany',1),('DK','Denmark',1),('EG','Egypt',4),('FR','France',1),('IL','Israel',4),('IN','India',3),('IT','Italy',1),('JP','Japan',3),('KW','Kuwait',4),('ML','Malaysia',3),('MX','Mexico',2),('NG','Nigeria',4),('NL','Netherlands',1),('SG','Singapore',3),('UK','United Kingdom',1),('US','United States of America',2),('ZM','Zambia',4),('ZW','Zimbabwe',4) 
Select * from Country

Select frist_name from employees where DEPARTMENT_ID in (select DEPARTMENT_ID from departments where LOCATION_ID in (select LOCATION_ID from Locations where country_ID in (select country_ID from Country where country_name='United Kingdom')))

-- Exercise 28

Select last_name from employees where salary >= (Select avg(SALARY) from employees) and DEPARTMENT_ID in (select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'IT')

-- Exercise 29

Select frist_name, last_name, salary from employees Where salary > (Select salary from employees Where LAST_NAME like '%Ozer%') order by LAST_NAME

-- Exercise 30

Select frist_name, last_name from employees where MANAGER_ID in (select MANAGER_ID from departments where LOCATION_ID in (Select location_ID from Locations where country_ID like 'US' ))

-- Exercise 31

Select frist_name, last_name from employees e1 Where salary > (Select sum(SALARY) * 0.5 from employees e2 where e1.DEPARTMENT_ID=e2.DEPARTMENT_ID)

-- Exercise 32

Select * from employees Where EMPLOYEE_ID in (Select MANAGER_ID from departments)

-- Exercise 33

Select * from employees Where EMPLOYEE_ID in (Select MANAGER_ID from departments)

-- Exercise 34

Select e.employee_id,e.FRIST_NAME,e.last_name,e.salary,d.department_name,l.city from employees e, departments d, Locations l Where salary in (Select max(SALARY) from employees where HIRE_DATE between '2002-01-01' and '2003-12-31') and e.DEPARTMENT_ID=d.DEPARTMENT_ID and d.LOCATION_ID=l.location_ID

-- Exercise 35

Select * from departments Where LOCATION_ID  in (Select LOCATION_ID from Locations where city='London')

-- Exercise 36

Select FRIST_NAME, LAST_NAME, salary, DEPARTMENT_ID from employees Where SALARY > (Select avg(Salary) from employees) order by SALARY desc

-- Exercise 37

Select FRIST_NAME, LAST_NAME, salary, DEPARTMENT_ID from employees Where SALARY > (select max(SALARY) from employees where DEPARTMENT_ID=40)

-- Exercise 38

Select DEPARTMENT_ID, DEPARTMENT_NAME from departments Where LOCATION_ID in (Select LOCATION_ID from departments where DEPARTMENT_ID=30)

-- Exercise 39

Select FRIST_NAME, LAST_NAME, salary, DEPARTMENT_ID from employees Where DEPARTMENT_ID in (Select DEPARTMENT_ID from employees where EMPLOYEE_ID=201)

-- Exercise 40

Select FRIST_NAME, LAST_NAME, salary, DEPARTMENT_ID from employees Where SALARY in (Select SALARY from employees where DEPARTMENT_ID=40)

-- Exercise 41

Select FRIST_NAME, LAST_NAME, DEPARTMENT_ID from employees Where DEPARTMENT_ID in (Select DEPARTMENT_ID from departments where DEPARTMENT_NAME like 'Marketing')

-- Exercise 42

Select FRIST_NAME, LAST_NAME, salary, DEPARTMENT_ID from employees Where SALARY > (select min(SALARY) from employees where DEPARTMENT_ID=40)

-- Exercise 43

Select concat(FRIST_NAME,' ',LAST_NAME) as Full_Name,HIRE_DATE from employees Where HIRE_DATE > (Select HIRE_DATE from employees where EMPLOYEE_ID=165)

-- Exercise 44

Select FRIST_NAME, LAST_NAME, salary, DEPARTMENT_ID from employees Where SALARY < (select min(SALARY) from employees where DEPARTMENT_ID=70)

-- Exercise 45

Select FRIST_NAME, LAST_NAME, salary, employees.DEPARTMENT_ID from employees Where SALARY < (Select avg(Salary) from employees ) and DEPARTMENT_ID in (Select DEPARTMENT_ID from employees Where employees.FRIST_NAME like '%Laura%')

-- Exercise 46

Select FRIST_NAME, LAST_NAME, salary, DEPARTMENT_ID from employees Where DEPARTMENT_ID in (Select DEPARTMENT_ID from departments where LOCATION_ID in (Select LOCATION_ID from Locations Where city='London'))

-- Exercise 47

Select city from Locations Where location_ID in (Select location_ID from departments Where DEPARTMENT_ID in (Select DEPARTMENT_ID from employees where EMPLOYEE_ID=134))

-- Exercise 48
-- in question
Select * from departments

-- Exercise 49

Create Table Job_History(
employe_id int,
start_date text,
end_date varchar(50),
job_id nvarchar(70),
department_id int
)

Insert into Job_History Values (102,'2001-01-13','2006-07-24','IT_PROG',60),(101,'1997-09-21','2001-10-27','AC_ACCOUNT',110),(101,'2001-10-28','2005-03-15','AC_MGR',110),(201,'2004-02-17','2007-12-19','MK_REP',20),(114,'2006-03-24','2007-12-31','ST_CLERK',50),(122,'2007-01-01','2007-12-31','ST_CLERK',50),(200,'1995-09-17','2001-06-17','AD_ASST',90),(176,'2006-03-24','2006-12-31','SA_REP',80),(176,'2007-01-01','2007-12-31','SA_MAN',80),(200,'2002-07-01','2006-12-31','AC_ACCOUNT',90)

Select * from departments Where DEPARTMENT_ID in (Select DEPARTMENT_ID from employees group by DEPARTMENT_ID having min(SALARY)>=8000)

-- Exercise 50

Select Concat(FRIST_NAME,'',LAST_NAME) as Full_Name, DEPARTMENT_ID from employees Where EMPLOYEE_ID in (Select MANAGER_ID from employees group by MANAGER_ID having count(*)>=4)

-- Exercise 51
-- in question
Create Table Jobs(
Job_Id text,
Job_Title text,
min_salary int,
max_salary int
)
Insert into Jobs Values ('AD_PRES','President',20080,40000),('AD_VP','Administration Vice President',15000,30000),('AD_ASST','Administration Assistant',3000,6000),('FI_MGR','Finance Manager',8200,16000),('FI_ACCOUNT','Accountant',4200,9000),('AC_MGR','Accounting Manager',8200,16000),('AC_ACCOUNT','Public Accountant',4200,9000),('SA_MAN','Sales Manager',10000,20080),('SA_REP','Sales Representative',6000,12008),('PU_MAN','Purchasing Manager',8000,15000),('PU_CLERK','Purchasing Clerk',2500,5500),('ST_MAN','Stock Manager',5500,8500),('ST_CLERK','Stock Clerk',2008,5000),('SH_CLERK','Shipping Clerk',2500,5500),('IT_PROG','Programmer',4000,10000),('MK_MAN','Marketing Manager',9000,15000),('MK_REP','Marketing Representative',4000,9000),('HR_REP','Human Resources Representative',4000,9000),('PR_REP','Public Relations Representative',4500,10500)

Select * from Jobs Where Job_Id in (Select Job_Id from Job_History Where employe_id in (Select employe_id from employees Where job_id='SA_REP'))

Select * from Jobs Where Job_Id in (Select Job_Id from employees Where EMPLOYEE_ID in (Select EMPLOYEE_ID from Job_History Where job_id='SA_REP' and Job_History.job_id=Jobs.Job_Id) and Jobs.Job_Id=employees.JOB_ID)

-- Exercise 52

Select * from employees Where SALARY in (Select top 2 min(SALARY) from employees WHERE salary > (SELECT MIN(salary) FROM employees))

-- Exercise 53

Select * from departments Where MANAGER_ID in (Select EMPLOYEE_ID from employees Where FRIST_NAME like 'Susan')

-- Exercise 54

Select DEPARTMENT_ID, CONCAT(FRIST_NAME, ' ', last_name) AS full_name, salary from employees e1 Where SALARY in (Select max(SALARY) from employees e2 Where e1.DEPARTMENT_ID=e2.DEPARTMENT_ID) 

-- Exercise 55

Select * from employees Where EMPLOYEE_ID not in (select employe_id from Job_History)
