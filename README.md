
# Data-Analytics Postgresql

SELECT *    --*wildcard , it shows everything*--
FROM actor;

Select email, first_name, last_name
From customer;

select distinct rental_duration
from film;

select count (distinct rating)
from film;

select customer_id, amount
from payment
where amount < 1 or amount > 8;

select customer_id, amount
from payment
where amount != 4.99;

select rental_id, customer_id, return_date
from rental 
where customer_id in (1,2,3,5,6) 

select first_name, last_name  
from actor
where first_name  like 'J%y';

select sum(amount), customer_id
from payment group by customer_id order by customer_id desc;

Select count (rating) 
from film
where rating = 'R' group by rental_rate between 5 and 15; 

Select count (film_id) 
from film
where title like '_Truman%';

Select customer_id, sum(amount)
from payment group by customer_id having sum(amount)>200

create table Jumia( user_id serial primary key, ---9
username VARCHAR (40) , Password varchar (300) not null, Email_Address Varchar (150) , Phone_no int, location varchar (20));

Insert into Jumia (user_id, username, password, Email_Address, Phone_no, location)  --10
values
 (001, 'ory','Glo12Me', 'Glory12@gmail.com', 083237771, 5 ),
 (002, 'lorry','Glo12Me', 'Glo12@gmail.com', 083237781, 6 );



