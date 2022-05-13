SELECT a.first_name
    , a.last_name
    , f.title
    , f.description
    , f.release_year
    , f.length
    , f.rental_rate
    , f.rating
FROM sakila.actor AS a
INNER JOIN sakila.film_actor AS fa
ON fa.actor_id = a.actor_id
INNER JOIN sakila.film AS f
ON fa.film_id = f.film_id

