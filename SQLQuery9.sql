create table author
(
authorid int primary key,
authorname varchar(20),
authorcontact int,
authorcity varchar(20)
)
alter table author alter column authorcontact numeric(20,2)
insert into author values(101, 'Abhishek Singhavi', 8857964515, 'Delhi'),
(102, 'Gyan Bhushan', 9657440655, 'Mumbai'), (103, 'Sourav Ganguly', 7218853737, 'Kolkata'),
(104, 'Dr.Miniya Chatrjee', 8087400986, 'Kolkata'), (105, 'Harindar S.Sikka', 8087404334, 'Ludhiana')


create table awardmaster
(
awardtypeid int primary key,
awardname varchar(20),
awardprice int
)
insert into awardmaster values (11, 'National Award', 25000),(21, 'Booker Prize', 40000),
(31, 'Jananpith Award', 38500), (41, 'Yuva Purskar', 40000), (51, 'Sarswati Samman', 51000)

create table book
(
bookid int primary key,
bookname varchar(25),
bookprice int,
authorid int 
constraint fk_athid foreign key (authorid) references author (authorid)
)
insert into book values(5142, 'Straignt Talk', 980, 101), (1142, 'Calling Sehmat', 980, 105),
(4250, 'Straignt Talk', 750, 102), (3512, 'A Century No Enough', 1000, 103), 
(4443, 'Indias Heritage', 1300, 104), (9912, 'Exam Warriors', 650, 105), (7875, 'Paramweer Parmane', 900, 103),
(5212, 'Imperfect', 700, 102)
insert into book values(5152, 'The India', 1050, 101)
insert into book(bookid, bookname, bookprice) values (3698, 'Imperfect', 800)
insert into book(bookid, bookname, bookprice) values (9898, 'My Journey', 950)

create table award
(
awardid int primary key,
awardtypeid int,
constraint fk_awtypeid foreign key(awardtypeid) references awardmaster(awardtypeid),
authorid int,
constraint fk_awid foreign key(authorid) references author (authorid),
bookid int, 
years int,
)
alter table award add constraint fk_bid foreign key(bookid) references book(bookid) 

insert into award values(1001,11,101,5142,2001), (1002,21,102,1142,2011),(1003,31,103,4250,2008), (1004,41,104,3512,2018), (1005,51,101,5142,2020),
(1006,41,101,5142,2011), (1007,31,102,4250,2016)

sp_help award

--find the authod who got awards price 50,000


