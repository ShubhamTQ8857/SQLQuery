create table product
(
id int unique,
pname varchar(20) not null,
price numeric(12,2) primary key,
company varchar(20)
)
select * from product

insert into product values(11, 'TV', 25000.00, 'Sony')
insert into product values(12, 'Fridge', 35000, 'Samsung')
insert into product values(13, 'Washing Machine', 45800.00, 'IFB')
insert into product values(14, 'Cooler', 12000.00, 'Bajaj')
insert into product values(15, 'Oven', 25000.00, 'LG')
insert into product values(16, 'SmartTV', 45000.00, 'Sony')
insert into product values(17, 'iPhone', 120000.00, 'Apple')
insert into product values(18, 'SmartWatch', 12500, 'Realme')
insert into product values(19, 'Laptop', 55700.00, 'Dell')
insert into product values(20, 'PowerBank', 2500, 'Sony')

select * from product where price>20000
select * from product where company='LG'
select * from product where price between 50000 and 1200000
select distinct company from product 
select * from product where company in ('sony','samsung') 

