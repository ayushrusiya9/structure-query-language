use cybrom;

create table Doctor(doct_id int primary key,
doct_name varchar(40) not null,
city varchar(40) default "bhopal");

create table Petiant(pant_id int primary key, 
pant_name varchar(40),
doct_id int,
foreign key(doct_id) references doctor(doct_id));


# relationship Keys
# primary key (unique and not null)
# and foreign key
use cybrom;
create table doctor(doct_id int primary key,
doct_name varchar(40) not null,
doct_city varchar(40) not null default "Bhopal");
select * from doctor;
create table patient(patient_id int primary key,
patient_name varchar(40) not null,
doct_id int,
foreign key(doct_id) references doctor(doct_id));
select * from patient;

insert into doctor(doct_id,doct_name)
values (1,"AA"),(2,"BB"),(3,"CC"),(4,"DD"),(5,"EE");
insert into patient (patient_id,patient_name,doct_id)
values (101,"FF",1),(102,"GG",1),(103,"HH",2),(104,"II",4);

#select * from doctor d join patient p on 
#d.doct_id = p.doct_id where d.doct_id = 1;

select * from doctor where doct_id = 1;

create table doctor1(doct_id int,
doct_name varchar(30),
doct_city varchar(30),
primary key(doct_id,doct_name));
describe doctor1;