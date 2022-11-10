use sakila;

select count(distinct(last_name)) from actor;

select count(distinct(language_id)) from film;

select count(rating) from film
where(rating = 'PG-13');

select * from film;

-- I can't find the duration of the movies in the sakila base, I'm going to base my top 10 on rate_duration even - 
-- - though it might be not the answer you are looking for, process will be the same

select rental_duration, title from film
where (release_year = '2006')
order by rental_duration desc
limit 10;

SELECT DATEDIFF((SELECT MIN(last_update) FROM film), (SELECT MAX(last_update) FROM rental)); 

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

-- This is question 8 below

select count(rental_date)
ALTER TABLE rental
ADD month date_format(convert(last_update,date), '%M')
where date_format(convert(last_update,date), '%M') = 'October'
from rental;

select rental_date, date_format(convert(last_update,date), '%M') as Months from rental;

-- Answer is below

select count(date_format(convert(last_update,date), '%M') = 'October') from rental;