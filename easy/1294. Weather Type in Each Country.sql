/* Write your T-SQL query statement below */


select c.country_name, 
case when avg(weather_state*1.0) <= 15.0 then 'Cold'
when avg(weather_state*1.0) >= 25.0 then 'Hot'
else 'Warm' end as weather_type
from Countries c 
inner join Weather w on c.country_id = w.country_id
and year(w.day) = 2019 and month(w.day) = 11
group by c.country_name
