USE ps316;
SHOW TABLES;
DESC student;
CREATE TABLE employee(emp_id INT,emp_name VARCHAR(30),salary INT,location VARCHAR(20));
INSERT INTO employee(emp_id,emp_name,salary,location) VALUES (101,"Onkar",30000,"Delhi");
INSERT INTO employee VALUES (102,"Neeta",34000,"Delhi");

INSERT INTO employee VALUES (103,"Suresh",33000,"Pune"),(104,"Ramesh",32000,"Pune");
SELECT * FROM employee;

INSERT INTO employee(emp_name,salary) VALUES ("Onkar",30000);





INSERT INTO employee(location,salary) VALUES ("Hydrabad",36700);
SELECT emp_id,emp_name,salary FROM employee WHERE location="Pune";


CREATE TABLE pune_employee(emp_id INT,emp_name VARCHAR(30),salary INT);
SELECT * FROM pune_employee;

INSERT INTO pune_employee SELECT emp_id,emp_name,salary FROM employee WHERE location="Pune";

INSERT INTO employee(emp_id,emp_name,salary,location) VALUES (106,"Nitesh",36000,"Delhi"),(107,"Gukesh",NULL,"Hydrabad");
SELECT * FROM  employee;



INSERT INTO employee(emp_id,emp_name,salary,location) VALUES (106,"Nitesh",36000,"Delhi"),(107,"Gukesh"," " ,"Hydrabad");

INSERT INTO employee(emp_id,emp_name,salary) VALUES ("Onkar",30000);

SET SQL_SAFE_UPDATES=0;

UPDATE employee SET salary=40000;

UPDATE employee SET salary=56000 WHERE location="Delhi";

UPDATE employee SET salary=
CASE location
WHEN "Delhi" THEN salary*1.10
WHEN "Pune" THEN salary*1.15
ELSE salary
END;

UPDATE employee SET salary=65000,emp_id=105 WHERE location="Delhi";

UPDATE employee SET salary=
CASE WHEN location="Delhi" THEN 60000
	WHEN location="pune" THEN 50000
    ELSE salary
    END,
    emp_id=
    CASE WHEN emp_id=105 THEN 107
		WHEN emp_id=104 THEN 108
        ELSE emp_id
        END;
        
UPDATE employee SET salary=
CASE location WHEN "Delhi" THEN 70000
	WHEN "pune" THEN 80000
    ELSE salary
    END,
    emp_id=
    CASE emp_id WHEN 105 THEN 109
		WHEN 104 THEN 110
        ELSE emp_id
        END;
        
UPDATE employee SET salary=
CASE WHEN location="Delhi" THEN (SELECT salary FROM pune_employee)
	WHEN emp_id=103 THEN 50000
    ELSE salary
    END;
    
DELETE FROM employee;

SELECT  AVG(salary) INTO @avg_salary FROM employee;
UPDATE employee SET salary= CASE WHEN location="Delhi" THEN @avg_salary ELSE salary END;

UPDATE employee SET salary=
CASE WHEN location="Delhi" THEN (SELECT MAX(salary) FROM pune_employee)
    ELSE salary
    END;
    
SELECT  MAX(salary)  FROM employee;

DELETE FROM employee WHERE salary >32000;
    