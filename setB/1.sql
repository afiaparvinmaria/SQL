create table employee (
ID int primary key,
name varchar(20),
dept varchar(4),
salary int)


create table project (
p_no int primary key,
p_name varchar(20),
budget int,
location varchar(20));

create table assign (
ID int, 
p_no int,
datee date,
FOREIGN KEY(ID) REFERENCES employee(ID),
FOREIGN key(p_no) REFERENCES project(p_no));


INSERT INTO employee (ID, name, dept, salary) VALUES (1, 'Alice', 'CSE', 60000);
INSERT INTO employee (ID, name, dept, salary) VALUES (2, 'Bob', 'EEE', 55000);
INSERT INTO employee (ID, name, dept, salary) VALUES (3, 'Charlie', 'MECH', 62000);
INSERT INTO employee (ID, name, dept, salary) VALUES (4, 'Diana', 'CSE', 59000);
INSERT INTO employee (ID, name, dept, salary) VALUES (5, 'Eve', 'EEE', 61000);


INSERT INTO project (p_no, p_name, budget, location) VALUES (101, 'Project Alpha', 50000, 'New York');
INSERT INTO project (p_no, p_name, budget, location) VALUES (102, 'Project Beta', 75000, 'Los Angeles');
INSERT INTO project (p_no, p_name, budget, location) VALUES (103, 'Project Gamma', 60000, 'Chicago');
INSERT INTO project (p_no, p_name, budget, location) VALUES (104, 'Project Delta', 85000, 'New York');
INSERT INTO project (p_no, p_name, budget, location) VALUES (105, 'Project Epsilon', 40000, 'Los Angeles');


INSERT INTO assign (ID, p_no, datee) VALUES (1, 101, '2024-01-15');
INSERT INTO assign (ID, p_no, datee) VALUES (2, 102, '2024-02-20');
INSERT INTO assign (ID, p_no, datee) VALUES (3, 103, '2024-03-25');
INSERT INTO assign (ID, p_no, datee) VALUES (4, 104, '2024-04-05');
INSERT INTO assign (ID, p_no, datee) VALUES (5, 105, '2024-05-10');


--1
select project.location, avg(employee.salary),count(employee.ID) FROM
assign join employee on assign.ID=employee.ID
join project on project.p_no=assign.p_no
group by location

--2
select location, avg(budget) from project group by location having avg(budget)>20000

--3
select employee.ID, employee.name FROM
project join assign on project.p_no=assign.p_no
join employee on employee.ID=assign.ID
where project.location="New York" and assign.datee= '2024-01-15'

/* select employee.ID, employee.name FROM
employee join assign on employee.ID= assign.ID
join project on assign.p_no=project.p_no 
where project.location="New York" and assign.datee='2024-01-15' */


--4
select employee.ID,employee.name from
employee join assign on employee.ID= assign.ID
join project on project.p_no=assign.p_no 
where project.location="New York" and budget>=20000


