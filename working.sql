select first_name,last_name, age 
from people
where age = (select max(age) from people)
ORDER BY age