
drop table bank

create table bank
(
  accno int,
  accname varchar(20),
  emailid varchar(20) unique,
  city varchar(10) default('Pune'),
  balance int, 
  constraint acc_balance primary key(accno),
  constraint check_balance check(balance>0),  
)

alter table bank add accholderage int
alter table bank add constraint ch_age check(accholderage>=18)
alter table bank drop constraint ch_age

alter table bank add branch varchar(20)
-- set default location of branch is kothrud
alter table bank add constraint de_branch default 'Kothrud' for branch

exec sp_help bank