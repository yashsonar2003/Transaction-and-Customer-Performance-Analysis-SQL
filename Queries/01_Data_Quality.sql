use transaction;

# Data Quality:

-- 1) Total Rows:
select count(*) from transaction;
select count(*) from customer;

-- 2) Check missing customer in transactions:
select count(*) as missing_customers
from transaction t
left join customer c
	on t.customer_id = c.customer_id
where c.customer_id is null;

-- 3) Check Duplicate Customer:
select
	customer_id,
	count(*) as total_count
from transaction
group by customer_id 
having count(*) > 1;
