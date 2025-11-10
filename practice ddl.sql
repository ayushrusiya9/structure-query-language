create database collage;
use collage;
create table student(stu_id int primary key, name varchar(30) not null, course varchar(30), branch varchar(40)); 
insert into student(stu_id,name,course,branch) value(1,"ayush","b.tech","CSE");

select * from student;

alter table student add year int not null;

update student 
set year = 1
where stu_id = 1;

alter table student
change name stu_name varchar(30);

alter table student 
change course stu_course varchar(40);

alter table student
rename column stu_name to name;

rename table student to students;

select * from students;

rename table students to student;

alter table student
rename column stu_course to course;

select * from student;

alter table student 
change stu_id id int;

drop table student;

select * from student;

drop database collage;

use collage;