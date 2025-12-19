use transaction;

-- 1) Revenue per customer:
select
	c.customer_id,
    c.customer_name,
    sum(t.amount) as total_spending_per_customer
from transaction t
join customer c
	on t.customer_id = c.customer_id
group by c.customer_id, c.customer_name
order by total_spending_per_customer desc;

-- 2) Top 10 customer:
select *
from (
	select
		c.customer_id,
        c.customer_name,
        sum(t.amount) as total_spend,
        dense_rank() over (order by sum(t.amount) desc) as customer_rank
	from transaction t 
    join customer c
		on t.customer_id = c.customer_id
	group by c.customer_id, c.customer_name
) x
where customer_rank <= 10;