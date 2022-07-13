/* Write your T-SQL query statement below */


select 
round((count(case when order_date=customer_pref_delivery_date then delivery_id else null end) * 1.0
/ nullif(count(distinct delivery_id),0))*100,2) as immediate_percentage
from Delivery
