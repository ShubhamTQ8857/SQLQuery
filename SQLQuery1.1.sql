Create TABLE student
(
rollno int,
name varchar(20),
percentage numeric(6,2),
city varchar(10),
dob date
)

--Modify the data type or sie of data type
alter table student alter column name varchar(25)

--add column to the existing table
alter table student add country varchar(20)

--remove column from the existing table
alter table student drop column country

-- rename column name

exec sp_rename 'student.name','studentName'


create table Employee
(
eid int,
ename varchar(20),
edepartment varchar(10),
esalary int,
ejoiningdate date
)