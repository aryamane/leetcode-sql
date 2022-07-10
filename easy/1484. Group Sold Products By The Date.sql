/* Write your T-SQL query statement below */


select sell_date, 
count( product) as num_sold, 
string_agg( product,',') within GROUP (ORDER BY product asc)  products
from (select distinct * from Activities)a
group by sell_date
order by sell_date
