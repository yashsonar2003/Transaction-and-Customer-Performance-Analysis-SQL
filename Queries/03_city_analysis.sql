use transaction;

-- 1) Revenue by city:
select
	city,
	sum(amount) as revenue_by_city
from transaction
group by city
order by revenue_by_city desc;

-- 2) Cancellation % by city:
select
	city,
    count(case when status = 'Cancelled' then 1 end) * 100.0
    / count(*) as cancellation_percentage
from transaction
group by city
order by cancellation_percentage desc;