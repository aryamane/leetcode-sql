/* Write your T-SQL query statement below */


select extra as report_reason, count(distinct post_id) as report_count
from Actions
where action_date=dateadd(day,-1,'2019-07-05') and action = 'report' 
group by extra

