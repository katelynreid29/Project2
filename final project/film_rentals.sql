SELECT i.store_id
    , r.rental_date
    , r.return_date
    , f.title
    , f.release_year
    , f.rental_duration
    , f.rental_rate
    , f.replacement_cost
FROM sakila.rental AS r
INNER JOIN sakila.inventory AS i
ON r.inventory_id = i.inventory_id
INNER JOIN sakila.film AS f
ON i.film_id = f.film_id
