create database ID509

create table customer 
( 
ID int primary key,
name varchar(20),
phn_number varchar(12));


create table account ( 
acc_no int primary key,
balance int,
branch varchar(20));

create table deposit ( 
ID int,
acc_no int,
datee date,
FOREIGN KEY (ID) REFERENCES customer(ID),
FOREIGN KEY (acc_no) REFERENCES account(acc_no));



INSERT INTO customer (ID, name, phn_number) VALUES
(1, 'Rahul Ahmed', 01812345678),
(2, 'Sofia Khan', 01923456789),
(3, 'Mahiul Islam', 01734567890),
(4, 'Nabila Sultana', 01645678901),
(5, 'Arif Hossain', 01556789012),
(6, 'Tania Begum', 01467890123),
(7, 'Shakib Al Hasan', 01378901234);



INSERT INTO account (acc_no, balance, branch) VALUES
(101, 25000, 'Farm Gate'),
(102, 30000, 'Mirpur'),
(103, 22000, 'Badda'),
(104, 25000, 'Farm Gate'),
(105, 35000, 'Mirpur'),
(106, 27000, 'Badda'),
(107, 24000, 'Farm Gate');


INSERT INTO deposit (ID, acc_no, datee) VALUES
(1, 101, '2024-01-10'),
(2, 102, '2024-02-15'),
(3, 103, '2024-03-20'),
(4, 104, '2024-04-25'),
(5, 105, '2024-05-30'),
(6, 106, '2024-06-05'),
(7, 107, '2024-07-10');

--1
select account.branch, count(deposit.ID) from
deposit join account on deposit.acc_no = account.acc_no
group by branch

--2
select branch, avg(balance) from account group by branch
having avg(balance)>20000

--3
select customer.ID, customer.name, customer.phn_number, account.acc_no, account.branch
from customer
join deposit on customer.ID = deposit.ID
join account on  deposit.acc_no = account.acc_no
where(customer.phn_number like '017%' or customer.phn_number like '013%')
and account.branch = 'Farm Gate'

--4
SELECT customer.ID, customer.name,
COUNT(account.acc_no) 
FROM customer JOIN deposit ON customer.ID = deposit.ID
JOIN account ON deposit.acc_no = account.acc_no
GROUP BY customer.ID, customer.name,
HAVING COUNT(account.acc_no) > 2;


