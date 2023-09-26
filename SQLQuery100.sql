create table employeeinfo
(
empid int primary key,
empfname varchar(10),
emplname varchar(10),
department varchar(15),
project varchar(15),
adress varchar(20),
dob date,
gender varchar(10)
)
insert into employeeinfo values(1,'Rohit','Gupta','Admin','p1','Delhi','02/12/1979','Male')
insert into employeeinfo values(2,'Rahul','Mahajan','Admin','p2','Mumbai','10/10/1986','Male')
insert into employeeinfo values(3,'Sonia','Banerjee','HR','p3','Pune','05/06/1983','Female')
insert into employeeinfo values(4,'Ankita','Kapoor','HR','p4','Chennai','11/28/1983','Female')
insert into employeeinfo values(5,'Swati','Garg','HR','p5','Delhi','04/04/1991','Female')

select * from employeeinfo

create table employeeposition
(
empid int primary key,
constraint fk_empid foreign key(empid) references employeeinfo (empid),
empposition varchar(15),
dateofjoining date,
salary int
)
insert into EmployeePosition values(1,'Executive','2020/4/1',75000)
insert into EmployeePosition values(2,'Manager','2020/4/3',50000)
insert into EmployeePosition values(3,'Manager','2020/4/2',150000)
insert into EmployeePosition values(4,'Officer','2020/4/2',90000)
insert into EmployeePosition values(5,'Manager','2020/4/3',300000)

select * from employeeposition
select * from employeeinfo

-- Create a query to generate the first records from the EmployeeInfo table.
select * from employeeinfo where empid=1
select top 1 * from employeeinfo order by empid

-- Create a query to generate the last records from the EmployeeInfo table.
select top 1 * from employeeinfo order by empid desc

-- Create a query to fetch the third-highest salary from the EmpPosition table.
select * from employeeposition order by empid desc offset 2 rows fetch next 1 rows only

-- Write a query to find duplicate records from a table.
select empid, COUNT(empid) as 'count'


-- Create an SQL query to fetch EmpPostion and the total salary paid for each employee position.
select empposition, sum(salary) from employeeposition group by empposition 

-- find the employee who has max salary

-- find the employee who has max salary from HR department
select salary from employeeposition e inner join employeeinfo em on e.empid=em.empid where department='HR' group by salary 

-- find the age of each employee

-- display only female employee details

-- display employee whos position is executive
-- display count of employee in each city
