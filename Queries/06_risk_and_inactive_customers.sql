use transaction;

-- 1) Customer inactive for last 60 days
select
	c.customer_id,
    c.customer_name,
    max(t.transaction_date) as last_transcation
from  customer c
left join transaction t
	on c.customer_id = t.customer_id
group by c.customer_id, c.customer_name
having max(t.transaction_date) < curdate() - interval 60 day
	or max(transaction_date) is null;

-- 2) High cancellation customers:
select
	customer_id,
    count(case when status = 'Cancelled' then 1 end) as cancelled_count
from transaction
group by customer_id
having cancelled_count >= 3;