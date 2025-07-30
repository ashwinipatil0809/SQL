create database self;
use self;

create table employee(emp_id int,emp_name varchar(20),manager_id int);
insert into employee(emp_id,emp_name) VALUES (1,"ponama");
insert into employee values(2,"dipali",1),
					(3,"omkar",2),
                    (4,"om",2),
					(5,"shradha",3);
                    
                    select*from employee;
                    
 select e.emp_name as employee,m.emp_name as manager_name                   
FROM employee e
LEFT JOIN
employee m
ON 
e.manager_id=m.emp_id



   select e.emp_name as manager_name ,m.emp_name as employee                 
FROM employee e
RIGHT JOIN
employee m
ON 
e.manager_id=m.emp_id


