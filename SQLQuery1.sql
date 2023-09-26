drop table Employee

create table Employee
(
id int primary key, 
name varchar(20) not null
)

--or
create table Employee2
(
id int,
name varchar(20) not null,
constraint pkey_emp primary key(id)
)

--using alter
alter table Employee alter column id int not null
alter table Employee1 add constraint pkey_emp primary key(id)
