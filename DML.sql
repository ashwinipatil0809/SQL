CREATE DATABASE DML;
USE DML;
CREATE TABLE employee(emp_id INT,emp_name VARCHAR(30),salary INT,location VARCHAR(20));
INSERT INTO employee(emp_id,emp_name,salary,location) VALUES (101,"Onkar",30000,"Delhi");
select *from employee;
INSERT INTO employee VALUES (101,"Neeta",34000,"Delhi");

drop table employee;
INSERT INTO employee VALUES (103,"Neeta",34000,"Delhi");
INSERT INTO employee VALUES (102,"paras",50000,"Hydrabad");

INSERT INTO employee VALUES (103,"Suresh",33000,"Pune"),(104,"Ramesh",32000,"Pune");

insert into employee(emp_name,location)VALUES("NEHA",90000);

-- fetch vlue
CREATE TABLE employee(emp_id INT,emp_name VARCHAR(30),salary INT,location VARCHAR(20));
INSERT INTO employee(emp_id,emp_name,salary,location) VALUES (101,"Onkar",30000,"Delhi");
INSERT INTO employee VALUES (102,"paras",50000,"Hydrabad");
INSERT INTO employee VALUES (103,"Suresh",33000,"Pune"),(104,"Ramesh",32000,"Pune");
SELECT emp_id,emp_name,salary FROM employee WHERE location="Pune";

CREATE TABLE pune_employee(emp_id INT,emp_name VARCHAR(30),salary INT);
SELECT * FROM pune_employee;
drop table  pune_employee;

INSERT INTO pune_employee SELECT emp_id,emp_name,salary FROM employee WHERE location="Pune";


CREATE TABLE pune_employee(emp_id INT,emp_name VARCHAR(30),salary INT);
insert into pune_employee SELECT emp_id,emp_name,salary FROM employee WHERE location="Pune";

UPDATE employee SET salary=56000 WHERE location="Delhi";
SET SQL_SAFE_UPDATES=0;

UPDATE employee SET salary=
CASE location
WHEN "Delhi" THEN salary*1.10
WHEN "Pune" THEN salary*1.15
ELSE salary
END;


UPDATE employee SET salary=
CASE WHEN location="Delhi" THEN 60000
	WHEN location="pune" THEN 50000
    ELSE salary
    END,
    emp_id=
    CASE WHEN emp_id=103 THEN 107
		WHEN emp_id=104 THEN 108
        ELSE emp_id
        END;
        
            
SELECT  MAX(salary)  FROM employee;

UPDATE employee SET salary=
CASE WHEN location="Delhi" THEN (SELECT MAX(salary) FROM pune_employee)
    ELSE salary
    END;

