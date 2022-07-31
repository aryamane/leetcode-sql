select employee_id,count(employee_id) over(partition by team_id) as team_size
from Employee
group by employee_id,team_id
