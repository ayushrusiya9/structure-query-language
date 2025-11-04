use dummy;

use cybrom;

create table demo(id int primary key, name varchar(30) not null, age int not null, mobile_no bigint unique not null);
alter table demo rename column id to demo_id;

drop table demo;
create table demo(id int primary key, name varchar(30) not null, age int not null check (age >= 18), mobile_no bigint unique not null);

create table demo2(id int primary key, name varchar(30) not null, course varchar(30), branch varchar(15) not null, city varchar(40) default  'bhopal', demo_id int,
foreign key (demo_id) references demo(demo_id));


drop table demo2;
   
create table demo2(id int primary key, name varchar(30) not null, course varchar(30), branch varchar(15) not null, city varchar(40) default  'bhopal', demo_id int,
foreign key (demo_id) references demo(demo_id) );

insert into demo(demo_id,name,age,mobile_no) value(1,'ayush',21,12321232),(2,'piyush',22,11111111);

insert into demo2(id,name,course,branch,city,demo_id) value(1,'ayush','b.tech','cse','indore',1),(2,'ravi','b.tech','cse','indorepur',2);