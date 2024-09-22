create database seta

create table customer(ID int PRIMARY KEY,
name varchar(20),
phone int);


create table project(p_no int PRIMARY KEY,
p_name varchar(20), budget int,
location varchar(20));

create table assign(ID int, 
p_no int, 
datee date,
FOREIGN KEY(ID) REFERENCES customer(ID),
FOREIGN KEY(p_no) REFERENCES project(p_no));






INSERT INTO customer (ID, name, phone) VALUES (1, 'John Doe', 1234567890);
INSERT INTO customer (ID, name, phone) VALUES (2, 'Jane Smith', 2345678901);
INSERT INTO customer (ID, name, phone) VALUES (3, 'Michael Brown', 3456789012);
INSERT INTO customer (ID, name, phone) VALUES (4, 'Emily Davis', 4567890123);
INSERT INTO customer (ID, name, phone) VALUES (5, 'Chris Johnson', 5678901234);
INSERT INTO customer (ID, name, phone) VALUES (6, 'David Lee', 6789012345);
INSERT INTO customer (ID, name, phone) VALUES (7, 'Sarah Wilson', 7890123456);
INSERT INTO customer (ID, name, phone) VALUES (8, 'Daniel Kim', 8901234567);
INSERT INTO customer (ID, name, phone) VALUES (9, 'Sophia Martinez', 9012345678);
INSERT INTO customer (ID, name, phone) VALUES (10, 'James Garcia', 1122334455);



INSERT INTO project (p_no, p_name, budget, location) VALUES (1, 'Project Alpha', 50000, 'New York');
INSERT INTO project (p_no, p_name, budget, location) VALUES (2, 'Project Beta', 75000, 'Los Angeles');
INSERT INTO project (p_no, p_name, budget, location) VALUES (3, 'Project Gamma', 60000, 'Chicago');
INSERT INTO project (p_no, p_name, budget, location) VALUES (4, 'Project Delta', 85000, 'New York');
INSERT INTO project (p_no, p_name, budget, location) VALUES (5, 'Project Epsilon', 40000, 'Los Angeles');
INSERT INTO project (p_no, p_name, budget, location) VALUES (6, 'Project Zeta', 95000, 'Chicago');
INSERT INTO project (p_no, p_name, budget, location) VALUES (7, 'Project Eta', 72000, 'New York');
INSERT INTO project (p_no, p_name, budget, location) VALUES (8, 'Project Theta', 68000, 'Los Angeles');
INSERT INTO project (p_no, p_name, budget, location) VALUES (9, 'Project Iota', 56000, 'Chicago');
INSERT INTO project (p_no, p_name, budget, location) VALUES (10, 'Project Kappa', 88000, 'New York');


INSERT INTO assign (ID, p_no, datee) VALUES (1, 1, '2024-01-15');
INSERT INTO assign (ID, p_no, datee) VALUES (2, 2, '2024-02-20');
INSERT INTO assign (ID, p_no, datee) VALUES (3, 3, '2024-03-25');
INSERT INTO assign (ID, p_no, datee) VALUES (4, 4, '2024-04-30');
INSERT INTO assign (ID, p_no, datee) VALUES (5, 5, '2024-05-05');
INSERT INTO assign (ID, p_no, datee) VALUES (6, 6, '2024-06-10');
INSERT INTO assign (ID, p_no, datee) VALUES (7, 7, '2024-07-15');
INSERT INTO assign (ID, p_no, datee) VALUES (8, 8, '2024-08-20');
INSERT INTO assign (ID, p_no, datee) VALUES (9, 9, '2024-09-25');
INSERT INTO assign (ID, p_no, datee) VALUES (10, 10,'2024-10-30'); 




--2
select location, avg(budget) from project group by location
--3

select location, count(*) from project where (count(ID)>1)