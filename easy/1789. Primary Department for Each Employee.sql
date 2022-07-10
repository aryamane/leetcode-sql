/* Write your T-SQL query statement below */

select employee_id,department_id 
from 
(select employee_id, department_id, primary_flag,
count(employee_id) over(partition by employee_id) as cnt
from Employee)a
where cnt=1 or primary_flag='Y'
