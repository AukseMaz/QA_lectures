-- 1. Parašykite SQL užklausą, kuri pateikia sąrašą su pardavėjo vardu ir pavarde, kliento vardu ir pavarde, 
-- ir parduotuvės ID, kuriai priklauso ir pardavėjas, ir klientas (pardavėjas dirba, o klientas ateina išsinuomoti filmo). 
-- Naudokite lenteles staff ir customer.

select 
 	s.first_name, s.last_name, 
	c.first_name, c.last_name,
	s.store_id
from staff s
JOIN customer c on s.store_id = c.store_id;

-- 2. Parašykite SQL užklausą, pateikiančią kliento vardą, kliento pavardę, atliktą mokėjimą, mokėjimo datą tiems mokėjimams, kurių vertė yra 2.99, 4.99, 6.99. 
-- Naudokite lenteles „customer“ ir „payment“.  

select 
    c.first_name, c.last_name, 
    p.amount, p.payment_date
from customer c
JOIN payment p on c.customer_id = p.customer_id
where p.amount in (2.99, 4.99, 6.99);

-- 3. Parašykite SQL užklausą, pateikiančią mokėjimo ID, mokėjimo datą, mokėjimo sumą, kliento vardą ir pavardę, pardavėjo vardą ir pavardę. 
-- Naudokite lenteles „payment“, „customer“, „staff“.  

select 
    p.payment_id, p.payment_date, p.amount, 
    c.first_name, c.last_name, 
    s.first_name, s.last_name
from payment p
JOIN customer c on p.customer_id = c.customer_id
JOIN staff s on p.staff_id = s.staff_id;

-- 4. Parašykite SQL užklausą, pateikiančią kiekvieno kliento, išleidusio nuomai iš viso nuo 150 iki 200, vardą ir pavardę. 
-- Taip pat pateikite ir pardavėjo vardą bei pavardę, aptarnavusio šiuos klientus. 
-- Rezultatą surušiuokite pagal iš viso išleistą sumą nuomai didėjimo tvarka. 
-- Naudokite lenteles „payment“, „customer“, „staff“.

select 
    c.first_name, c.last_name, 
    sum(p.amount) as total_amount,
    s.first_name, s.last_name
from payment p
JOIN customer c on p.customer_id = c.customer_id
JOIN staff s on c.store_id = s.store_id
group by c.customer_id, c.first_name, c.last_name, s.first_name, s.last_name
having sum(p.amount) between 150 and 200
order by total_amount asc;

-- 5. Parašykite užklausą, kuri pateikia 2006-02-14 išnuomuotų filmų pavadinimus. 
-- Naudokite lenteles „film“, „inventory“, „rental“. 

select distinct f.title
from rental r
JOIN inventory i on r.inventory_id = i.inventory_id
JOIN film f on i.film_id = f.film_id
where date(r.rental_date) = '2006-02-14';

-- 6. Pateikite Graikijoje gyvenančių klientų vardą, pavardę ir miesto pavadinimą.

select 
    c.first_name, c.last_name, 
    ct.city
from customer c
JOIN address a on c.address_id = a.address_id
JOIN city ct on a.city_id = ct.city_id
JOIN country cn on ct.country_id = cn.country_id
where cn.country = 'Greece';
 
-- 7. Suskaičiuokite kiek koks klientas buvo išsinuomojęs filmų. 
-- Rodykite tik tuos klientus, kurie išsinuomojo daugiau nei 2 filmus.
-- Nuomos įrašai saugome lentoje rental.

select 
    c.first_name, c.last_name, 
    count(*) as total_rentals
from customer c
JOIN rental r on c.customer_id = r.customer_id
group by c.customer_id, c.first_name, c.last_name
having count(*) > 2;
