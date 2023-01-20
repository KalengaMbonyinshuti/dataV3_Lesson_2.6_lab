/*
Not repeated name
*/
use sakila;

SELECT DISTINCT last_name FROM sakila.actor;

/*
repeated name
*/
SELECT last_name, COUNT(*) AS Occurrence FROM sakila.actor
GROUP BY last_name HAVING COUNT(*)>1;

/*Using the rental table, find out how many rentals were 
processed by each employee..
*/
SELECT*, COUNT(*) AS Occurrence FROM sakila.rental
GROUP BY rental_id HAVING COUNT(*)>0;

/*Using the film table, find out how many films 
were released each year.*/

SELECT release_year, COUNT(*) AS Occurrence FROM sakila.film
GROUP BY release_year having COUNT(*)>0;

/*Using the film table, find out for each rating 
how many films were there..*/

SELECT rating, COUNT(*) AS Occurrence FROM sakila.film
GROUP BY rating having COUNT(*)>0;

/*What is the mean length of the film for each r
ating type. Round off the
 average lengths to two decimal places
*/
select round(avg(length) ,2)from film
group by rating;

/*Which kind of movies (rating) have a mean duration 
of more than two hours?
*/

select*, avg(rental_duration) from sakila.film
 where rental_duration>2
 group by rating;

/*
Rank films by length (filter out the rows that have 
nulls or 0s in length column). In your output, only 
select the columns title, length, and the rank.
*/




