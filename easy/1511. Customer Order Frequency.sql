select c.customer_id, c.name
from Orders o
inner join Customers c on o.customer_id = c.customer_id
inner join Product p on o.product_id = p.product_id
group by c.customer_id, c.name
having sum(case when year(order_date) = '2020' and month(order_date) = '06' then quantity*price end) >= 100
and sum(case when year(order_date) = '2020' and month(order_date) = '07' then quantity*price end) >= 100
