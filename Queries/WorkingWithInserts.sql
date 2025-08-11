/*INSERT into people (first_name) VALUES ('Romeo');*/

/*UPDATE people 
set first_name='Palesa'
where id_number = 1002;*/

/*update people 
set last_name = 'Morrison' 
where last_name = ( select last_name
from people
where first_name = 'Carlos'
and last_name = 'Morrrison');*/

/*SELECT first_name,last_name,company
FROM people
where company like '%Corp%';*/


/*update people 
set company = 'MegaCorp Inc'
where company like 'Fisher LLC'*/

/*update people 
set company = 'MegaCorp Inc'
where company like 'MegaCopr Inc'*/

/*delete 
from people
where first_name = 'Romeo';*/

/*SELECT * from people;*/

select people.id_number,people.first_name,
people.state_code,people.team 
from people
join states
on people.state_code = states.state_abbrev
where people.first_name = 'Alice'
and states.state_name = 'Florida'
and people.team like '%Cobras%';


