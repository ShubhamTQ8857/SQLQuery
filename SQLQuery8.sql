use [DP-Titans]

-- Cross Join
create table Color
(
id int primary key,
colorname varchar(15)
)

create table Sizes
(
id int primary key,
size varchar(10)
)

insert into Color values(1,'Red'), (2,'Black'),(3,'Yellow'),(4,'White'),(5,'Blue'),(6,'Sky Blue') 

insert into Sizes values(10, 'S'), (11, 'M'),(12, 'L'),(13, 'XL'),(14, 'XXL')

select * from Color cross join Sizes

--Self Join
create table worker
(
id int primary key,
wname varchar(20),
salary int,
)

insert into worker values(1, 'Vivan Sharma', 25500), (2, 'Vivek Kasabe', 20800),(3, 'Sagar Shedge', 28600),(4, 'Akshay Kalskar', 350000),
(5, 'Kiran Adhav', 29500),(6, 'Bunty Patil', 44500),(7, 'Vrushali Khadke', 23500),(8, 'Adah joshi', 21000),(9, 'Bacchan Pandey', 26000),
(10, 'Shubham Khadke', 32500)

select * from worker

alter table worker add managerid int 

select w1.wname as 'earn high', w1.salary, w2.wname as 'earn less'
from worker w1, worker w2
where w1.salary>w2.salary

update worker set managerid=4 where id in(1,2,3)
update worker set managerid=8 where id in(5,6,7)
update worker set managerid=10 where id in(9)

select w1.wname as 'Employee', w2.wname as 'Manager'
from worker w1, worker w2
where w1.managerid=w2.id
