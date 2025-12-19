use transaction;

-- 	Top Customer in each city:
select *
from (
		select
			c.city,
            c.customer_id,
            c.customer_name,
            sum(t.amount) as total_spending,
            rank() over (
				partition by c.city
                order by sum(t.amount) desc
                ) as customer_rank
		from transaction t
        join customer c
			on t.customer_id = c.customer_id
		group by c.city, c.customer_id, c.customer_name
	) z
where customer_rank = 1;
