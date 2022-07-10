/* Write your T-SQL query statement below */


-- select 
-- v.customer_id
-- ,count(1) as count_no_trans
-- from Visits v 
-- left join Transactions t on v.visit_id = t.visit_id
-- where t.visit_id is null
-- group by v.customer_id


-- select customer_id,count(1) count_no_trans
-- from Visits 
-- where visit_id not in
-- (
-- select distinct visit_id from Transactions
-- )
-- group by customer_id
