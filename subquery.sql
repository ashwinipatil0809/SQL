create database new1;
use new1;

CREATE TABLE Books (
book_id INT PRIMARY KEY,
title VARCHAR(255),
author VARCHAR(255),
price DECIMAL(10, 2)
);

CREATE TABLE Orders (
order_id INT PRIMARY KEY,
book_id INT,
quantity INT,
FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
name VARCHAR(255)
);

INSERT INTO Books (book_id, title, author, price) VALUES
(1, 'Book One', 'John Doe', 45.00),
(2, 'Book Two', 'Jane Smith', 30.00),
(3, 'Book Three', 'John Doe', 60.00),
(4, 'Book Four', 'Alice Johnson', 25.00),
(5, 'Book Five', 'Jane Smith', 55.00);

INSERT INTO Orders (order_id, book_id, quantity) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 5),
(4, 1, 1),
(5, 5, 3),
(6, 4, 2),
(7, 2, 4);
INSERT INTO Customers (customer_id, name) VALUES
(1, 'Alice Brown'),
(2, 'Tom Green'),
(3, 'Sarah White'),
(4, 'James Black'),
(5, 'Emily Davis');


select title,price from Books ORDER BY price DESC LIMIT 1;

SELECT title,price  FROM Books WHERE price=(SELECT MAX(price)FROM Books);


SELECT title FROM Books WHERE book_id IN(SELECT book_id FROM orders GROUP BY book_id HAVING COUNT(*)>1);  -- 2 ROW 


SELECT title,
(SELECT COUNT(*) 
FROM orders
WHERE orders.book_id=Books.book_id) As total_orders
from Books;


-- placed

SELECT book_id,count(book_id) FROM orders  GROUP BY book_id;  -- normal

-- subquery
SELECT book_id,total_orders FROM(SELECT book_id,COUNT(*) As total_orders FROM  orders GROUP BY book_id)AS Bookorders;
