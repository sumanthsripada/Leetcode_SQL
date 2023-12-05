with cte as (
select id, recordDate, temperature, 
lag(temperature) over(order by recordDate) as previoustemp,
lag(recordDate) over(order by recordDate) as previousdate
from weather 
)
select distinct id 
from cte 
where temperature > previoustemp and datediff(recordDate,previousdate) = 1
