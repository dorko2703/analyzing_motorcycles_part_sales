select
	distinct product_line
	,TO_CHAR(date, 'Month') AS month
	,warehouse
	,sum(total) - sum(payment_fee)	as net_revenue
from sales
where client_type = 'Wholesale'
group by 1, 2, 3
order by 1,2,4 desc
