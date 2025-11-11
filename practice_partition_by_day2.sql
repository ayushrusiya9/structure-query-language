use window_function;

select *,
sum(sales_amount) over(partition by sales_rep order by sales_amount desc) as month
from sales_data; 

select *,
sum(sales_amount) over(partition by region) as avg_amount
from sales_data; 

select *,
lag(sales_amount) over(partition by sales_rep order by sales_amount) as last_month
from sales_data; 

select *,
lead(sales_amount) over(partition by sales_rep order by sales_amount) as last_month
from sales_data; 


select *,
sum(sales_amount) over(partition by region) as total, 
sales_amount * 100 / sum(sales_amount) over(partition by region) as total_sale_percentage
from sales_data;

select *,
max(sales_AMOUNT) over(partition by month ) as total_sales
from sales_data;

select *,
lag(sales_amount) over(partition by sales_rep order by month) as lag_amount,
case when lag(sales_amount) over(partition by sales_rep order by month) > sales_amount then "increase"
when lag(sales_amount) over(partition by sales_rep order by month) < sales_amount then "decrease"
else "not change"
end as lag_division
from sales_data;

select *,
row_number() over(partition by month order by sales_amount) as row_num
from sales_data;

select *,
avg(sales_amount) over(partition by region order by sales_amount) as avg_amount,
sales_amount -  avg(sales_amount) over(partition by region order by sales_amount) as comapred_avg_amount
from sales_data;

