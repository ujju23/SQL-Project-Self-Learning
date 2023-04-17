create table employee (employee_id integer primary key , first_name text
							,last_name text , salary integer , joining_date date 
							, department text)
							
insert into employee values (1,'anika', 'arora', 100000,'2020-02-14','HR'),
							(2,'veena', 'verma', 80000,'2011-06-15','ADMIN'),
							(3,'vishal', 'singhal', 300000,'2020-02-16','HR'),
							(4,'sushanth', 'singh', 500000,'2020-02-17','ADMIN'),
							(5,'bhupal', 'bhati', 500000,'2011-06-18','ADMIN'),
							(6,'dheeraj', 'diwan', 200000,'2011-06-19','ACCOUNT'),
							(7,'karan', 'kumar', 75000,'2020-01-14','ACCOUNT'),
							(8,'chandrika', 'chauhan', 90000,'2011-04-15','ADMIN');

Select * from employee




create table employee_bonus (employee_rfr_id integer,
							 foreign key(employee_rfr_id)
							 references employee(employee_id) 
							 , bonus_amount integer,
							bonus_date date)


insert into employee_bonus values (1,5000,'2020-02-16'),
							(2,3000,'2011-06-16'),
							(3,4000,'2020-02-16'),
							(1,4500,'2020-02-16'),
							(2,3500,'2011-06-16');
						
create table employee_title (employee_rfr_id integer, 	employee_title text,
							affective_date date)
							
insert into employee_title values (1,'manager','2016-02-20'),
									(2,'executive','2016-06-11'),
									(8,'executive','2016-06-11'),
									(5,'manager','2016-06-11'),
									(4,'asst. manager','2016-06-11'),
									(7,'executive','2016-06-11'),
									(6,'lead','2016-06-11'),
									(3,'lead','2016-06-11');
							
1. select first_name as employee_name from employee	
2. select upper(last_name) from employee
3. select distinct department from employee
4. select substring(last_name,1,3) from employee
5. select distinct department, length(department) from employee
6. select  concat(first_name ,' ', last_name) as a from employee
7. select * from employee order by first_name
8.  select * from employee order by first_name ,department desc
9. select * from employee where (first_name =  'veena' or first_name='karan')
9. select * from employee where first_name  in ('veena','karan')
10.SELECT * FROM EMPLOYEE WHERE DEPARTMENT = 'ADMIN'
11.select * from employee where first_name like 'v%'
12.select * from employee where salary between 100000 and 500000
13.select * from employee where to_char(joining_date, 'mon') = 'feb'
13.select * from employee where joining_date between '2020-02-01' and '2020-02-28'
14.select * from employee where salary >= 50000 and  salary <= 100000
15.select department,count(department) as no_of_emp from employee group by department
order by no_of_emp desc
16.SELECT * FROM EMPLOYEE
JOIN EMPLOYEE_TITLE
ON EMPLOYEE.EMPLOYEE_ID=EMPLOYEE_TITLE.EMPLOYEE_RFR_ID
WHERE EMPLOYEE_TITLE = 'manager'
17.SELECT salary ,department,COUNT(*)
FROM employee
GROUP BY salary,department
HAVING COUNT(*) > 1;
18.select * from employee where employee_id % 2 =1
19.create table employee_clone as select * from employee
drop table employee_clone
20.select salary from employee order by salary desc limit 2


						