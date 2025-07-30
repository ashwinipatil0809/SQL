use mydb;
-- DDL command

-- 1) CRETAE
CREATE TABLE customer(cust_id INT,cust_name VARCHAR(10),cust_location VARCHAR(10),cust_salary VARCHAR(20));
DESC customer;
INSERT INTO customer VALUES(101,"prasad","pune",20000),(102,"paras","hydrabad",60000),(103,"neha","delhi",35000);
select*from customer;

-- 2)ALTER
ALTER TABLE customer ADD COLUMN deaprtment VARCHAR(10);
ALTER TABLE customer ADD COLUMN last_name varchar(10) AFTER cust_name;
ALTER TABLE customer ADD (Gender varchar(10),email VARCHAR(10));
ALTER TABLE customer ADD emp_id int first;

ALTER TABLE customer DROP COLUMN emp_id;
ALTER TABLE customer MODIFY COLUMN Gender int;


