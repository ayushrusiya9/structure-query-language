#sub query

use dummy;
select * from employees;
select * from offices;

select firstname,lastname from employees where 
officecode in (select officecode from offices
where country = "USA");


#Retrieve the customers whose creditLimit is above the average credit limit of all
-- customers.
select * from customers;
select * from orders;

select * from customers where creditlimit >
(select avg(creditlimit) as avg_lim from customers);

#Find the customer(s) with the highest credit limit using a subquery.
select * from customers where 
creditlimit = (select max(creditlimit) as max_t from customers);

#Get the customers who have placed at least one order (assuming orders table has a
#customerNumber foreign key).

select * from customers
where creditlimit > (
select max(creditlimit)
from customers 
where country = 'usa')
order by creditlimit desc limit 1;

select creditlimit
from customers 
where country = 'usa'
order by creditlimit desc
limit 1;

select * from customers 