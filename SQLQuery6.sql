create table Customers
(
CustomerID int primary key,
CustomerName varchar(20) not null,
City varchar(15),
Country varchar(15),
PostalCode int 
)

select * from Customers

insert into Customers values(5145, 'John', 'London', 'UK', 121111)
insert into Customers values(5146, 'Ben', 'London', 'UK', 121111)
insert into Customers values(5147, 'Ricky', 'London', 'UK', 121111)
insert into Customers values(5148, 'Brandom', 'Berlin', 'Germany', 121110)
insert into Customers values(23, 'Glenn', 'Kew Victoria', 'Australia', 564789)
insert into Customers values(51, 'Smith', 'Berlin', 'Germany', 121110)
insert into Customers values(555, 'Alex Carey', 'Loxton', 'Australia', null)
insert into Customers(CustomerID, CustomerName,City) values (468,'Daniel','New Zealand')
insert into Customers values(6578, 'Tim', 'Bergen', 'Norway', 65789)
insert into Customers values(3696, 'Jack', 'Drammen', 'Norway', 68987)

select city from Customers
select distinct City from Customers
select * from Customers where City='London'
select * from Customers where City Not In ('Berlin')
select * from Customers where City <> 'Berlin'
select * from Customers where City = 'Berlin' And PostalCode=121110 
select * from Customers where City = 'Berlin' Or City='London'
select * from Customers where PostalCode is null
select * from Customers where PostalCode is not null

update Customers set City='Oslo' where Country='Norway'
delete from Customers where City='London'and CustomerID=5145

select * from Customers where Country IN ('Norway','UK')
select * from Customers where Country Not IN ('Norway','UK')

select PostalCode as 'PNo' from Customers
select CustomerName as 'Consumers' from Customers

drop table ProductTable
create table ProductTable
(
productid int unique,
productname varchar(20),
productprice numeric(10,5),
CustomerId int,
Constraint FKey Foreign Key (CustomerId) references Customers(CustomerId)
)

select * from ProductTable
insert into ProductTable values(11, 'TV', 25000, 23),(12, 'Washing Machine', 35000, 5146)
delete from ProductTable where productid in(11,12)

select * from Customers where CustomerName like 's%'
select * from Customers where CustomerName not like 's%'

select * from Customers where CustomerName like '%m'
select * from Customers where CustomerName not like '%m'

select * from Customers where CustomerName like '%i%'
select * from Customers where CustomerName not like '%i%'


select * from Customers where CustomerName like '[jtb]%'
select * from Customers where CustomerName not like '[jtb]%'

select * from Customers where CustomerName like '%[knl]'
select * from Customers where CustomerName not like '%[knl]'

select * from Customers where CustomerName like '%[isj]%'
select * from Customers where CustomerName not like '%[isj]%'

select * from Customers where CustomerName like '[h-z]%'
select * from Customers where CustomerName not like '[h-z]%'


select * from Customers where CustomerName like 'S____'
select * from Customers where CustomerName not like 'S____'
select * from Customers where CustomerName like '__c_'
select * from Customers where CustomerName like 'T___'
select * from Customers where CustomerName like '__m'

select * from Customers order by CustomerName 
select * from Customers order by CustomerName desc

select * from Customers order by CustomerID
select * from Customers order by CustomerID desc

select * from Customers order by CustomerName, City
select * from Customers order by City,CustomerName
select * from Customers order by PostalCode desc

select top 3 * from Customers order by CustomerName
select top 4 * from Customers order by CustomerName desc
select top 1 * from Customers order by CustomerID 
select top 1 * from Customers order by CustomerID desc
select top 1 * from Customers order by CustomerName desc

select * from Customers order by CustomerName desc 
offset 2 rows
fetch next 2 rows only

select * from Customers order by CustomerID desc
offset 4 rows 
fetch next 1 rows only

select * from Customers order by CustomerID 
offset 2 rows 
fetch next 2 rows only

select * from Customers order by CustomerID 
offset 2 rows 
fetch next 1 rows only

select max(CustomerID) as 'max id' from Customers
select max(CustomerID) from Customers
select min(CustomerID) as 'min id' from Customers
select avg(CustomerID) as 'avg of id' from Customers
select sum(CustomerID) as 'sum of id' from Customers
select sum(PostalCode) as 'sum of id' from Customers
select COUNT (CustomerID) as 'total count' from Customers
select COUNT (City) as 'city' from Customers
select COUNT (distinct City) as 'city' from Customers
select COUNT (*) as 'total count' from Customers