create table Doctor
(
docid int primary key,
firstname varchar(25),
lastname varchar(25),
speciality varchar(40)
)
insert into doctor values(10,'Dr.Shubham','Khadke','Cardiologist')
insert into doctor values(20,'Dr.Sarthak','Joshi','Pediatrician')
insert into doctor values(30,'Dr.Sandhya','Thakur','Orthopedic Surgeon')
insert into doctor values(40,'Dr.Prakash','Mehta','Pediatrics')


create table Patients
(
ptid int primary key,
ptfname varchar(20),
ptlname varchar(20),
ptgender varchar(5),
ptbirthdate date,
ptcity varchar(15),
pid int,
constraint fk_pid foreign key(pid) references province(pid),
ptallergies varchar(40),
ptheight decimal,
ptweight decimal
)
insert into Patients(ptid,ptfname,ptlname,ptgender,ptallergies, ptheight,ptweight) values (56,'Santosh','Kawade','Male',null,172,67)
insert into Patients values(51,'Rahul','Muttha','Male','2023/08/22','Ahmednagar',11,'allergic rhinitis(hay fever)',167.64,68)
insert into Patients values(52,'Lal','Pandey','Male','2022/12/06','Patna',15,'eczema',170,75)
insert into Patients values(53,'Nisha','Chordiya','F','2023/07/12','Jaipur',12,'food allergy',165,61)
insert into Patients values(54,'Jethalal','Gada','Male','2021/02/15','Surat',13,'asthama',160,79)
insert into Patients values(55,'Seema','Vidhate','F','2023/12/10','Pune',11,'cancer',170,75)

update Patients set ptbirthdate='1990/08/22' where ptid=51
update Patients set ptbirthdate='1988/12/06' where ptid=52
update Patients set ptbirthdate='1992/07/12' where ptid=53
update Patients set ptbirthdate='1999/02/15' where ptid=54
update Patients set ptbirthdate='1995/12/10' where ptid=55



create table Admissions
(
adid int primary key,
ptid int,
constraint fk_ptntid foreign key(ptid) references Patients(ptid),
addate date,
addisgedate date,
addiagnosis varchar(35),
docid int,
constraint fk_did foreign key(docid) references Doctor(docid)
)
insert into Admissions values(1001,51,'2023/05/12','2023/05/28','chest pain',10)
insert into Admissions values(1002,52,'2023/10/25','2023/10/28','mild concussion',20)
insert into Admissions values(1003,53,'2022/11/17','2022/12/02','dehydrated',30)
insert into Admissions values(1004,54,'2023/02/08','2023/02/15','mild attack',40)
insert into Admissions values(1005,51,'2022/06/14','2022/06/28','skin allergy',20)

create table province
(
pname varchar(25),
pid int primary key
)

insert into province (pid,pname) values (11,'Maharashtra')
insert into province (pid,pname) values (12,'Rajsthan')
insert into province (pid,pname) values (13,'Gujrat')
insert into province (pid,pname) values (14,'Assam')
insert into province (pid,pname) values (15,'Bihar')

--1.Show the first name, last name and gender of patients who’s gender is ‘M’
select ptfname, ptlname, ptgender from Patients where ptgender='Male'

--2.Show the first name & last name of patients who does not have any allergies
select ptfname, ptlname from Patients where ptcity is null 
select ptfname, ptlname from Patients where ptallergies is null

--3.Show the patients details that start with letter ‘C’
select * from patients where ptfname like 's%'

--4.Show the patients details that height range 100 to 200
select * from Patients where ptheight between 167 and 173

--5.Update the patient table for the city column. Replace ‘Nashik’ where city is null
update Patients set ptcity='nashik' where ptcity is null

--6.Show how many patients have birth year is 2020
select count (ptid) as 'count' from Patients where year(ptbirthdate)='1995' 
select count (ptid) as 'count' from Patients where year(cast(ptbirthdate as date))=1995

--7.Show the patients details who have greatest height
select max(ptheight) as 'Max Hieght' from Patients

--8.Show the total amount of male patients and the total amount of female patients in the patients table.
select ptgender, count(ptid) as 'count' from Patients group by ptgender
select count(ptgender) as 'total count' from Patients

--9.Show first and last name, allergies from patients which have allergies to either 'food alergy' or 'cancer'.
--Show results ordered ascending by allergies then by first_name then by last_name.
select ptfname, ptlname, ptallergies from Patients where ptallergies ='food allergy' or  ptallergies ='cancer' 
order by ptallergies,ptfname, ptlname

--10.Show first_name, last_name, and the total number of admissions attended for each doctor.
--Every admission has been attended by a doctor.
select CONCAT(d.firstname,' ',d.lastname), COUNT(d.docid) as 'count'
from Doctor d
inner join Admissions a on d.docid=a.docid
group by CONCAT(d.firstname,' ',d.lastname) 

--11.For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name 
--who diagnosed their problem.
select adid , concat(p.ptfname,' ',p.ptlname) as patient_name,a.addiagnosis,
concat(d.firstname,' ',d.lastname) 
as doctor_name                 
from Doctor d
inner join Admissions a  on d.docid=a.docid
inner join  Patients p on p.ptid=a.ptid

select * from province
select * from Doctor
select * from Admissions
select * from Patients

