CREATE DATABASE CONSTRAINTS;
USE CONSTRAINTS;
CREATE TABLE student(roll_no INT NOT NULL,stud_name VARCHAR(20),address VARCHAR(20));
DESC student;
INSERT INTO student values(101,"Onkar","pune")
select * FROM student;
INSERT INTO student(stud_name,address) VALUES ("Onkar","Pune");
DROP TABLE student;
ALTER TABLE student ADD  COLUMN Salary INT NOT NULL;
ALTER TABLE student MODIFY COLUMN roll_no INT NOT NULL;
ALTER TABLE student MODIFY COLUMN roll_no INT;

CREATE TABLE student(roll_no INT UNIQUE,stud_name VARCHAR(20),address VARCHAR(20));
ALTER TABLE student MODIFY COLUMN roll_no INT UNIQUE;
ALTER TABLE student DROP INDEX roll_no;
CREATE TABLE student(roll_no INT NOT NULL UNIQUE,stud_name VARCHAR(20),address VARCHAR(20));
DESC course;

CREATE TABLE student(roll_no INT NOT NULL,stud_name VARCHAR(20),address VARCHAR(20));
DESC student;

CREATE TABLE course (roll_no INT,Course_id INT,course_name VARCHAR(30),FOREIGN KEY (roll_no) REFERENCES student(roll_no));
Drop table student ;
-- Constraints

-- 1) NOT NULL
CREATE TABLE student(roll_no INT NOT NULL,std_name VARCHAR(20),address VARCHAR(20));
DESC student;
INSERT INTO student values(101,"paras","pune");
select*from student;
ALTER TABLE student ADD COLUMN Gender varchar(10) NOT NULL;
ALTER TABLE student MODIFY COLUMN address varchar(20) NOT NULL;
ALTER TABLE student MODIFY COLUMN Gender varchar(10);

-- 2) Unique key
CREATE TABLE student(roll_no INT UNIQUE ,std_name VARCHAR(20),address VARCHAR(20));
ALTER TABLE student MODIFY COLUMN std_name VARCHAR (20)UNIQUE;
CREATE TABLE student(roll_no INT NOT NULL UNIQUE ,std_name VARCHAR(20),address VARCHAR(20)); -- COMBINATION F TWO KEY(PRI)

-- 3)PRIMARY KEY
CREATE TABLE student(roll_no INT PRIMARY KEY,std_name VARCHAR(20),address VARCHAR(20));
ALTER TABLE student ADD PRIMARY KEY (ID);
-- composite key
CREATE TABLE student(roll_no INT,std_name VARCHAR(20),address VARCHAR(20),PRIMARY KEY(roll_no,std_name));

-- 4)foreign key
CREATE TABLE student(roll_no INT,std_name VARCHAR(20),address VARCHAR(20));
CREATE TABLE course(roll_no INT,course_id INT,course_name VARCHAR(10),roll_no int FOREIGN KEY References student(roll_no));
DESC course;
CREATE TABLE orders(order_ID int NOT NULL primary key,order_number int NOT NULL,roll_no int foreign key REFERENCES student(roll_no));



