--Create a backup table emp_backup that copies everything from emp1.

create table emp_backup select * from emp1;
Query OK, 12 rows affected (0.033 sec)
Records: 12  Duplicates: 0  Warnings: 0

--Create a table emp_small with only id, first_name, and salary from emp1.

create table emp_samll select id,first_name,salary from emp1;
Query OK, 12 rows affected (0.031 sec)
Records: 12  Duplicates: 0  Warnings: 0

-Create a table emp_bonus with id, first_name, salary, and a new column bonus_salary = salary + 2000.

create table emp_bonus select id,first_name,salary,salary+2000 bonus_salary from emp1;
Query OK, 12 rows affected (0.028 sec)
Records: 12  Duplicates: 0  Warnings: 0

--Create an empty table emp_template with the same structure as emp1.

CREATE TABLE emp_template LIKE emp1;

--Copy all rows from emp1 into emp_template.

insert into emp_template select * from emp1 ;
Query OK, 12 rows affected (0.017 sec)
Records: 12  Duplicates: 0  Warnings: 0

--Show the first name and salary of all employees whose salary is greater than 70,000.

select first_name,salary from emp1 where salary >70000 ;
+------------+--------+
| first_name | salary |
+------------+--------+
| Amit       |  75000 |
| Ravi       |  82000 |
| Anil       |  78000 |
| Divya      |  73000 |
| Arjun      |  71000 |
+------------+--------+
5 rows in set (0.001 sec)

--Show only the first_name of employees where id is less than 5.

select first_name from emp1 where id<5 ;
+------------+
| first_name |
+------------+
| Amit       |
| Priya      |
| Ravi       |
| Sneha      |
+------------+
4 rows in set (0.001 sec)

--Select all employees where the first_name contains the letter "e".

select * from emp1 where first_name like "%e%";
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
4 rows in set (0.001 sec)

--Show employees whose id is even.

 select * from emp1 where id mod 2=0;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
6 rows in set (0.001 sec)

--Display employees where last_name is NULL.

select * from emp1 where last_name is null;
+------+------------+-----------+--------+------+------------+--------+
| id   | first_name | last_name | gender | dob  | department | salary |
+------+------------+-----------+--------+------+------------+--------+
|   11 | Rakesh     | NULL      | NULL   | NULL | NULL       |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL | NULL       |   NULL |
+------+------------+-----------+--------+------+------------+--------+
2 rows in set (0.001 sec)

--Show all employees in descending order of salary.

select * from emp1 order by salary desc;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Display employees in ascending order of first_name.

select * from emp1 order by first_name ;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Show employees ordered by department and then by salary.

select * from emp1 order by department,salary;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Display employees ordered by dob (date of birth) in ascending order.

select * from emp1 order by dob;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Show employees ordered first by gender and then by first_name (descending).

select * from emp1 order by gender,first_name desc;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Show only male employees with salary above 70,000.

select * from emp1 where salary >70000 and gender="male";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations |  78000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics  |  71000 |
+------+------------+-----------+--------+------------+------------+--------+
4 rows in set (0.001 sec)

--Show only female employees in the HR department.

select * from emp1 where gender="female" and department="HR";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR         |  65000 |
+------+------------+-----------+--------+------------+------------+--------+
1 row in set (0.001 sec)

--Select employees whose department is either "IT" or "Finance".

 select * from emp1 where department="IT" or department="Finance";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT         |  73000 |
+------+------------+-----------+--------+------------+------------+--------+
3 rows in set (0.001 sec)

--Show employees whose salary is between 65,000 and 75,000.

 select * from emp1 where salary between 65000 and 75000;
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR         |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing  |  70000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT         |  73000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales      |  69000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics  |  71000 |
+------+------------+-----------+--------+------------+------------+--------+
6 rows in set (0.001 sec)

--Show employees who were born after 1990-01-01.

select * from emp1 where dob >"1990-01-01";
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
+------+------------+-----------+--------+------------+------------------+--------+
6 rows in set (0.001 sec)

--Run a query that always returns all rows using where 1.

select * from emp1 where 1;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Run a query that never returns any rows using where 0.

select * from emp1 where 0;
Empty set (0.000 sec)


--Check what happens if you run select * from emp1 where "Priya";.

select * from emp1 where "Priya";
Empty set, 1 warning (0.000 sec)

--Write a query that shows employees only if "a" = "a".

select * from emp1 where "a"="a";
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Show employees where 1 is true and 0 is false.

select * from emp1 where 1 is true and 0 is false;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set (0.001 sec)

--Test if null = null works in MariaDB (hint: it won’t, use is null).

select * from emp1 where null =null;
Empty set (0.000 sec)

--Show all employees where "zero" is false.

select * from emp1 where "zero" is false;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
12 rows in set, 1 warning (0.001 sec)

--Create a new table emp_high containing only employees with salary > 75000.

 create table emp_high select * from employees where salary>75000;
Query OK, 2 rows affected (0.026 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [class_demo]> select * from emp_high ;
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations |  78000 |
+------+------------+-----------+--------+------------+------------+--------+
2 rows in set (0.001 sec)

--Create a new table emp_A with employees whose names start with "A".

 create table emp_A select * from employees where First_name like "A%";
Query OK, 3 rows affected (0.026 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [class_demo]> select * from emp_A ;
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations |  78000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics  |  71000 |
+------+------------+-----------+--------+------------+------------+--------+
3 rows in set (0.001 sec)


--Show employees where salary is NULL or dob is NULL.

select * from employees where salary is null or dob is null;
+------+------------+-----------+--------+------+------------+--------+
| id   | first_name | last_name | gender | dob  | department | salary |
+------+------------+-----------+--------+------+------------+--------+
|    0 | NULL       | NULL      | NULL   | NULL | NULL       |   NULL |
|   11 | Rakesh     | NULL      | NULL   | NULL | NULL       |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL | NULL       |   NULL |
+------+------------+-----------+--------+------+------------+--------+
3 rows in set (0.001 sec)

--Display employees whose first_name ends with "a".

select * from employees where First_name like "%a";
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
+------+------------+-----------+--------+------------+------------------+--------+
5 rows in set (0.001 sec)

--Select employees whose department is not NULL, order them by department.

 select * from employees where department is  not null order by department;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
+------+------------+-----------+--------+------------+------------------+--------+
10 rows in set (0.001 sec)

