/* Write your T-SQL query statement below */


select name,sum(amount) as balance
from Users u 
inner join Transactions t on u.account = t.account
group by name
having sum(amount) > 10000
