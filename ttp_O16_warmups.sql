/*
1-- get all customers whose first names contain 'dan' (eg Dan, Daniel, Jordan)
 first_name 
------------
 Danielle
 Dana
 Daniel
 Danny
 Dan
(5 rows)

 first_name 
------------
 Jordan
(1 row)

first_name 
------------
 Danielle
 Dana
 Daniel
 Danny
 Dan
 Jordan
(6 rows)
*/

SELECT customer.first_name
FROM customer
WHERE customer.first_name LIKE '%Dan%';

SELECT *
FROM customer
WHERE first_name LIKE '%dan%';

SELECT customer.first_name
FROM customer
WHERE customer.first_name ILIKE '%dan%';


/*
2-- get all customers whose last names contain 'dan' (eg Dan, Daniel, Jordan)
 last_name 
-----------
 Jordan
 Daniels
(2 rows)
*/ 

SELECT customer.last_name
FROM customer
WHERE customer.last_name ILIKE '%dan%';


/*
3-- now add the results of the first query to the results of the second (UNION)
first_name 
------------
 Danny
 Daniels
 Daniel
 Jordan
 Dan
 Dana
 Danielle
(7 rows)
*/
SELECT customer.first_name
FROM customer
WHERE customer.first_name ILIKE '%dan%'
UNION
SELECT customer.last_name
FROM customer
WHERE customer.last_name ILIKE '%dan%';

/*
4-- find customers exist in both queries
-- hint: there's one
 first_name | last_name 
------------+-----------
 Danielle   | Daniels
(1 row)
*/
SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE '%dan%' AND last_name ILIKE '%dan%';


/*
5-- find all film with 'Fred' in the title
     title      
----------------
 Clash Freddy
 Element Freddy
 Freddy Storm
 Sister Freddy
(4 rows)
*/
SELECT title
FROM film
WHERE title ILIKe '%Fred%';


/*
6--find all films that mention squirrels in the description
*/
SELECT description
FROM film
WHERE description ILIKe '%squirrel%';

/*
7--find the intersection of the two previous subqueries
-- hint: there's two
*/
SELECT *
FROM film
WHERE title ILIKe '%Fred%'
AND description ILIKe '%squirrel%';













