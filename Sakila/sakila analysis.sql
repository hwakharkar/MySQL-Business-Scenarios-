USE sakila;
SHOW TABLES;

-- SELECT Query:
select * from actor;
select * from film;
select count(first_name), count(distinct first_name) from actor;
select title, release_year, rating from film;

select first_name,
	last_name,
    email
from customer;

select first_name as FirstName,
		last_name as LastName
from customer;

select distinct city
from city;


-- WHERE Query:
-- Find customer name Mary.
select * from customer
where first_name = 'Mary';

-- Multiple Condition
select * from customer
where active=1
AND store_id=1;

select * from customer
where first_name='Mary'
OR first_name='Patricia';