# cte common table expression
use dummy;
  
with cust_info as (
select * from customers where country = "USA")
select contactfirstname , contactlastname from cust_info;

with managers_emp_info as (
select firstname, lastname, reportsto from employees)
select m.firstname,m.lastname, e.firstname,e.lastname 
from employees e join managers_emp_info m 
on e.employeenumber = m.reportsto;