select a.id
from Weather a, Weather b
where a.recordDate = dateadd(day,1,b.recordDate) and a.temperature > b.temperature
