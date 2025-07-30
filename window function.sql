CREATE TABLE sales (
id INT,
employee VARCHAR(50),
department VARCHAR(50),
amount INT,
sale_date DATE
);
drop table sales;
INSERT INTO sales VALUES
(1, 'Alice', 'Electronics', 500, '2024-01-01'),
(2, 'Bob', 'Electronics', 700, '2024-01-02'),
(3, 'Alice', 'Electronics', 400, '2024-01-03'),
(4, 'Dan', 'Clothing', 300, '2024-01-01'),
(5, 'Eva', 'Clothing', 600, '2024-01-02'),
(6, 'Dan', 'Clothing', 200, '2024-01-03');

select*from sales;

select employee,department,amount,row_number() over 

truncate table sales;


select employee, department,amount,row_number()over (PARTITION BY department ORDER BY amount desc)as row_num FROM sales;



INSERT INTO sales (id, employee, department, amount, sale_date) VALUES
(1, 'Alice', 'Electronics', 500, '2024-01-01'),
(2, 'Bob', 'Electronics', 700, '2024-01-02'),
(3, 'Alice', 'Electronics', 500, '2024-01-03'),
(4, 'Dan', 'Clothing', 300, '2024-01-01'),
(5, 'Eva', 'Clothing', 600, '2024-01-02'),
(6, 'Dan', 'Clothing', 300, '2024-01-03'),
(7, 'Faizal', 'Clothing', 200, '2024-01-04'),
(8, 'Priya', 'Electronics', 700, '2024-01-05'),
(9, 'Alice', 'Electronics', 450, '2024-01-06'),
(10, 'Bob', 'Electronics', 650, '2024-01-07'),
(11, 'Eva', 'Clothing', 600, '2024-01-08'),
(12, 'Priya', 'Electronics', 700, '2024-01-09');

select employee, department,amount,row_number()over (PARTITION BY department ORDER BY amount desc)as row_num FROM sales;

select employee, department,amount,RANK() OVER (PARTITION BY department ORDER BY amount)as rank_result,
DENSE_rank() OVER (PARTITION BY department ORDER BY amount)as dense_rank_result,
row_number() OVER (PARTITION BY department ORDER BY amount)as row_number_result
FROM sales;



select employee

select employee,avg(amount)as avg_amount  from sales group by employee having count(amount)>2;


select employee,max(amount)as max from sales where max(amount)>600;

select employee from sales group by employee having max(amount)>600;


select employee,sale_date,amount,LAG(amount)over(partition by employee order by sale_date)as privoius_amount;