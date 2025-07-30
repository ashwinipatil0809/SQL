use constraints
create TABLE studentss(roll_no INT NOT NULL,stud_name VARCHAR(20),address VARCHAR(20));
desc studentss;
CREATE TABLE coursess (roll_no INT,Course_id INT,course_name VARCHAR(30),FOREIGN KEY (roll_no) REFERENCES student(roll_no));
desc coursess;

INSERT INTO student VALUES (101,"YASH","Pune");
INSERT INTO student VALUES(102,"NIKET","Pune");
INSERT INTO course VALUES (101,10,"dsda");
select*from studentss;
select*from course;
INSERT INTO course VALUES (103,10,"dsda");
DROP TABLE course;
DROP TABLE student;

CREATE TABLE coursess (roll_no INT,Course_id INT,course_name VARCHAR(30),
FOREIGN KEY (roll_no) REFERENCES studentss(roll_no)
ON DELETE CASCADE 
ON UPDATE CASCADE);
CREATE TABLE course1(roll_no INT,Course_id INT,course_name VARCHAR(30),
FOREIGN KEY (roll_no) REFERENCES student(roll_no));
SHOW CREATE TABLE student;
UPDATE student SET roll_no=103 WHERE roll_no=101;

INSERT INTO student VALUES(10,"NIKET","Pune");

CREATE TABLE course2 (roll_no INT,Course_id INT,course_name VARCHAR(30),
FOREIGN KEY (roll_no) REFERENCES student(roll_no));
SHOW CREATE TABLE course2;

CREATE TABLE studenta(roll_no INT PRIMARY KEY ,stud_name VARCHAR(20),address VARCHAR(20),CHECK(roll_no>100));
CREATE TABLE student5(roll_no INT NOT NULL DEFAULT 100 ,stud_name VARCHAR(20),address VARCHAR(20));
desc student5;
CREATE TABLE student6(roll_no INT AUTO_INCREMENT PRIMARY KEY ,stud_name VARCHAR(20),address VARCHAR(20));
desc student6;