MariaDB [2_4]> select * from emp1;
+----+------------+-----------+--------+------------+------------------+----------+
| id | first_name | last_name | gender | dob        | department       | salary   |
+----+------------+-----------+--------+------------+------------------+----------+
|  1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               | 75000.00 |
|  2 | Priya      | Verma     | Female | 1992-08-22 | HR               | 65000.00 |
|  3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          | 82000.00 |
|  4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        | 70000.00 |
|  5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       | 78000.00 |
|  6 | Divya      | Nair      | Female | 1991-12-12 | IT               | 73000.00 |
|  7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            | 69000.00 |
|  8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support | 60000.00 |
|  9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        | 71000.00 |
| 10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   | 58000.00 |
| 11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |     NULL |
| 12 | Raju       | NULL      | NULL   | NULL       | NULL             |     NULL |
+----+------------+-----------+--------+------------+------------------+----------+


Use the above table.

--select * from emp1 where id < 5;

select * from emp1 where id < 5;
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR         |  65000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing  |  70000 |
+------+------------+-----------+--------+------------+------------+--------+
4 rows in set (0.001 sec)


--select * from emp1 where id != 3;

+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
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
11 rows in set (0.001 sec)

--select * from emp1 where id IN (6, 7, 8);

 select * from emp1 where id IN (6, 7, 8);
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
+------+------------+-----------+--------+------------+------------------+--------+
3 rows in set (0.001 sec)

--select * from emp1 where id NOT IN (1, 2, 3);

 select * from emp1 where id NOT IN (1, 2, 3);
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
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
9 rows in set (0.001 sec)


--select * from emp1 where id between 3 and 8;

select * from emp1 where id between 3 and 8;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
+------+------------+-----------+--------+------------+------------------+--------+
6 rows in set (0.001 sec)

--select * from emp1 where gender = "Female";

select * from emp1 where gender = "Female";
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

--select * from emp1 where gender = "Female" and id < 10;

select * from emp1 where gender = "Female" and id < 10;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
+------+------------+-----------+--------+------------+------------------+--------+

--select * from emp1 where gender = "Male" or gender = "Female";

select * from emp1 where gender = "Male" or gender = "Female";
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
+------+------------+-----------+--------+------------+------------------+--------+
10 rows in set (0.001 sec)


--select * from emp1 where first_name = "Ramesh";

Empty set (0.001 sec)

--select * from emp1 where last_name like "S%";

+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales      |  69000 |
+------+------------+-----------+--------+------------+------------+--------+
2 rows in set (0.001 sec)

--select * from emp1 where salary > 50000;

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
+------+------------+-----------+--------+------------+------------------+--------+
10 rows in set (0.001 sec)

--select * from emp1 where salary < 25000;

Empty set (0.001 sec)

--select * from emp1 where salary between 40000 and 60000;

+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
+------+------------+-----------+--------+------------+------------------+--------+
2 rows in set (0.001 sec)

--select * from emp1 where salary like "6%";
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
+------+------------+-----------+--------+------------+------------------+--------+
3 rows in set (0.001 sec)

--select * from emp1 where salary IS NULL or salary = 0;
+------+------------+-----------+--------+------+------------+--------+
| id   | first_name | last_name | gender | dob  | department | salary |
+------+------------+-----------+--------+------+------------+--------+
|   11 | Rakesh     | NULL      | NULL   | NULL | NULL       |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL | NULL       |   NULL |
+------+------------+-----------+--------+------+------------+--------+
2 rows in set (0.000 sec)

--select * from emp1 where first_name like "_a__";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL       |   NULL |
+------+------------+-----------+--------+------------+------------+--------+
2 rows in set (0.000 sec)

--select * from emp1 where first_name like "%z";
Empty set (0.000 sec)

--select * from emp1 where first_name like "s%e";
Empty set (0.000 sec)

-- select * from emp1 where first_name like "%an%";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations |  78000 |
+------+------------+-----------+--------+------------+------------+--------+
1 row in set (0.000 sec)

--select * from emp1 where first_name like "%a%" and first_name like "%o%";
Empty set (0.000 sec)

-- select * from emp1 where dob like "%91%";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT         |  73000 |
+------+------------+-----------+--------+------------+------------+--------+
1 row in set (0.000 sec)

-- select * from emp1 where dob between "1985-01-01" and "1995-12-31";
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
+------+------------+-----------+--------+------------+------------------+--------+
10 rows in set (0.000 sec)

--select * from emp1 where dob > "1980-01-01" and dob < "1990-01-01";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations |  78000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales      |  69000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics  |  71000 |
+------+------------+-----------+--------+------------+------------+--------+
4 rows in set (0.001 sec)

--select * from emp1 where dob like "__90%";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
+------+------------+-----------+--------+------------+------------+--------+
1 row in set (0.000 sec)

-- select * from emp1 where dob like "%1992%";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR         |  65000 |
+------+------------+-----------+--------+------------+------------+--------+
1 row in set (0.000 sec)

-- select * from emp1 where MOD(id, 4) = 0;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
3 rows in set (0.000 sec)

--select * from emp1 where MOD(id, 2) != 0;
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations |  78000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales      |  69000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics  |  71000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL       |   NULL |
+------+------------+-----------+--------+------------+------------+--------+
6 rows in set (0.000 sec)

--select * from emp1 where MOD(id, 3) = 0 and MOD(id, 5) = 0;
Empty set (0.000 sec)

-- select * from emp1 where MOD(id, 7) = 0;
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales      |  69000 |
+------+------------+-----------+--------+------------+------------+--------+
1 row in set (0.001 sec)



# ===================Query base Questions======================

Show the employee whose ID is 7.
List employees whose ID is less than 3.
Get the employees whose ID is between 5 and 10.
Find employees with IDs 3, 6, or 8.
Retrieve employees whose ID is not 1.
Show all employees whose ID is even.
List employees with an ID divisible by 4.
Find employees whose ID ends with the number 2.
List all female employees with IDs less than 10.
Show all employees whose gender is not specified (NULL).
Display male employees whose first name starts with "A".
Find female employees whose first name contains "e".
Get employees whose gender is either "Male" or "Other".
List employees whose gender is Female and ID is odd.
show employees earning more than 90,000.
Find employees with salary less than 25,000.
Get employees whose salary is either 45,000, 55,000, or 65,000.
Find employees whose salary starts with a 6.
List employees whose salary is NULL or less than 20,000.
Find employees whose salary is between 50,000 and 80,000.
show employees whose first name starts with "S".
Find employees whose first name ends with "n".
List employees whose first name contains both "i" and "o".
Display employees whose first name is exactly 5 characters long.
Find employees whose first name starts with "m" and ends with "a".
List employees whose first name contains at least one vowel.
Show employees whose first name does not contain the letter "a".
Find employees whose first name has "B" as the second character.
Get employees born after January 1, 2001.
Show employees born before December 31, 1980.
List employees born in the year 1995.
Find employees born between 1988 and 1992.
Display employees whose DOB contains "88".
Find employees whose DOB ends with "-01-01".
List employees born in any year starting with "200".
Get employees whose DOB includes the number "3" at least twice.
Find employees with ID divisible by both 2 and 3.
Show employees with ID not divisible by 5.
List employees where ID mod 6 equals 1.
Get employees whose ID is divisible by 7 or 9.


# ====================  Extra Questions (optional) ====================================

--find the emp whose id is 10;

select concat(first_name," ",Last_name) Emp_name from employees where id =10;
+------------+
| Emp_name   |
+------------+
| Meena Iyer |
+------------+
1 row in set (0.001 sec)

--find those whose id is greater then 5

select id, concat(first_name," ",Last_name) Emp_name from employees where id >5;
+------+-------------+
| id   | Emp_name    |
+------+-------------+
|    6 | Divya Nair  |
|    7 | Rahul Singh |
|    8 | Neha Joshi  |
|    9 | Arjun Reddy |
|   10 | Meena Iyer  |
|   11 | NULL        |
|   12 | NULL        |
+------+-------------+

--show the details of those persons where id is 2, 4, 1, 9.

select * from employees where id in (2,4,1,9);
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR         |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing  |  70000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics  |  71000 |
+------+------------+-----------+--------+------------+------------+--------+
4 rows in set (0.001 sec)

--show the details of those whose id is greater then 5 and gender is male.

select * from employees where id in (2,4,1,9) and gender ="male";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics  |  71000 |
+------+------------+-----------+--------+------------+------------+--------+
2 rows in set (0.001 sec)

--show those detial whose salary is in the range of 30k to 70k;

 select * from employees where salary between 30000 and 70000;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
+------+------------+-----------+--------+------------+------------------+--------+
5 rows in set (0.001 sec)

--find those whose name is between Rahul to zoro.

 select * from employees where First_name between "Rahul" and "zero";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing  |  70000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales      |  69000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL       |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL       |   NULL |
+------+------------+-----------+--------+------------+------------+--------+
5 rows in set (0.001 sec)

--find those whose name is not exist between Rahul to zoro.

select * from employees where First_name not between "Rahul" and "zoro";
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|    9 | Arjun      | Reddy     | Male   | 1989-06-15 | Logistics        |  71000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
+------+------------+-----------+--------+------------+------------------+--------+
7 rows in set (0.001 sec)

--find all the rows whose id is even.

select * from employees where id mod 2=0;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    0 | NULL       | NULL      | NULL   | NULL       | NULL             |   NULL |
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR               |  65000 |
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT               |  73000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   10 | Meena      | Iyer      | Female | 1995-09-25 | Administration   |  58000 |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
7 rows in set (0.001 sec)

--find those persons whose name is start with "R".

select * from employees where first_name like "R%";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance    |  82000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales      |  69000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL       |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL       |   NULL |
+------+------------+-----------+--------+------------+------------+--------+
4 rows in set (0.001 sec)

--find those persons whose name ends with "a".

select * from employees where first_name like "%a";
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

--find those whose name have "h".

select * from employees where first_name like "%h%";
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    4 | Sneha      | Patel     | Female | 1994-02-18 | Marketing        |  70000 |
|    7 | Rahul      | Singh     | Male   | 1987-04-27 | Sales            |  69000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   11 | Rakesh     | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
4 rows in set (0.001 sec)

--find those who have i in name and gender is female.

select * from employees where first_name like "%i%" and gender ="female";
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    2 | Priya      | Verma     | Female | 1992-08-22 | HR         |  65000 |
|    6 | Divya      | Nair      | Female | 1991-12-12 | IT         |  73000 |
+------+------------+-----------+--------+------------+------------+--------+
2 rows in set (0.001 sec)

--find those person whose name have 4 char.

select * from employees where length(first_name)=4  ;
+------+------------+-----------+--------+------------+------------------+--------+
| id   | first_name | last_name | gender | dob        | department       | salary |
+------+------------+-----------+--------+------------+------------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT               |  75000 |
|    3 | Ravi       | Kumar     | Male   | 1985-11-05 | Finance          |  82000 |
|    5 | Anil       | Mehra     | Male   | 1988-07-30 | Operations       |  78000 |
|    8 | Neha       | Joshi     | Female | 1993-10-05 | Customer Support |  60000 |
|   12 | Raju       | NULL      | NULL   | NULL       | NULL             |   NULL |
+------+------------+-----------+--------+------------+------------------+--------+
5 rows in set (0.001 sec)

--find those wohose salary is null.

select * from employees where salary is null;
+------+------------+-----------+--------+------+------------+--------+
| id   | first_name | last_name | gender | dob  | department | salary |
+------+------------+-----------+--------+------+------------+--------+
|    0 | NULL       | NULL      | NULL   | NULL | NULL       |   NULL |
|   11 | Rakesh     | NULL      | NULL   | NULL | NULL       |   NULL |
|   12 | Raju       | NULL      | NULL   | NULL | NULL       |   NULL |
+------+------------+-----------+--------+------+------------+--------+
3 rows in set (0.001 sec)

--find those whose salary is not null.

select * from employees where salary is not null;
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
+------+------------+-----------+--------+------------+------------------+--------+
10 rows in set (0.001 sec)

--find those where year have 0 at last index.

select * from employees where right( year(dob),1)=0;
+------+------------+-----------+--------+------------+------------+--------+
| id   | first_name | last_name | gender | dob        | department | salary |
+------+------------+-----------+--------+------------+------------+--------+
|    1 | Amit       | Sharma    | Male   | 1990-03-15 | IT         |  75000 |
+------+------------+-----------+--------+------------+------------+--------+
1 row in set (0.001 sec)

--find those details where year have patteren like  1

select * from employees where dob like "%1%";
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
+------+------------+-----------+--------+------------+------------------+--------+
10 rows in set (0.001 sec)
