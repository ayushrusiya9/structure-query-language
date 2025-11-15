create database company_db;

use company_db;

create table department(dept_id int primary key auto_increment, dept_name varchar(40) unique);

create table employees(emp_id int primary key auto_increment, emp_name varchar(30) not null, salary decimal(10,2) check (salary > 0), dept_id int, hire_date date default (current_date),
foreign key (dept_id) references department(dept_id));

create table sales(sale_id int primary key auto_increment,emp_id int, region varchar(30), amount decimal(10,2) check (amount > 0), sale_date date default (current_date),
foreign key (emp_id) references employees(emp_id));

insert into department(dept_name) value("HR"),("IT"),("SALES"),("FINANCE");

insert into employees(emp_name, salary, dept_id)
values ('Aman', 35000, 2),
('Riya', 40000, 2),
('Karan', 25000, 3),
('Simran', 30000, 1),
('Rohit', 28000, 3);

insert into sales(emp_id,region,amount)
values (3, 'North', 1500),
(3, 'South', 2000),
(5, 'East', 1800),
(5, 'West', 2200),
(3, 'North', 1700),
(4, 'South', 1300),
(1, 'East', 2400);

select * from department;
select * from employees;
select * from sales;

# yha se practice que karenge
#1.Find total sales amount done by each employee.
select emp_id, sum(amount) as tottal_sale
from sales
group by emp_id;

#2. Show region-wise total sales.
select region, sum(amount) as total_sale
from sales
group by region;

#3. Find how many sales each employee made.
select emp_id, count(*) as total_transaction
from sales
group by emp_id; 

#Show total sales per region, but only for regions where total sales > 3000.
select region, sum(amount) AS total_sale
from sales 
group by region
having sum(amount) > 3000;

#Show employees who have made more than 2 sales transactions.
select emp_id , count(*) as total_sale
from sales
group by emp_id
having count(*) > 2;

#Show average sale amount per region.
select region, sum(amount) as total_sale
from sales
group by region;

#Combine WHERE + GROUP BY + HAVING
-- (Find total sales per region but consider only those sales where amount > 1500 and total > 3000)
select region, avg(amount) as avg_sale
from sales where amount > 1500 and amount < 3000
group by region;

#Find which employee sold the highest total amount.
select emp_id , sum(amount) as total_sale
from sales 
order by amount desc
limit 1;

#Show total sales per region, but only for regions where total sales > 3000.
select region , sum(amount) as total_sale
from sales
group by region
having sum(amount) > 3000;

#Show employees who have made more than 2 sales transactions.
select emp_id, count(*) as total_sale
from sales
group by emp_id
having count(*) > 2;

#Show average sale amount per region.
select region, avg(amount) as avg_sale
from sales
group by region;

#Find total sales per region but consider only those sales where amount > 1500 and total > 3000)
select region, sum(amount) as total_sale
from sales
where amount > 1500
group by region 
having sum(amount) > 3000;


#Find which employee sold the highest total amount.
select emp_id, sum(amount) as total_sale 
from sales
group by emp_id
order by total_sale desc
limit 1;

#with join
SELECT e.emp_name, SUM(s.amount) AS total_sales
FROM employees e
JOIN sales s ON e.emp_id = s.emp_id
GROUP BY e.emp_name
HAVING SUM(s.amount) > 3000;

