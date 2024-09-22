--min()/max()
select dept, ID,max(age),min(age) from student group by dept -- shows min and max age of each dept(group by)
select dept, ID,max(age)as max_age from student

--sub query
/* SELECT name
FROM student
WHERE age = (SELECT MIN(age) FROM student); 
*/
--groupby+having
/* SELECT dept, max(age)as max_age
FROM student
GROUP BY dept having max(age)>30;
 */

 --count()
 /* select count(*) as total_dept from (select DISTINCT dept from student) as count_dept
  select count(DISTINCT dept) AS Unique_Departments FROM student; */ --counts unique depts

 select count(*) as total_students from student --counts total rows
 select dept, count(*) as total_students_bydept from student group by dept--Count the number of students in each department.
 select count(*) as students_above_30 from student where age>30 --counts total students whos age is greater than 30
select dept, count(*) as student_25 from student where age>25 group by dept --counts total number of students in each dept whos age is greater than 30
select count(age) from student --counts age rows which is 10(10 students)


--sum()
select sum(age) as total_age from student --sums the total age of every student
select dept,sum(age) as total_age from student group by dept --sums age of students by dept
select sum(age) as total_age from student where age>30 --sums age whos age>30
select sum(age) as total_age_CSE from student where dept="CSE"--sums age of CSE dept
select  sum(age)as total_age from student where dept in ("CSE","EEE");-- sum of ages for students in both CSE and EEE departments.
select dept,sum(age) from student where age>25 group by dept -- sum of ages for students older than 25, grouped by department.


--avg()
select avg(age) as avg_age from student
select dept,avg(age) as avg_age from student group by dept 



