select employee.name as Employee
from Employee employee, Employee manager
where employee.managerID = manager.id
and employee.salary > manager.salary
