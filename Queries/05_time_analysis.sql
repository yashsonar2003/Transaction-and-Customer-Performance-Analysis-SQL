use transaction;

-- 1) Modthly Revenue Trend:
select
	date_format(transaction_date, '%Y-%m') as month,
    sum(amount) as monthly_revenue
from transaction
group by month
order by month;

-- 2) Running Revenue:
select
	transaction_date,
    sum(amount) as daliy_revene,
    sum(sum(amount)) over (order by transaction_date) as running_revenue
from transaction
group by transaction_date
order by transaction_date;