use transaction;

-- 1) Total Revenue:
select
	sum(amount) as total_revenue
from transaction;

-- 2) Total Customers
select
	count(distinct customer_id) as total_customers
from transaction;

-- 3) Cancellation Rate
select
	count(case when status = 'Cancelled' then 1 end) * 100.0
    / count(*) as cancellation_rate
from transaction;