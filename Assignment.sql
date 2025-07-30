CREATE DATABASE pizza_sales_analysis
show DATABASES;
USE pizza_sales_analysis;
CREATE TABLE orders(id INT,date DATE);
ALTER TABLE orders ADD COLUMN Time TIME  AFTER date;
DESC orders;
RENAME TABLE  orders TO order1;


CREATE TABLE orders(id INT PRIMARY KEY,date DATE);