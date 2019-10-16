-- get all customers whose first names contain 'dan' (eg Dan, Daniel, Jordan)

SELECT customer.first_name
FROM customer
WHERE customer.first_name ILIKE '%dan%';

-- get all customers whose last names contain 'dan' (eg Dan, Daniel, Jordan) 

SELECT customer.last_name
FROM customer
WHERE customer.last_name ILIKE '%dan%';

-- now add the results of the first query to the results of the second (UNION)

SELECT customer.first_name
FROM customer
WHERE customer.first_name ILIKE '%dan%'
UNION
SELECT customer.last_name
FROM customer
WHERE customer.last_name ILIKE '%dan%';

-- find customers exist in both queries
-- hint: there's one

SELECT first_name, last_name
FROM customer
WHERE first_name ILIKE '%dan%' AND last_name ILIKE '%dan%';

-- find all film with 'Fred' in the title

SELECT title
FROM film
WHERE title ILIKe '%Fred%';

--find all films that mention squirrels in the description

SELECT description
FROM film
WHERE description ILIKe '%squirrel%';

--find the intersection of the two previous subqueries
-- hint: there's two

SELECT *
FROM film
WHERE title ILIKe '%Fred%'
AND description ILIKe '%squirrel%';