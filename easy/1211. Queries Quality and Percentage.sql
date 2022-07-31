/* Write your T-SQL query statement below */


select query_name,
round(SUM(rating*1.0/position) / count(query_name),2) as quality,
round((sum(case when rating < 3 then 1 else 0 end)*1.0 / count(query_name))*100,2) as poor_query_percentage
from Queries
group by query_name
