select e.name as employee
from employee e inner join employee m
on e.managerid = m.id
where e.salary > m.salary
