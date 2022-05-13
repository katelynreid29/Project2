SELECT c.first_name
    , c.last_name
    , c.email
    , r.rental_date
    , r.return_date
    , a.address
    , a.address2
    , a.phone
FROM sakila.rental AS r
INNER JOIN sakila.customer AS c
ON r.customer_id = c.customer_id
INNER JOIN sakila.address AS a
ON c.address_id = a.address_id