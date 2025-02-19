-- 1. Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“  iš lentelės „actor“ 
-- surušiuotus pagal „last_name“ mažėjimo tvarka.  

select first_name, last_name 
from actor 
order by last_name desc;

-- 2.Parašykite užklausą, kuri ištrauktų stulpelus „first_name“, „last_name“  iš lentelės „actor“ 
-- sugrupuotus pagal stulpelį „first_name“ ir surušiuotus pagal „first_name“ mažėjimo tvarka.

select first_name, last_name, count(*) 
from actor 
group by 1, 2 
order by 3 desc; 

-- 3.Parašykite SQL užklausą, kuri ištrauktų visas skirtingas stulpelio „first_name“  reikšmes iš lentelės 
-- „actor“.

select distinct first_name 
from actor; 

-- 4.Parašykite SQL užklausą, kuri pateiktų filmo pavadinimą, nuomos kainą ir filmo trukmę, pagal filmo 
-- trukmę nuo trumpiausio iki ilgiausio. Naudokite lentelę „film“.

select title, rental_rate, length, length(title) 
from film 
order by 3 asc;

-- 5.Parašykite SQL užklausą, kuri nurodo kiek kartų pasikartojo kiekvienas aktoriaus vardas. 
-- Naudokite lentelę „actor“.

select first_name, 
count(first_name) as name_count 
from actor 
group by first_name 
order by name_count desc;

-- 6.Parašykite SQL užklausą, kuri paskaičiuoja bendrą visų mokėjimų sumą. Rezultatą pateikite  
-- stulpelyje „Iš viso“. Naudokite lentelę „payment“.

select sum(amount) as "Iš viso" 
from payment;

-- 7.Parašykite SQL užklausą, kuri ištraukia didžiausią atliktą įmoką. Rezultatą pateikite stulpelyje  
-- „Didžiausias mokėjimas”. Naudokite lentelę „payment“.

select max(amount) as "Didžiausias mokėjimas"
from payment;

-- 8.Parašykite SQL užklausą, kuri pateikia kiekvieno kliento didžiausią mokėjimą mažėjimo tvarka.  
-- Naudokite lentelę „payment“.

select customer_id, max(amount) as "Didžiausias mokėjimas" 
from payment 
group by customer_id 
order by "Didžiausias mokėjimas" desc;

-- 9.Parašykite SQL užklausą, kuri ištrauktų visus stulpelius iš lentelės „actor“ , kur stulpelio „first_name“ 
-- reikšmė yra Nick.

select * from actor 
where first_name = 'Nick';

-- 10.Parašykite SQL užklausą, kuri pateiktų filmo pavadinimą, aprašymą, išleidimo metus, reitingą, kai reitingas yra PG. Naudokite lentelę „film“. 

select title, description, release_year, rating 
from film 
where rating = 'PG'; 

-- 11.Parašykite SQL užklausą, kuri ištrauktų filmo pavadinimą, nuomos trukmę, nuomos kainą, kai nuomos 
-- kaina yra 4.99 arba mažiau, o nuomos trukmė 5 ir 6. Naudokite lentelę „film“.

select title, rental_duration, rental_rate
from film
where rental_rate <= 4.99 and rental_duration in (5, 6);

-- 12.Parašykite SQL užklausą, kuri ištrauktų visus filmus, kurių žanro aprašymas prasideda žodžiu 
-- “Trailers”. Naudokite lentelę „film“.  

select * from film
where 'Trailers' = any(special_features);

-- 13.Parašykite užklausą, kuri ištraukia visus filmų pavadinimus, kurie prasideda raide „z“. Naudokite  
-- lentelę „film“.  

select * from film
where title like '2%';

-- 14.Parašykite SQL užklausą, kuri ištraukia filmo pavadinimą, nuomos kainą, (pavėluoto) grąžinimo  
-- kainą, o bendra nuomos kaina ir (pavėluoto) grąžinimo kaina pateikiama naujame stulpelyje “total”.  
-- Naudokite lentelę „film“.  

select title, rental_rate, replacement_cost, (rental_rate + replacement_cost) as "Total"
from film;

-- 15.Parašykite SQL užklausą, kuri ištrauktų filmų pavadinimus, nuomos kainą, trukmę, kai nuomos kaina  
-- yra 2.99 arba trukmė yra 130. Naudokite lentelę „film“.

select title, rental_rate, length
from film
where rental_rate = 2.99 or length = 130;

-- 16.Parašykite užklausą, pateikiančią visus klientus, kurie dar negrąžino išsinuomotų filmų. Naudokite  
-- lentelę “rental”.

select * from rental
where return_date is null;

-- 17.Parašykite SQL užklausą, kuri pateikia visą informaciją apie nuomą tarp išnuomavimo laikotarpių  
-- '2005-05-24 22:54:33' ir '2005-05-24 23:05:21'. Naudokite lentelę “rental”.  

select * from rental
where rental_date between '2005-05-24 22:54:33' and '2005-05-24 23:05:21';