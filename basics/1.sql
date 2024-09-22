CREATE DATABASE OJOGOR;

create table student(
    ID int primary key, 
    name varchar(20),
    dept varchar(4)
     );



insert into student (ID, name, dept) values
(1, 'Sarah Ahmed', 'CSE'),
(2, 'David Hassan', 'EEE'),
(3, 'Noor Jahan', 'MECH'),
(4, 'Tanvir Alam', 'CSE'),
(5, 'Rafiq Rahman', 'EEE'),
(6, 'Simran Begum', 'MECH'),
(7, 'Fahim Akhtar', 'CSE'),
(8, 'Rehana Islam', 'EEE'),
(9, 'Sameer Uddin', 'MECH'),
(10, 'Ayesha Siddique', 'CSE');

/* insert into student values( 1, 'sarah Ahmed' 'CSE') */



---select sql operations
 
select name from student --shows just name column
select * from student --shows all
select ID, name from student--shows ID and name

--select+where and using "equal operator"
select * from student where dept = 'EEE' --shows student details who is in EEE dept
select ID,name from student where dept = 'CSE'--shows student's name and ID who is in CSE dept

--adding a new column or attribute in the student table
 alter table student add age int --age attribute


 --adding age into each student's row
UPDATE student SET Age = 25 WHERE ID = 1;
UPDATE student SET Age = 32 WHERE ID = 2;
UPDATE student SET Age = 29 WHERE ID = 3;
UPDATE student SET Age = 21 WHERE ID = 4;
UPDATE student SET Age = 45 WHERE ID = 5;
UPDATE student SET Age = 23 WHERE ID = 6;
UPDATE student SET Age = 37 WHERE ID = 7;
UPDATE student SET Age = 40 WHERE ID = 8;
UPDATE student SET Age = 27 WHERE ID = 9;
UPDATE student SET Age = 22 WHERE ID = 10;


-- using greater than/less than operator
select * from student where age>30 
select * from student where age<30


--using 'and' operator (in/not in )
select name  from student where age>30 and dept in ('CSE','EEE') --shows name whos age is greater than 30 and in  CSE and EEE
select name  from student where age>30 and dept not in ('CSE','EEE')  --shows all who in not in dept CSE and EEE
select name  from student where age>30 and dept="CSE"


--using 'or' operator 
select * from student where age<40 or dept = "EEE"

--using not operator
select name, ID from student where not dept="CSE" --shows who are not in CSE dept

--and+or/not+and
select ID,name from student where (dept='CSE' or dept ="EEE") and age>30
select * from student where not dept="CSE" and not dept="EEE"

--using between
select * from student  where age between 30 and 40 --shows info who age is between 30-40\

--using select distinct
select distinct dept from student --shows distinct departments- CSE, EEE, MECH



