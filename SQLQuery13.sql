create table worker1
(
workerid int primary key,
firstname varchar(10),
lastname varchar(10),
salary int,
joiningdate date,
department varchar(10)
)

insert into worker1 values(1001, 'Monika', 'Arora', 100000, '2022/01/18', 'HR')
insert into worker1 values(1002, 'Niharika', 'Verma', 80000, '2018/12/21', 'Admin')
insert into worker1 values(1003, 'Vishal', 'Singhal', 300000, '2017/05/11', 'HR')
insert into worker1 values(1004, 'Amitabh', 'Singh', 500000, '2015/07/16', 'Admin')
insert into worker1 values(1005, 'Vivek', 'Bhati', 500000, '2014/11/01', 'Admin')
insert into worker1 values(1006, 'Vipul', 'Diwan', 200000, '2021/05/18', 'Account')
insert into worker1 values(1007, 'Satish', 'Kumar', 75000, '2023/07/10', 'Account')
insert into worker1 values(1008, 'Geetika', 'Chauhan', 90000, '2022/09/24', 'Admin')

create table bonus
(
workerid int,
bonusamount int,
bonusdate date,
constraint fk_wid foreign key(workerid) references worker1(workerid), 
)
insert into bonus values (1001,5000,'2022/01/20')
insert into bonus values (1002,3000,'2018/12/22')
insert into bonus values (1003,4000,'2017/05/16')
insert into bonus values (1001,4500,'2022/01/20')
insert into bonus values (1003,3500,'2018/12/22')

create table title
(
workerid int,
constraint fk_titleid foreign key(workerid) references worker1(workerid),
workertitle varchar(25),
affectedfrom date
)
insert into title values (1001,'Manager','2016-02-20')
insert into title values (1002,'Executive','2016-06-11')
insert into title values (1008,'Executive','2016-06-11')
insert into title values (1005,'Manager','2016-06-11')
insert into title values (1004,'Asst. Manager','2016-06-11')
insert into title values (1007,'Executive','2016-06-11')
insert into title values (1006,'Lead','2016-06-11')
insert into title values (1003,'Lead','2016-06-11')

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
select firstname as worker_name from worker1

--Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
select UPPER(firstname) from worker1

--Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
select distinct department from worker1 

--Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
select SUBSTRING(firstname,1,3) from worker1

--Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.

--Q-6. Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side.

--Q-7. Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side.

--Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.

--Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.

--Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.
select CONCAT(firstname,' ',lastname ) as 'Complete Name' from worker1

--Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
select * from worker1 order by firstname 
select * from worker1 order by workerid desc
select * from worker1 order by firstname, workerid
select * from worker1 order by workerid, firstname

--Q-12. Write an SQL query to print all Worker details from the Worker table order by DEPARTMENT Descending and FIRST_NAME Ascending.
select * from worker1 order by department desc, firstname 

--Q-13. Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
select * from worker1 where firstname in ('Vipul', 'satish')

--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
select * from worker1 where department = 'Admin'
Select * from Worker1 where DEPARTMENT like 'Admin%'

--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
select * from worker1 where firstname like '%a%'

--Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
select * from worker1 where firstname like '%a'

--Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
select * from worker1 where firstname like '_____h'

--Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
select * from worker1 where salary between 100000 and 500000

--Q-20. Write an SQL query to print details of the Workers who joined in Feb’2014
select * from worker1 where year(joiningdate)=2015 

--Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
select count(*) as 'count' from worker1 where department='Admin'

--Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
select CONCAT (firstname, ' ', lastname) as Worker_Name from worker1 
where workerid in
(select workerid from worker1 where salary between 50000 and 100000)

--Q-23. Write an SQL query to fetch the no. of workers for each department in descending order.
select department, count(workerid) as Count from worker1 group by department order by Count desc

--Q-24. Write an SQL query to print details of the Workers who are also Managers.



select * from worker1
select * from bonus
select * from title
