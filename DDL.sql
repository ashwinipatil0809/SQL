CREATE DATABASE DDL;
use DDL;
CREATE TABLE employee(emp_id int,emp_name varchar(20),salary INT,location VARCHAR(20));
DESC employee;
drop  table employee;
ALTER TABLE employee ADD column departmert VARCHAR(20);
ALTER TABLE employee ADD COLUMN age VARCHAR(20);

ALTER TABLE employee ADD last_name varchar(20) AFTER emp_name;

ALTER TABLE employee ADD emp_idd int first;

ALTER TABLE employee ADD(Gender varchar(20),email varchar(10));

ALTER TABLE employee DROP emp_idd;
ALTER TABLE employee DROP age;

ALTER TABLE employee MODIFY departmert char;
ALTER TABLE employee MODIFY salary decimal(10,2); 

ALTER TABLE employee CHANGE column salary APPRICITION INT;
CREATE INDEX idx_emp_id ON employee(emp_id);
drop table student;


dESC student;
insert into student VALUES(101,"ashuu","pune"),(102,"paras","mumbai"),(103,"amruta","karad");
select*from student;

SELECT roll_no,stud_name,address FROM student WHERE Address="pune";
ALTER TABLE employee ADD column Gender varchar(10);

ALTER TABLE employee MODIFY column emp_id INT NOT NULL;

ALTER TABLE employee DROP column Gender;

CREATE TABLE student(roll_no int NOT NULL UNIQUE ,std_name VARCHAR(20),Address VARCHAR(20));

