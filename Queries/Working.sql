/*select first_name,last_name
,age,quiz_points, company
from people
where state_code = 'CA'
and shirt_or_hat = 'shirt'*/

/*select * 
from people
where shirt_or_hat = 'hat'
and company like '%Inc'*/

/*select top 10 * 
from people 
where shirt_or_hat = 'hat';*/

/*select top 20 *
from people
where team <> 'Cosmic Cobras'
ORDER BY quiz_points DESC;*/

/*select DISTINCT(team)
from people
WHERE shirt_or_hat = 'hat'
ORDER BY team;*/

/*select first_name,last_name,team,shirt_or_hat
from people
where state_code = 'CO'
ORDER BY team,shirt_or_hat
, last_name DESC;*/

/*select * from states*/

/*select people.first_name,people.last_name,
states.state_name,people.team,
people.quiz_points 
from people
join states
on people.state_code = states.state_abbrev
where company like '%Inc'
and quiz_points > 65
ORDER BY quiz_points;*/

/*select first_name,COUNT(first_name) as 'No. of Occurences'
from people
group by first_name;*/

/*SELECT state_code,count(state_code) as 'No. of participants'
FROM people
GROUP BY state_code
ORDER BY state_code;*/

/*select st.region,ppl.team,count(ppl.team) as 'No. of Memebers'
from people ppl
join states st
on ppl.state_code = st.state_abbrev
group by st.region,ppl.team;*/

select DISTINCT(team)
from people;
