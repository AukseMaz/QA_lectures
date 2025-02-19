-- select * from city;
-- select * from country;

select city_id, city from city;

select * from country where country = 'Lithuania'; -- country_id = 56
select * from city where country_id = 56; -- city_id = 570
select * from address where city_id = 570; -- address_id = 563
select * from customer where address_id = 563;

select city_id, country_id, city from city where country_id = 101;
select distinct country_id from city where country_id = 101; -- distinct atvaizduoja tik unikalias id

select first_name from customer order by first_name asc; -- asc yra ascending tvarka, desc - descending tvarka

select distinct first_name from customer order by first_name asc;
select distinct first_name, last_name from customer order by first_name;

select distinct first_name, last_name from customer where first_name = 'Aaron' order by first_name;

select * from film where title = 'Chamber Italian' order by title;
select * from film where title like 'C_o%'; -- % bet kokie simboliai ir skaiciai

select * from film where title like 'C_o%' and rental_rate >= 2.99;

select count(first_name) from customer; -- cia yra agregavimo f-ja
select first_name, count(first_name) from customer group by first_name order by count(first_name) desc;
select first_name, count(first_name) from customer group by first_name order by 2 desc;
