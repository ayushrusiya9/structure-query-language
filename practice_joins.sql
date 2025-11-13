use dummy;

select * from customers;

select * from customers c inner join orders o
on c.customernumber = o.customernumber;

select * from customers natural join orders;

select * from customers c left join orders o
on c.customernumber = o.customernumber
union
select * from customers c right join orders o
on c.customernumber = o.customernumber;

select * from customers c left join orders o
on c.customernumber = o.customernumber 
where ordernumber is null;

