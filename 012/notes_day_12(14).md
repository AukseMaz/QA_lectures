Repeate
Formating values:
https://www.postgresql.org/docs/current/functions-formatting.html

    select *
    from rental
    where TO_CHAR(rental_date, 'mm') = '05'
    -- where TO_CHAR(rental_date, 'dd/mm/yyyy') = '2005-05-24'
    -- where TO_CHAR(rental_date, 'dd/mm/yyyy') = '24/05/2005'
    -- where date(rental_date) = '2005-05-24'
    -- pirmas elementas yra 'Trailers'
    select * 
    from film
    where special_features[1] = 'Trailers';

    -- Zandras 'Trailers' yra betkurioje masyvo vietoje
    SELECT * 
    FROM film
    WHERE 'Trailers' = ANY(special_features);

4. SQL joins

Db dvd-rental schema:
https://neon.tech/postgresqltutorial/printable-postgresql-sample-database-diagram.pdf

Join types:

ONE2ONE
ONE2MANY | MANY2ONE
MANY2MANY

Having:

    select length, count(*) as count_films, max(replacement_cost), min(replacement_cost) 
    from film
    where length >= 60
    -- where length >= 60 and count(*) > 5 -- agreguoto stulpelio cia negalime deti
    -- where length >= 60 and count_films > 5 -- agreguoto stulpelio cia negalime deti
    group by length
    having count(*) > 5 and max(replacement_cost) < 29.99
    order by 2 desc;

Join customer, address, city, country:

    select 
        c.customer_id, c.address_id, c.first_name, c.last_name, c.email, 
        a.city_id, a.address,
        ct.city,
        cn.country
    from customer c
    JOIN address a ON c.address_id = a.address_id
    JOIN city ct ON a.city_id = ct.city_id
    JOIN country cn ON ct.country_id = cn.country_id
    where country = 'United States'