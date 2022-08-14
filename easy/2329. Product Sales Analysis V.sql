/* Write your T-SQL query statement below */

select user_id, sum(spending) spending
from(
select s.user_id, quantity*price as spending
from Sales s 
inner join Product p on s.product_id = p.product_id
)a 
group by user_id
order by spending desc, user_id


