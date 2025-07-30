USE ps316;
SHOW TABLES;
SELECT * FROM employee;
SELECT * FROM employee ORDER BY salary DESC;
SELECT emp_name,salary FROM employee ORDER BY salary DESC LIMIT 1 ;
SELECT emp_name,salary FROM employee ORDER BY salary DESC LIMIT 1,2 ;

SELECT location,count(emp_id) AS countofemp,avg(salary) AS average,max(salary) AS maximum,min(salary) AS minumum,sum(salary) AS sumation FROM employee
 GROUP BY location HAVING count(emp_id)>2 ;
 
 
SELECT location,count(emp_id) AS countofemp,avg(salary) AS average,max(salary) AS maximum,min(salary) AS minumum,sum(salary) AS sumation FROM employee
 GROUP BY location HAVING countofemp>2 ;
 
 SELECT location,count(emp_id) AS countofemp  FROM employee 
 WHERE salary>20000
 GROUP BY location;
 
  SELECT location,count(emp_id) AS countofemp  FROM employee 
 WHERE salary>20000
 GROUP BY location
 HAVING countofemp>1;
 
 SELECT location,count(emp_id) FROM employee 
 WHERE salary>20000
 GROUP BY location
 HAVING count(emp_id)>1;
 
 SELECT location,salary FROM employee ORDER BY location,salary DESC;
 
  SELECT location,salary FROM employee ORDER BY location IS NULL,salary DESC;
  
  SELECT emp_name,LENGTH(emp_name) FROM employee;
  SELECT emp_name,location,CONCAT(emp_name," ",location) AS concatinartion FROM employee;
 
 SELECT UPPER(emp_name) AS uppercase FROM employee;
 
  SELECT LOWER(emp_name) AS uppercase FROM employee;
  
  SELECT SUBSTRING("Welcome to SQL",1,5) AS sunstring_text;
  
  SELECT SUBSTRING("Welcome to SQL",3,5) AS sunstring_text;
  
   SELECT TRIM("       SQL TUTORIAL       " ) AS sunstring_text;
   
   SELECT REPLACE("I like python","python","SQL" ) AS sunstring_text;
   
-- Step 1: Create a Table

CREATE TABLE Employees (
EmployeeID INT,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Position VARCHAR(50),
Notes VARCHAR(100)
);

-- Step 2: Insert Sample Data

INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Notes)
VALUES (1, 'John', 'Doe', 'Software Engineer', 'Loves Python programming.'),
(2, 'Jane', 'Smith', 'Data Scientist', 'Great at SQL queries.');


SELECT * FROM Employees;

SELECT CONCAT(FirstName," ",LastName) AS FullName,
UPPER(FirstName) AS UpperFirstName,
LOWER(LastName) AS LastNameLower,
SUBSTRING(Position,1,7) AS positionPart,
REPLACE(Notes,"Python","SQL") AS UpdatedNotes,
TRIM(notes) AS trimmed
FROM Employees;

SELECT CONCAT(FirstName," ",LastName) AS FullName,
UPPER(FirstName) AS UpperFirstName,
LOWER(LastName) AS LastNameLower,
SUBSTRING(Position,1,7) AS positionPart,
REPLACE(Notes,"Python","SQL") AS UpdatedNotes,
TRIM(notes) AS trimmed,
LEFT(notes,4) AS LeftChar,
RIGHT(notes,4) AS RightChar
FROM Employees;

CREATE TABLE emp (fullname VARCHAR(30));
SELECT * FROM emp;

SELECT SUBSTRING_INDEX(fullname," ",1) FROM emp;


SELECT SUBSTRING_INDEX(fullname," ",1) FROM emp;

SELECT SUBSTRING_INDEX("hI THIS IS ONKAR GHORPADE"," ",2)

SELECT SUBSTRING_INDEX(fullname," ",-1) FROM emp;

INSERT INTO emp SELECT CONCAT(FirstName," ",LastName) FROM Employees;