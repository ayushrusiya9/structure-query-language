 create database joins;
 
 use joins;
 
 create table table1(id int);
 create table table2(id int);
 
 insert into table1(id) values (1),(2),(3),(3),(4),(null),(null);
 insert into table2(id) values (1),(2),(2),(3),(3),(3),(3),(null),(null);
 
 select * from table1 inner join table2
 on table1.id = table2.id; 
 
 use dummy;
 
 # jinhone orderder diye the mtlb jo customers me bhi hai or orders ma bhi hai mtlb atleast one order toh place kiya hai 
 
 select * from customers inner join orders
 on customers.customernumber = orders.customernumber;
 
 # condition ke base oer
 select customername,city,state,country from customers inner join orders
 on customers.customernumber = orders.customernumber;
 
 #woh customers jisne ek bhi order place nhi kiya 
 select * from customers left join orders
 on customers.customernumber = orders.customernumber
 where ordernumber is null;  
 
 
 #cross join
 select * from customers cross join orders;
 
 #netural join if col are same then inner join otherwise cross join
 select * from customers natural join orders ;
 
 #abiguity errror 1052
 select customernumber,customername,city,status
 from customers inner join orders 
 on customers.customernumber = orders.customernumber;
 
 #solve 1052 error
select c.customernumber,c.customername,c.city,o.status
from customers as c inner join orders as o
on c.customernumber = o.customernumber; 
 
select * from orderdetails;
describe orderdetails; 

#3 table join
select c.customername, c.country,c.creditlimit,o.status,od.quantityOrdered 
from customers as c inner join orders as o on c.customernumber = o.customernumber
inner join orderdetails as od on o.ordernumber = od.ordernumber;

#total price kerwaya hai
select c.customername, c.country,c.creditlimit,o.status,(od.quantityOrdered * od.priceeach) as total 
from customers as c inner join orders as o on c.customernumber = o.customernumber
inner join orderdetails as od on o.ordernumber = od.ordernumber;
 
 #last higest 
 select c.customername, c.country,c.creditlimit,o.status,(od.quantityOrdered * od.priceeach) as total 
from customers as c inner join orders as o on c.customernumber = o.customernumber
inner join orderdetails as od on o.ordernumber = od.ordernumber limit 1;

#gruop 
select c.customername, c.country,c.creditlimit,o.status,sum(od.quantityOrdered * od.priceeach) as total 
from customers as c inner join orders as o on c.customernumber = o.customernumber
inner join orderdetails as od on o.ordernumber = od.ordernumber group by c.customername;
 
 