-- SQL SESSION 1 - 12.02.2023 - SQL BASIC COMMANDS (RECAP)


--SELECT
SELECT 1
SELECT 'Martin'
SELECT 1, 'Martin' --the results are always returned in a table format as SQl is a relational db managment

SELECT 'Martin' AS first_name --use alias so that the columns have names

SELECT 1 AS ID, 'Martin' AS [First name] -- if you want to write two words seperately use brackets

--FROM

SELECT * -- the * brings the whole table written after FROM
FROM sale.customer -- this returns the result set

SELECT first_name
FROM sale.customer 

SELECT email, first_name, last_name
FROM sale.customer


--WHERE

SELECT*
FROM sale.customer
WHERE city= 'Atlanta';

SELECT first_name, last_name, street, city, state
FROM sale.customer
WHERE city= 'Atlanta';


SELECT first_name, last_name, street, city, state
FROM sale.customer
WHERE NOT city= 'Atlanta';


-- AND / OR

SELECT first_name, last_name, street, city, state
FROM sale.customer
WHERE state= 'TX' AND city= 'Allen';

SELECT first_name, last_name, street, city, state
FROM sale.customer
WHERE state= 'TX' OR city= 'Allen';

SELECT first_name, last_name, street, city, state
FROM sale.customer
WHERE last_name= 'Chan' AND state= 'TX' OR state='NY';

SELECT first_name, last_name, street, city, state
FROM sale.customer
WHERE last_name= 'Chan' AND(state= 'TX' OR state='NY')

--IN /NOT IN

SELECT first_name, last_name, street, city, state
FROM sale.customer
WHERE state= 'TX' AND city IN('Allen', 'Austin');

--LIKE
-- '_' match any single character
-- % unknown number of characters

SELECT*
FROM sale.customer
WHERE email LIKE '%yahoo%';


SELECT*
FROM sale.customer
WHERE first_name LIKE 'Di_ne'


SELECT*
FROM sale.customer
WHERE first_name LIKE '[TZ]%' -- t ya da z ile baþlasýn ama sonrasý önemli deðil 


SELECT*
FROM sale.customer
WHERE first_name LIKE '[T-Z]%' -- t aya da z harfleri arasýnda baþlayana t ve z dahil

-- BETWEEN

SELECT*
FROM product.product
WHERE list_price BETWEEN 599 AND 999


SELECT*
FROM sale.orders
WHERE order_date BETWEEN '2018-01-05' AND '2018-01-08'

SELECT*
FROM product.product
WHERE list_price < 1000

--IS NULLIS NOT NULL

SELECT*
FROM sale.customer
WHERE phone IS NULL

SELECT *
FROM sale.customer
WHERE phone IS NOT NULL

-- TOP N

SELECT TOP 10*
FROM sale.orders

SELECT TOP 10 customer_id
FROM sale.customer

--ORDER BY

SELECT TOP 10*
FROM sale.orders
ORDER BY order_id DESC;


SELECT first_name, last_name,city,state
FROM sale.customer
ORDER BY first_name ASC, last_name DESC

SELECT first_name, last_name,city,state
FROM sale.customer
ORDER BY 1, 2 -- fisrt_name ve last_name e göre sýrala dedik 1 ve 2 derken selectte yazdýðýmýz sýra


SELECT first_name, last_name,city,state
FROM sale.customer
ORDER BY customer_id desc --order byda yazýlan þey selectte yazýlmak zorunda deðil

--DISTINCT 

SELECT DISTINCT state
FROM sale.customer

SELECT  DISTINCT state, city
FROM sale.customer


SELECT DISTINCT* --duplicate row larý atmak için 
FROM sale.customer

----

SELECT [customer_id], [first_name], [last_name], [phone], [email], [street], [city], [state], [zip_code] -- columnsdan sürükledik
FROM sale.customer