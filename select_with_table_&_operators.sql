--Write a query to display all records from employees table

SELECT * FROM employees;

--Write a query to display all records from dept1 table

SELECT * FROM dept1;

--Write a query to display all records from customers table

SELECT * FROM customers;

--Write a query to check 10 + 5, "hello"

SELECT 10 + 5, "hello";

SELECT 7 * 3, "test" FROM dept1;

--Write a query to delete tables data as well structure

DROP TABLE employees;

--display the SQL query used to create a orders and dept1 tables.

SHOW CREATE TABLE orders;
SHOW CREATE TABLE dept1;

--Write a query to add 10 in ids and multiply id with 2 

SELECT id + 10, id * 2 FROM dept1;

--WAQ to display   add bonus 1000 to all employees in  salary ,age,name 

SELECT salary + 1000 "bonus", age AS "Age", name AS emp_name FROM employees;

SELECT id + name, id, name FROM dept1;
SELECT MOD(age, 5), age FROM customers;
SELECT id > 10, id < 5, id = id FROM dept1;

--WAQ to display salary =5000 and 6000 departments  either  hr or it and is  from 1 2 3

SELECT salary IN (5000, 6000), department IN ("HR", "IT"), id NOT IN (1, 2, 3) FROM employees;

--WAQ to display id and add column wich comatin 5 for all rows 

SELECT id , 5 FROM dept1;

--- execute and get output

SELECT * FROM employees emp1 emp2;
=> error 

--WAQ to disaply name  
 
SELECT name FROM FROM dept1;

-- execute and check outputs

SELECT * FROM dept1 "d1";
SELECT * FROM dept1 123;
SELECT * FROM dept1 salary;
SELECT * FROM dept1 AS "123";
SELECT * FROM employees AS emp;
SELECT name, salary FROM employees AS "staff";
SELECT id + 1 AS next_id, name AS fullname FROM dept1;

--WAQ to display all records  from dept1 table

SELECT * dept1;

---WAQ display records of 2 tables in single line 
SELECT * FROM orders; SELECT * FROM customers;
SELECT * FROM dept1; SELECT * FROM dept2; SELECT * FROM dept3;
SELECT * FROM sales; SELECT * FROM purchases; SELECT * FROM returns;
SELECT * FROM employees emp;

