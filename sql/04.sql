/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */

SELECT title
FROM (
    SELECT film.title, COUNT(rental.rental_id) as rental_count
    FROM rental
    JOIN inventory USING (inventory_id)
    JOIN film USING (film_id)
    WHERE rental.customer_id = 1
    GROUP BY film.title
) AS subquery
WHERE rental_count > 1;
