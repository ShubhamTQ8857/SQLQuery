select * from employee

create table EmployeeTrack
(
id int primary key identity(1,1),
description varchar(255)
)

create trigger tr_employee
on employee after insert
as begin
declare @id int
declare @ename varchar(20)
declare @email varchar(25)
select @id=id, @ename=ename, @email=email from inserted
insert into EmployeeTrack values('new record with details'+cast(@id as varchar)+' name'+
@ename+' email '+@email+' date '+ cast( GETDATE() as varchar(20))+' added')
end


alter trigger tr_employee_delete
on employee after delete
as begin
declare @id int
declare @ename varchar(20)
declare @email varchar(25)
select @id=id, @ename=ename, @email=email from deleted
insert into EmployeeTrack values('new record with details'+cast(@id as varchar)+' name'+
@ename+' email '+@email+' date '+ cast( GETDATE() as varchar(20))+'removed')
end

insert into employee values(6,'Prakash Shinde','pk@gma8000il.com',25,2)
insert into employee values(7,'Vilas Mahajan','vm@gmail.com',28,20000)

delete from employee where id=7

select*from employee
select * from EmployeeTrack

select ename, salary,
case
when salary>250000.45 then 'High Salary'
when salary<250000 then 'Low Salary'
else 'average'
end as 'remark'
from employee

select ename, salary,
case
when salary between 48000 and 90000 then 'High Salary'
when salary between 25000 and 40000 then 'Low Salary'
else 'average'
end as 'remark'
from employee