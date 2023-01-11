--1
SELECT city, COUNT(customer_id) AS number_of_customers
FROM SampleRetail.sale.customer
GROUP BY city
ORDER BY number_of_customers desc;
--2
select order_id,sum(quantity) AS total_product_quantity 
from SampleRetail.sale.order_item
GROUP BY order_id;

--3
SELECT customer_id, MIN(order_date) as first_order_date
from SampleRetail.sale.orders
GROUP BY customer_id;

--4
SELECT order_id, SUM(list_price) as total_amount
from SampleRetail.sale.order_item
GROUP BY order_id
ORDER BY total_amount desc;

--5
SELECT TOP(1) order_id, AVG(list_price) AS total_amount
FROM SampleRetail.sale.order_item
GROUP BY order_id
ORDER BY total_amount DESC

--6
SELECT brand_id,list_price, product_id
from SampleRetail.product.product
ORDER BY brand_id, list_price desc;


--7
SELECT list_price,brand_id, product_id
from SampleRetail.product.product
ORDER BY  list_price desc, brand_id;

--8 
/*we see that the table is created according to the order of variable names. In the 6th question the order was brand_id,list_price,product_id 
and in the 7th question it is list_price,brand_id, product_id */

--9
SELECT TOP(10) *
FROM SampleRetail.product.product
WHERE list_price >= 3000;


--10
SELECT TOP(5) *
FROM SampleRetail.product.product
WHERE list_price < 3000
ORDER BY list_price desc;


--11
SELECT *
FROM SampleRetail.sale.customer
WHERE last_name LIKE 'B_%s';


--12
SELECT *
FROM SampleRetail.sale.customer
WHERE city in ('Allen','Buffalo', 'Boston', 'Berkeley');

