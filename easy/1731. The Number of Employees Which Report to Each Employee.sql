/* Write your T-SQL query statement below */

select m.employee_id,m.name,count(distinct e.employee_id) as reports_count,
cast(round(sum(e.age)/cast(count(distinct e.employee_id) as float),0) as int) as average_age
from Employees e, Employees m 
where e.reports_to = m.employee_id
group by m.employee_id,m.name
order by m.employee_id
