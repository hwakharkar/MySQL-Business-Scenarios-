Use sakila;

Show tables;

#1. List all the customers with the city.
select * from customer;-- we have customer id , name, last name, address id
select * from address; -- address id, city id 
select * from city; -- city id, city.

select c.customer_id, c.first_name, c.last_name, ci.city
from customer c
join address a
	on c.address_id = a.address_id
join city ci
	on a.city_id = ci.city_id;
    
#2. List all the customer along with their country

select * from country;
select 
	c.customer_id, 
    c.first_name, 
    c.last_name, 
    co.country
from customer c
join address a
	on c.address_id = a.address_id
join city ci
	on a.city_id = ci.city_id
join country co
	on ci.country_id = co.country_id;
    
#3. Count active customers in each store
select * from customer;
select 
	count(customer_id),
    store_id
from customer
where active = 1
group by store_id;

#4. Find the customers with missing phone number
select * from customer_list
where phone = NULL;
SELECT
    c.customer_id,
    c.first_name,
    c.last_name
FROM customer c
JOIN address a
    ON c.address_id = a.address_id
WHERE a.phone IS NULL
   OR a.phone = '';

   
#5. Display the first 10 customers alphabetically.
select 
	customer_id,
    first_name,
    last_name
from customer
order by first_name, last_name
limit 10;

#6. Find the customer whose name starts with A.
select 
	customer_id,
    first_name,
    last_name
from customer
where first_name like 'A%';

#7. Find the customers whose last name ends with N.
select 
	customer_id,
    first_name,
    last_name
from customer
where last_name like "%n";	

