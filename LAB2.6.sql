/*1: Not repeated name
*/
use sakila;

SELECT DISTINCT last_name FROM sakila.actor;

/*2: repeated name
*/
SELECT last_name, COUNT(*) AS Occurrence FROM sakila.actor
GROUP BY last_name HAVING COUNT(*)>1;

/*3: Using the rental table, find out how many rentals were 
processed by each employee..
*/
SELECT staff_id, count(rental_id) FROM sakila.rental
GROUP BY staff_id;

/*4. Using the film table, find out how many films 
were released each year.*/

SELECT release_year, count(film_id) FROM sakila.film
GROUP BY release_year;

/*5. Using the film table, find out for each rating 
how many films were there..*/

SELECT rating, COUNT(*) AS Occurrence FROM sakila.film
GROUP BY rating having COUNT(*)>0;

/*6. What is the mean length of the film for each r
ating type. Round off the
 average lengths to two decimal places
*/
select rating, round(avg(length) ,2)from film
group by rating;

/*7. Which kind of movies (rating) have a mean duration 
of more than two hours?
*/

select rating, avg(length) from sakila.film
group by rating;


/*
Rank films by length (filter out the rows that have 
nulls or 0s in length column). In your output, only 
select the columns title, length, and the rank.
*/

select length, title from sakila.film
order by length desc;
