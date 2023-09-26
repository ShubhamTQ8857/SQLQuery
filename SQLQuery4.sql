drop table employee
create table employee
(
id int, 
ename varchar(20) not null,
email varchar(25) unique,
age int check(age>=18),
salary numeric(12,2)
)

select * from employee

insert into employee values(1, 'Shubham Khadke', 'shubham@email.com', 22, 250000.45)
insert into employee values(2, 'satyam khadke', 'satyam@gmail.com', 20, 260000.50)
insert into employee values(3, 'smita khadke', 'smita@gmail.com', 21, 350045.60)
insert into employee values(4, 'sumit dethe', 'sumit@gmail.com', 24, 150045.60)
insert into employee values(5, 'sanket jadhav', 'sanket@gmail.com', 22, 250045.60)
