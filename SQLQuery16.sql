create Table Customer2
(
Cust_Name varchar (25),
city varchar(20),
statee varchar(30)
)
insert into Customer2 values('Riya','Pune','Maharashtra')
insert into Customer2 values('Shreya','Chandigarh','Punjab')
insert into Customer2 values('Amit','Jabalpur','Madhya Pradesh')
insert into Customer2 values('Sumit','Banglore','Karnataka')
insert into Customer2 values('Bharat','Chennai','Tamil Nadu')
insert into Customer2 values('Riya','Pune','Maharashtra')
insert into Customer2 values('Bharat','Chennai','Tamil Nadu')


create table Supplier
(
Sup_Name varchar(25),
city varchar(20),
statee varchar(25)
)
insert into Supplier values('Supplier 1','Mumbai','Maharashtra')
insert into Supplier values('Supplier 2','Lucknow','Uttar Pradesh')
insert into Supplier values('Supplier 3','kochi','Kerala')
insert into Supplier values('Supplier 4','Indore','Madhya Pradesh')
insert into Supplier values('Supplier 5','Chennai','Tamil Nadu')
insert into Supplier values('Supplier 3','kochi','Kerala')
insert into Supplier values('Supplier 1','Mumbai','Maharashtra')

----------------------------------------------------------------------------------------------
select Cust_Name as name,city , statee from Customer2
union
select Sup_Name as name, city , statee from Supplier
-------------------------------------------------------------------------------------------------
select Cust_Name as name,city , statee from Customer2
Union all
select Sup_Name as name, city , statee from Supplier
---------------------------------------------------------------------------------------------------








