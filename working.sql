select first_name,last_name, age 
from people
where 
age > (select avg(age) as "avg" from people)
ORDER BY age