create database cases;

use cases;

create table employees(emp_id int primary key, emp_name varchar(30) not null, salary decimal(10,2) not null, Dept varchar(20) not null, experience int);

insert into employees(emp_id,emp_name,salary,dept,experience) value(1,'Alice', 60000, 'HR', 5), (2, 'Bob', 85000 , 'IT' ,10),
(3 ,'Charlie' ,40000, 'Finance', 3),
(4, 'David', 75000 , 'IT', 8),
(5, 'Emma' ,30000 ,'Finance', 2);

select * from employees;

select *,
case when salary <= 30000 then "Low_salery"
when salary between 31000 and 50000 then "medium_salary"
else "high_salary"
end as salary_devision from employees;

select *,
case when experience < 5 then "bignners"
when experience between 5 and 8 then "intermidet"
when experience > 8 then "expert"
end as level_emp from employees;

#fourth quw
select *,
case when salary > 80000  then salary * 15 / 100
when salary between 50000 and 80000  then salary * 10 / 100
when salary < 50000 then salary * 5 / 100
end as bonus from employees;


select *, 
case when dept = "hr" then "Humen Resource"
when dept = "it" then "information technolgy"
when dept = "finance" then "finance management"
end as full_form from employees;

select *,
case when salary > 50000 then 10
when salary between 51000 and 70000 then 15
else 20
end as tax from employees;


