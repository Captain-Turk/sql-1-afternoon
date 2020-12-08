CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	age INTEGER,
	height INTEGER,
	city VARCHAR(85),
	favorite_color VARCHAR(30)  
);

INSERT INTO person 
(name, age, height, city, favourite_color)
VALUES 
('Yavuzturk Yalcin', 36, 175, 'Rotterdam', 'blue'),
('Eelis Pekkonen', 34, 177, 'Helsinki', 'white'),
('Sanoob Saleem', 35, 182, 'Ponnani', 'green'),
('Aliona Bannikova', 33, 165, 'St.Petersburg', 'red'),
('Billie Jean Byrom', 30, 170, 'St.Augustine', 'pink');

SELECT *
FROM person
ORDER BY height DESC;

SELECT *
FROM person
ORDER BY height ASC;

SELECT *
FROM person
ORDER BY age DESC;

SELECT *
FROM person
WHERE age > 20;

SELECT *
FROM person
WHERE age = 18;

SELECT *
FROM person
WHERE age < 20 OR age > 30; 

SELECT *
FROM person
WHERE age !=27;

SELECT *
FROM person
WHERE favorite_color != 'red';

SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';
 
 SELECT * 
 FROM person
 WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT *
FROM person
WHERE favorite_color IN ('orange', 'blue', 'green');

SELECT *
FROM person
WHERE favorite_color IN ('purple', 'yellow');






CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR (100),
  product_price NUMERIC,
  quantity INTEGER
  );

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'cheese', 17, 2),
(2, 'olive', 15.5, 1),
(3, 'bagel', 2.89, 2),
(3, 'tomato', 0.99, 3),
(2, 'yogurt', 6.75, 1)
returning *;

SELECT * FROM orders;

SELECT SUM(quantity)
FROM orders;

SELECT SUM(product_price)
FROM orders;

SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 3;






INSERT INTO artist 
(name)
VALUES
('Charles Aznavour'),
('Adriano Celentano'),
('Edith Piaf')
returning *;


SELECT * 
FROM artist
ORDER BY name DESC 
LIMIT 10;

SELECT * 
FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT *
FROM artist
WHERE name LIKE 'Black%';

SELECT * 
FROM artist
WHERE name LIKE '%Black%';



SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) 
FROM employee;

SELECT MIN(birth_date) 
FROM employee;

-- SELECT * FROM employee
-- WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT *
FROM employee
WHERE reports_to = 2 ;

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge'



SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT COUNT(*)
FROM invoice
WHERE total < 5;

SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total)
FROM invoice;

SELECT SUM(total)
FROM invoice;
