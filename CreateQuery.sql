create database cybrom;
use cybrom;
use sakila;
show databases;

use cybrom;
create table info(id int, name varchar(255),city char(255), salery decimal(5, 2), curr_date date  );
select * from info;
select name,city from info;

insert into info (id,name,city,salery,curr_date)
values(1,"Ayush","Bhopa",200,"2025-10-07"),(1,"Ayush","Bhopa",200,"2025-10-07");
select * from info;

















































































