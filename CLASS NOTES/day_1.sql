USE PS316;
DROP DATABASE PS316;
CREATE DATABASE PS316;
CREATE TABLE student(roll_no INT NOT NULL,stud_name VARCHAR(20),address VARCHAR(20));
DESC student;
INSERT INTO student VALUES (5,"YASH",'pune,mumbai');
SELECT * FROM student;
INSERT INTO student(stud_name,address) VALUES ("Onkar","Pune");
DROP TABLE student;
CREATE TABLE student(roll_no INT,stud_name VARCHAR(20),address VARCHAR(20));
ALTER TABLE student MODIFY COLUMN roll_no INT NOT NULL;
ALTER TABLE student MODIFY COLUMN roll_no INT;

CREATE TABLE student(roll_no INT UNIQUE,stud_name VARCHAR(20),address VARCHAR(20));


CREATE TABLE student(roll_no INT UNIQUE,stud_name VARCHAR(20),address VARCHAR(20));


ALTER TABLE student MODIFY COLUMN roll_no INT UNIQUE;

ALTER TABLE student DROP INDEX roll_no;

CREATE TABLE student(roll_no INT NOT NULL UNIQUE,stud_name VARCHAR(20),address VARCHAR(20));

CREATE TABLE student(roll_no INT PRIMARY KEY,stud_name VARCHAR(20),address VARCHAR(20));

CREATE TABLE student(roll_no INT ,stud_name VARCHAR(20),address VARCHAR(20),PRIMARY KEY(roll_no,stud_name));

CREATE TABLE student(roll_no INT PRIMARY KEY,stud_name VARCHAR(20),address VARCHAR(20));

CREATE TABLE course (roll_no INT,Course_id INT,course_name VARCHAR(30),FOREIGN KEY (roll_no) REFERENCES student(roll_no));

DESC course;

INSERT INTO student VALUES (101,"YASH","Pune");

INSERT INTO student VALUES(102,"NIKET","Pune");

INSERT INTO course VALUES (101,10,"dsda");

SELECT * FROM student;

SELECT * FROM course;

INSERT INTO course VALUES (103,10,"dsda");
DELETE FROM student WHERE roll_no=102;

DROP TABLE course;

CREATE TABLE course (roll_no INT,Course_id INT,course_name VARCHAR(30),
FOREIGN KEY (roll_no) REFERENCES student(roll_no)
ON DELETE CASCADE 
ON UPDATE CASCADE);


CREATE TABLE course (roll_no INT,Course_id INT,course_name VARCHAR(30),
FOREIGN KEY (roll_no) REFERENCES student(roll_no));

SHOW CREATE TABLE student;
UPDATE student SET roll_no=103 WHERE roll_no=101;

;

INSERT INTO student VALUES(10,"NIKET","Pune");
ALTER TABLE course DROP FOREIGN KEY course_ibfk_1;

ALTER TABLE course ADD FOREIGN KEY (roll_no) REFERENCES student(roll_no);


CREATE TABLE student(roll_no INT PRIMARY KEY ,stud_name VARCHAR(20),address VARCHAR(20),CHECK(roll_no>100));

ALTER TABLE student DROP CONSTRAINT student_chk_1;

CREATE TABLE student(roll_no INT NOT NULL DEFAULT 100 ,stud_name VARCHAR(20),address VARCHAR(20));

CREATE TABLE student(roll_no INT AUTO_INCREMENT PRIMARY KEY ,stud_name VARCHAR(20),address VARCHAR(20));

SET @@session.auto_increment_increment= 1;
SET @@session.auto_increment_offset=100;

CREATE TABLE student(roll_no INT NOT NULL,stud_name VARCHAR(20),address ENUM("Pune","Mumbai"));

CREATE TABLE student(roll_no INT NOT NULL,stud_name VARCHAR(20),address set("Pune","Mumbai"));

CREATE TABLE student(roll_no INT NOT NULL,stud_name VARCHAR(20),address VARCHAR(20),notify SET("EMail","SMS","Call","Whatsapp"));