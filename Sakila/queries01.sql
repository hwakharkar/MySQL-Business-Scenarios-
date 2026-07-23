USE sakila;
-- Understanding the Sakila DB

#1. List all the tables in sakila database.
Show tables;

#2. Show all customers
select *
from customer;

#3. Display the customer names and email address.
select 
	first_name, 
    last_name, 
    email
from customer;

#4. Find all active customers
select *
from customer
where active=1;


#5. Find all inactive customers
select *
from customer
where active=0;

#6. List all films.
select *
from film;

#7. Show all film categories
select *
from category;

#8. Display all stores
select * 
from store;

#9. Find all staff members.
select * 
from staff;

#10. Count the total number of customers.
select count(*) as Total_Customers
from customer;

#11. Which table stores rental info.
select * 
from rental;

#12. Which table stores payment info.
select * 
from payment;