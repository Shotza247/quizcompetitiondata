/*select first_name,last_name, 
quiz_points,team
from people
where quiz_points = 
(select max(quiz_points) from people);*/

/*select team,max(quiz_points) as 'Max Points',
AVG(quiz_points) as 'Average Points',
min(quiz_points) as 'Min Points',
COUNT(id_number) as 'No. of Members'
from people
group by team
order by 'Average Points' DESC;*/

/*SELECT team,COUNT(team) as 'No. of Members above avg'
from people
where quiz_points > 
(select AVG(quiz_points) from people)
group by team;

SELECT * from states;

select first_name,last_name, state_code
from people
where state_code = 
(select state_abbrev from states
where state_name = 'New York');*/

select st.state_name, max(ppl.quiz_points) as 'Max Points',
AVG(ppl.quiz_points) as 'Average Points'
from people ppl
join states st 
on st.state_abbrev = ppl.state_code
group by st.state_name
order by 'Average Points' DESC;