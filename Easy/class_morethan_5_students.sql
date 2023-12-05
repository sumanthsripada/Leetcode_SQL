--- SOLUTION 1 ---
select class from (
select class, count(1) from courses 
group by class 
having count(1) >= 5
) sq

  
--- SOLUTION 2 ---
SELECT class FROM courses 
GROUP BY class 
HAVING COUNT(distinct student)>=5;
