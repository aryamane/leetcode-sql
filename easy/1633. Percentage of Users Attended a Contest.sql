/* Write your T-SQL query statement below */

select contest_id, 
round(cast(count(user_id) as decimal) / (select count(user_id) c from Users) * 100,2) as percentage
from register
group by contest_id
order by percentage desc, contest_id
