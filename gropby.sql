use groupby;

select c.country, sum(o.total_amount) as total_sale 
from customers c inner join orders o
on c.customers_id = o.customers_id group by total_sale desc 
limit 5;

select * from products;
select * from orders;
select * from customers;
select * from order_details;

SELECT p.product_id,p.product_name, SUM(od.quantity) AS total_units_sold
FROM products p INNER JOIN order_details od
ON p.product_id = od.product_id
GROUP BY p.product_id
ORDER BY total_units_sold DESC
LIMIT 5;

SELECT p.product_id,p.product_name, p.category , sum(od.quantity * od.unit_price) as total_revanue 
FROM products p INNER JOIN order_details od
ON p.product_id = od.product_id
GROUP BY p.product_id
ORDER BY total_revanue DESC ;

select monthname(order_date) as order_month,
count(customer_id) as total_count 
from orders group by order_month;

select date_format(order_date,"%m") as order_month,
count(customer_id) as total_count 
from orders group by order_month;