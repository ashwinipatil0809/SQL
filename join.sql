use amitdb;
show tables;
SELECT*FROM student;
SELECT*FROM course;
drop table  student;
drop  table course;
create table student(roll_no int,std_name varchar(10),Address varchar(10));
create table  course(course_id int,course_name varchar(20),roll_no INT);


insert into student values(101,"omkar","pune"),(102,"neeta","pune"),(103,"ashwini","sangli"),(104,"shubham","mumbai");

insert into course values(10,"data science",101),(11,"FSD",102),(10,"data science",102),(11,"FSD",103);

select student.roll_no,course.course_name,student.std_name
FROM student 
INNER JOIN course ON
student.roll_no=course.roll_no;

-- left join

insert into student values(101,"omkar","pune"),(102,"neeta","pune"),(103,"ashwini","sangli"),(104,"shubham","mumbai"),(105,"PARAS","Hydrabad");

insert into course values(10,"data science",101),(11,"FSD",102),(10,"data science",102),(11,"FSD",103);
 

select s.roll_no,c.course_name,s.std_name
FROM student AS s
LEFT JOIN course AS c 
ON
s.roll_no=c.roll_no;


insert into student values(101,"omkar","pune"),(102,"neeta","pune"),(103,"ashwini","sangli"),(104,"shubham","mumbai"),(105,"PARAS","Hydrabad");

insert into course values(10,"data science",101),(11,"FSD",102),(10,"data science",102),(11,"FSD",103),(12,"java",106),(13,"php",107);
select s.roll_no,c.course_name,s.std_name
FROM student AS s
RIGHT JOIN course AS c 
ON
s.roll_no=c.roll_no;

-- full outer join

select *
FROM student AS s 
FULL JOIN course AS c 
ON
s.roll_no=c.roll_no;






-- cross join
select*from student CROSS JOIN course;
