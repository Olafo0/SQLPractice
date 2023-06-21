

/* LINKS USED https://intellipaat.com/blog/tutorial/sql-tutorial/update-query/?US#:~:text=The%20UPDATE%20command%20in%20SQL,the%20rows%20will%20be%20affected. */


/* Question 1 */
SELECT COUNT(order_id) FROM oes.orders;


/* Question 2 */
SELECT COUNT(order_id) FROM oes.order_items WHERE order_id = '10358';


/* Question 3 */
SELECT order_id FROM oes.order_items WHERE unit_price > 1000;

/* Question 4 */
 SELECT * FROM bird.antarctic_species
 INNER JOIN bird.antarctic_populations
 ON bird.antarctic_populations.species_id = bird.antarctic_species.species_id;
 

 /* Question 5 */
 SELECT * FROM hcm.employees;
 SELECT * FROM hcm.countries
 
 SELECT COUNT(employee_id) FROM hcm.employees
 INNER JOIN hcm.countries e
 ON  hcm.employees.country_id = e.country_id
 WHERE e.country_name = 'United Kingdom';


 /* Question 6 */
 SELECT COUNT(employee_id) FROM hcm.employees WHERE salary > 200000;


/* Question 7 */
SELECT * FROM oes.inventories;
SELECT * FROM oes.products;

/* PART ONE */ 
SELECT COUNT(warehouse_id) FROM oes.inventories
INNER JOIN oes.products
ON oes.inventories.product_id = oes.products.product_id
WHERE product_name = 'Apple AirPods Pro Noise Cancelling True Wireless Headphones';

/* PART TWO */ 
SELECT SUM (quantity_on_hand) FROM oes.inventories
INNER JOIN oes.products
ON oes.inventories.product_id = oes.products.product_id
WHERE product_name = 'Apple AirPods Pro Noise Cancelling True Wireless Headphones';


/* Question 8 */
SELECT * FROM oes.products WHERE product_name = 'Apple AirPods Pro Noise Cancelling True Wireless Headphones'

UPDATE oes.products
SET list_price = 509.00
WHERE product_name = 'Apple AirPods Pro Noise Cancelling True Wireless Headphones';

/* Question 9 */
SELECT COUNT(first_name) FROM hcm.employees WHERE first_name LIKE 'J%';


/* Question 10 */
SELECT * FROM oes.products WHERE product_name = 'PBX 21 inch Series 9 Monitor';

DELETE FROM oes.products WHERE product_name = 'PBX 21 inch Series 9 Monitor';
