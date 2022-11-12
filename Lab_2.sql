use sakila;

select count(distinct(last_name)) from actor;

select count(distinct(language_id)) from film;

select count(rating) from film
where(rating = 'PG-13');

select * from film;

select title,length(length) as duration from film
where (release_year = '2006')
order by length desc
limit 10;


SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) FROM rental; 

select * from rental;

select rental_id, rental_date, date_format(convert(last_update,date), '%M') as Months, date_format(convert(last_update,date), '%D') as Days from rental;

-- question 7 à faire
select weekday(rental_date),

case
when rental_date = 5 then 'Week end'
when rental_date = 6 then 'Week end'
else 'Week day'
end as 'day_type'
from rental;

SELECT rental_date, DAYNAME(rental_date),
CASE DAYNAME(rental_date)
WHEN 'Saturday' THEN 'Weekend' 
WHEN 'Sunday' THEN 'Weekend'
ELSE 'Weekday'
END AS 'day_type'
FROM sakila.rental;

-- This is question 8 below

select count(rental_date)
ALTER TABLE rental
ADD month date_format(convert(last_update,date), '%M')
where date_format(convert(last_update,date), '%M') = 'October'
from rental;

select rental_date, date_format(convert(last_update,date), '%M') as Months from rental;

-- Answer is below (the code upper was just a try anyway)

select max(rental_date) - interval 1 month from rental;

select count(rental_id) from rental where rental_date > '2006-01-14';