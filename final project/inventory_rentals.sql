SELECT s.store_id
    , s.manager_staff_id
    , i.inventory_id
    , r.rental_date
    , r.return_date
    , r.customer_id
FROM sakila.store AS s
INNER JOIN sakila.inventory AS i
ON s.store_id = i.store_id
INNER JOIN sakila.rental AS r
ON r.inventory_id = i.inventory_id
