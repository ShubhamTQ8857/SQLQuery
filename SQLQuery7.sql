use [DP-Titans]					--To Select Data base
create database company			--To Create Data base
use company						--To Create Data base
select name from sys.databases  --To View All Data Bases
select name from sys.tables		--To View All Tables 
exec sp_help product1           --To watch the structure of table

create table newemployee1
(id int primary key,
ename varchar(20),
age int not null,
contact varchar(10)
)

create table department
(
did int primary key,
dname varchar(20)
)

insert into newemployee1 values (101,'Satyam Khadke', 23, '8087400986'),(102,'Sandesh Kadam', 25, '8869781220'),
(103,'Anant Dethe', 27, '8983583302'),(104,'Shubham Khadke', 26, '8857964515'),(105,'Shyam Tarate', 29, '8087580986')
insert into newemployee1(id, ename, age, contact) values(106, 'Vaibhav Thube', 30, '8275226565')
insert into newemployee1(id, ename, age, contact) values(107, 'Vishal Tambe', 29, '8275226645')

insert into department values(11,'HR'),(12,'Admin'),(13,'Development'),(14,'Testing')
,(105,'Sales')
insert into department values(15,'Supervisor')


alter table newemployee1 add did int
alter table newemployee1 add constraint pk_fk_dept_newemp
foreign key(did) references department(did)

update newemployee1 set did=11 where id in (101,102)
update newemployee1 set did=12 where id in (103)
update newemployee1 set did=11 where id in (104)
update newemployee1 set did=11 where id in (101,102)
update newemployee1 set did=13 where id in (104)
update newemployee1 set did=14 where id=105
update newemployee1 set did=105 where id=102


select * from newemployee1
select * from department

select e.*,d.dname
from newemployee1 e
inner join department d on d.did=e.did

select e.*,d.dname
from newemployee1 e
left join department d on d.did=e.did

select e.*,d.dname
from newemployee1 e
right join department d on d.did=e.did

select e.*,d.dname
from newemployee1 e
full join department d on d.did=e.did


create table users
(
userid int primary key,
username varchar(20),
email varchar(20) unique
)
insert into users values(111,'Shubham Khadke','shubham22@gmail.com'), (112,'Sangram Patil','sangram12@gmail.com'),
(113,'Karan Shelke','ks11@gmail.com'),(114,'Sanket Jadhav','sjadhav@gmail.com'),(115,'Akshay Kalskar','ark11@gmail.com')

select * from users

Create table Product1
(
productid int primary key,
productname varchar(20),
productprice int
)

insert  into Product1 values(5225, 'Smart TV', 24000),
(2525, 'Washing Machine', 28000), (8578, 'Smart TV', 24000), 
(1255, 'Fridge', 22500), (2446, 'Smart Phone', 32650)

 select * from Product1

create table order1
(
oid int primary key,
productid int,
userid int,
Constraint fk_p foreign key(productid) references product1(productid),
Constraint pd_fk foreign key(userid) references users (userid)
)

alter table order1 add quantity int 
insert into order1 values(98855552,5225, 111, 1), (78855552, 2525, 112, 2), (97755552, 8578, 113, 1), (82855552, 1255, 114, 1)
insert into order1(oid,quantity) values (9885782, 2), (12585782, 1)

select * from order1

select u.*, p.*, o.*
from order1 o 
inner join Product1 p on p.productid = o.productid 
inner join users u on u.userid = o.userid

select u.*, p.*, o.*
from order1 o 
left join Product1 p on p.productid = o.productid 
left join users u on u.userid = o.userid

select u.*, p.*, o.*
from order1 o 
right join Product1 p on p.productid = o.productid 
right join users u on u.userid = o.userid

select u.*, p.*, o.*
from order1 o 
full join Product1 p on p.productid = o.productid full join users u on u.userid = o.userid

