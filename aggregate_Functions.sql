--------------------------------------------- Questions-------------------------------------------
+----+----------------+-----------+------------+---------------+---------------+
| Id | Name           | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+----+----------------+-----------+------------+---------------+---------------+
|  1 | Arjun Patel    | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
|  2 | Priya Sharma   | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|  3 | Rohan Gupta    | Bengaluru | 2025-03-10 |          NULL | Failed        |
|  4 | Anjali Nair    | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|  5 | Vikram Singh   | Jaipur    | NULL       |       1500.25 | Pending       |
|  6 | Sneha Reddy    | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|  7 | Kiran Desai    | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|  8 | Meera Iyer     | Chennai   | 2025-07-12 |       5100.00 | Completed     |
|  9 | Rahul Verma    | Pune      | 2025-08-01 |          NULL | Pending       |
| 10 | Lakshmi Menon  | Kolkata   | 2025-09-09 |       4300.60 | Completed     |
| 11 | Suresh Yadav   | NULL      | 2025-10-14 |       3700.00 | Failed        |
| 12 | Pooja Malhotra | Lucknow   | NULL       |       2500.50 | Completed     |
| 13 | Nikhil Chopra  | Surat     | 2025-11-20 |       6900.25 | NULL          |
| 14 | Deepak Joshi   | Nagpur    | 2025-12-05 |       5200.75 | Pending       |
| 15 | Riya Kapoor    | Indore    | 2025-12-15 |          NULL | Completed     |
| 16 | Amit Mehra     | NULL      | NULL       |          NULL | NULL          |
| 17 | Shalini Rao    | Bhopal    | 2025-11-30 |       4800.00 | Completed     |
+----+----------------+-----------+------------+---------------+---------------+


--How many total customers are in the Customer table?

select count(name) from customer;
+-------------+
| count(name) |
+-------------+
|          17 |
+-------------+
1 row in set (0.000 sec)

--What is the total payment amount for all orders in the Customer table?

select sum(paymentamount) from customer;
+--------------------+
| sum(paymentamount) |
+--------------------+
|           58603.90 |
+--------------------+
1 row in set (0.001 sec)

--What is the average payment amount for all orders in the Customer table?

select avg(paymentamount) from customer;
+--------------------+
| avg(paymentamount) |
+--------------------+
|        4507.992308 |
+--------------------+
1 row in set (0.001 sec)

--What is the smallest payment amount recorded in the Customer table?

select min(paymentamount) from customer;
+--------------------+
| min(paymentamount) |
+--------------------+
|            1500.25 |
+--------------------+
1 row in set (0.001 sec)

--What is the largest payment amount recorded in the Customer table?

select max(paymentamount) from customer;
+--------------------+
| max(paymentamount) |
+--------------------+
|            7800.75 |
+--------------------+
1 row in set (0.001 sec)

--How many non-NULL city names are listed in the Customer table?

select count(cityname) from customer;
+-----------------+
| count(cityname) |
+-----------------+
|              15 |
+-----------------+
1 row in set (0.001 sec)

--What is the earliest order date in the Customer table?

select min(orderdate) from customer;
+----------------+
| min(orderdate) |
+----------------+
| 2025-01-15     |
+----------------+
1 row in set (0.001 sec)

--What is the latest order date in the Customer table?

 select max(orderdate) from customer;
+----------------+
| max(orderdate) |
+----------------+
| 2025-12-15     |
+----------------+
1 row in set (0.000 sec)

--How many non-NULL payment statuses are recorded in the Customer table?

select count(cityname) from customer;
+-----------------+
| count(cityname) |
+-----------------+
|              15 |
+-----------------+
1 row in set (0.000 sec)

--What is the total number of orders (rows) in the Customer table?

 select count(id) from customer;
+-----------+
| count(id) |
+-----------+
|        17 |
+-----------+
1 row in set (0.000 sec)

--What is the sum of all payment amounts multiplied by 1.05 in the Customer table?

select sum(paymentamount)*1.05 Total_payment_amount from customer;
+----------------------+
| Total_payment_amount |
+----------------------+
|           61534.0950 |
+----------------------+
1 row in set (0.001 sec)

--How many non-NULL order dates are present in the Customer table?

 select count(orderdate) from customer;
+------------------+
| count(orderdate) |
+------------------+
|               14 |
+------------------+
1 row in set (0.001 sec)

--What is the average of the payment amounts after adding a 500 surcharge to each in the Customer table?

select avg(paymentamount+500)AS avg_paymentamount_plus_500  from customer;
+----------------------------+
| avg_paymentamount_plus_500 |
+----------------------------+
|                5007.992308 |
+----------------------------+
1 row in set (0.001 sec)

--What is the maximum Id value in the Customer table?

select max(id) from customer;
+---------+
| max(id) |
+---------+
|      17 |
+---------+
1 row in set (0.001 sec)

--How many distinct city names (including NULL) are in the Customer table?

select distinct cityname from customer;
+-----------+
| cityname  |
+-----------+
| Mumbai    |
| Delhi     |
| Bengaluru |
| Kochi     |
| Jaipur    |
| Hyderabad |
| Ahmedabad |
| Chennai   |
| Pune      |
| Kolkata   |
| NULL      |
| Lucknow   |
| Surat     |
| Nagpur    |
| Indore    |
| Bhopal    |
+-----------+
16 rows in set (0.001 sec)

--How can you retrieve the minimum Id value alongside the Id column from the Customer table in a single query?

 select id,(select min(id) from customer)as id from customer;
+------+------+
| id   | id   |
+------+------+
|    1 |    1 |
|    2 |    1 |
|    3 |    1 |
|    4 |    1 |
|    5 |    1 |
|    6 |    1 |
|    7 |    1 |
|    8 |    1 |
|    9 |    1 |
|   10 |    1 |
|   11 |    1 |
|   12 |    1 |
|   13 |    1 |
|   14 |    1 |
|   15 |    1 |
|   16 |    1 |
|   17 |    1 |
+------+------+
17 rows in set (0.001 sec)

--Display all columns from the Customer table, repeating the OrderDate column twice.

 select *,orderdate from customer;
+------+----------------+-----------+------------+---------------+---------------+------------+
| Id   | Name           | CityName  | OrderDate  | PaymentAmount | PaymentStatus | orderdate  |
+------+----------------+-----------+------------+---------------+---------------+------------+
|    1 | Arjun Patel    | Mumbai    | 2025-01-15 |       4500.50 | Completed     | 2025-01-15 |
|    2 | Priya Sharma   | Delhi     | 2025-02-03 |       3200.00 | Pending       | 2025-02-03 |
|    3 | Rohan Gupta    | Bengaluru | 2025-03-10 |          NULL | Failed        | 2025-03-10 |
|    4 | Anjali Nair    | Kochi     | 2025-04-22 |       7800.75 | Completed     | 2025-04-22 |
|    5 | Vikram Singh   | Jaipur    | NULL       |       1500.25 | Pending       | NULL       |
|    6 | Sneha Reddy    | Hyderabad | 2025-05-18 |       6200.00 | Completed     | 2025-05-18 |
|    7 | Kiran Desai    | Ahmedabad | 2025-06-07 |       2900.30 | NULL          | 2025-06-07 |
|    8 | Meera Iyer     | Chennai   | 2025-07-12 |       5100.00 | Completed     | 2025-07-12 |
|    9 | Rahul Verma    | Pune      | 2025-08-01 |          NULL | Pending       | 2025-08-01 |
|   10 | Lakshmi Menon  | Kolkata   | 2025-09-09 |       4300.60 | Completed     | 2025-09-09 |
|   11 | Suresh Yadav   | NULL      | 2025-10-14 |       3700.00 | Failed        | 2025-10-14 |
|   12 | Pooja Malhotra | Lucknow   | NULL       |       2500.50 | Completed     | NULL       |
|   13 | Nikhil Chopra  | Surat     | 2025-11-20 |       6900.25 | NULL          | 2025-11-20 |
|   14 | Deepak Joshi   | Nagpur    | 2025-12-05 |       5200.75 | Pending       | 2025-12-05 |
|   15 | Riya Kapoor    | Indore    | 2025-12-15 |          NULL | Completed     | 2025-12-15 |
|   16 | Amit Mehra     | NULL      | NULL       |          NULL | NULL          | NULL       |
|   17 | Shalini Rao    | Bhopal    | 2025-11-30 |       4800.00 | Completed     | 2025-11-30 |
+------+----------------+-----------+------------+---------------+---------------+------------+
17 rows in set (0.001 sec)

--Show all columns from the Customer table along with the maximum PaymentAmount.

select *,(select max(paymentamount)FROM customer) from customer;

--Retrieve the minimum PaymentAmount, maximum PaymentAmount, and the difference between the maximum and minimum PaymentAmount as amount_difference from the Customer table.

select min(paymentamount),max(paymentamount),(max(paymentamount)-min(paymentamount)) as amount_difference from customer;
+--------------------+--------------------+-------------------+
| min(paymentamount) | max(paymentamount) | amount_difference |
+--------------------+--------------------+-------------------+
|            1500.25 |            7800.75 |           6300.50 |
+--------------------+--------------------+-------------------+
1 row in set (0.001 sec)

--How many total rows are in the Customer table?

select count(id) from customer;
+-----------+
| count(id) |
+-----------+
|        17 |
+-----------+
1 row in set (0.001 sec)

--Count the number of non-NULL Id values in the Customer table.

select count(id) from customer;
+-----------+
| count(id) |
+-----------+
|        17 |
+-----------+
1 row in set (0.001 sec)

--Count the number of rows where the expression Id * 2 is non-NULL in the Customer table.

select count(id*2) from customer 
+---------------+
| COUNT(Id * 2) |
+---------------+
|            17 |
+---------------+
1 row in set (0.001 sec)

--List all columns from the Customer table for customers whose PaymentAmount is less than the average PaymentAmount of all customers.

select * from customer where paymentamount<(Select avg(paymentamount) from customer);
+------+----------------+-----------+------------+---------------+---------------+
| Id   | Name           | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+----------------+-----------+------------+---------------+---------------+
|    1 | Arjun Patel    | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
|    2 | Priya Sharma   | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|    5 | Vikram Singh   | Jaipur    | NULL       |       1500.25 | Pending       |
|    7 | Kiran Desai    | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|   10 | Lakshmi Menon  | Kolkata   | 2025-09-09 |       4300.60 | Completed     |
|   11 | Suresh Yadav   | NULL      | 2025-10-14 |       3700.00 | Failed        |
|   12 | Pooja Malhotra | Lucknow   | NULL       |       2500.50 | Completed     |
+------+----------------+-----------+------------+---------------+---------------+
7 rows in set (0.001 sec)

--Display the minimum OrderDate and the Name column from the Customer table.

select name,min(orderdate) from customer;
+-------------+----------------+
| name        | min(orderdate) |
+-------------+----------------+
| Arjun Patel | 2025-01-15     |
+-------------+----------------+
1 row in set (0.001 sec)

--Show all columns from the Customer table along with the total count of non-NULL CityName values.

 select count(cityname) from customer;
+-----------------+
| count(cityname) |
+-----------------+
|              15 |
+-----------------+
1 row in set (0.001 sec)

--Retrieve the sum of PaymentAmount, the average PaymentAmount, and the sum divided by the average as ratio from the Customer table.

select sum(paymentamount),avg(paymentamount),(sum(paymentamount)/avg(paymentamount)) ration from customer;
+--------------------+--------------------+-----------+
| sum(paymentamount) | avg(paymentamount) | ration    |
+--------------------+--------------------+-----------+
|           58603.90 |        4507.992308 | 13.000000 |
+--------------------+--------------------+-----------+
1 row in set (0.001 sec)

--Count the number of non-NULL PaymentStatus values in the Customer table.

select count(paymentstatus) from customer;
+----------------------+
| count(paymentstatus) |
+----------------------+
|                   14 |
+----------------------+
1 row in set (0.000 sec)

--Display all columns from the Customer table for customers whose OrderDate is earlier than the latest OrderDate in the table.

 select * from customer where orderdate< (select max(orderdate) from customer);
+------+---------------+-----------+------------+---------------+---------------+
| Id   | Name          | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+---------------+-----------+------------+---------------+---------------+
|    1 | Arjun Patel   | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
|    2 | Priya Sharma  | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|    3 | Rohan Gupta   | Bengaluru | 2025-03-10 |          NULL | Failed        |
|    4 | Anjali Nair   | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    6 | Sneha Reddy   | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    7 | Kiran Desai   | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|    8 | Meera Iyer    | Chennai   | 2025-07-12 |       5100.00 | Completed     |
|    9 | Rahul Verma   | Pune      | 2025-08-01 |          NULL | Pending       |
|   10 | Lakshmi Menon | Kolkata   | 2025-09-09 |       4300.60 | Completed     |
|   11 | Suresh Yadav  | NULL      | 2025-10-14 |       3700.00 | Failed        |
|   13 | Nikhil Chopra | Surat     | 2025-11-20 |       6900.25 | NULL          |
|   14 | Deepak Joshi  | Nagpur    | 2025-12-05 |       5200.75 | Pending       |
|   17 | Shalini Rao   | Bhopal    | 2025-11-30 |       4800.00 | Completed     |
+------+---------------+-----------+------------+---------------+---------------+
13 rows in set (0.001 sec)

--Show the maximum Id value and the CityName column from the Customer table.

select id ,cityname from customer where id =(select max(id) from customer);
+------+----------+
| id   | cityname |
+------+----------+
|   17 | Bhopal   |
+------+----------+
1 row in set (0.002 sec)

--Retrieve the count of rows where PaymentAmount + 1000 is non-NULL in the Customer table.

select count(paymentamount+1000) from customer;
+---------------------------+
| count(paymentamount+1000) |
+---------------------------+
|                        13 |
+---------------------------+
1 row in set (0.001 sec)

--What is the total PaymentAmount for customers whose Name contains the letter 'a' and PaymentStatus is 'Completed'?

 select  * from customer where name like "%a%" and paymentstatus ="Completed";
+------+----------------+-----------+------------+---------------+---------------+
| Id   | Name           | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+----------------+-----------+------------+---------------+---------------+
|    1 | Arjun Patel    | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
|    4 | Anjali Nair    | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    6 | Sneha Reddy    | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    8 | Meera Iyer     | Chennai   | 2025-07-12 |       5100.00 | Completed     |
|   10 | Lakshmi Menon  | Kolkata   | 2025-09-09 |       4300.60 | Completed     |
|   12 | Pooja Malhotra | Lucknow   | NULL       |       2500.50 | Completed     |
|   15 | Riya Kapoor    | Indore    | 2025-12-15 |          NULL | Completed     |
|   17 | Shalini Rao    | Bhopal    | 2025-11-30 |       4800.00 | Completed     |
+------+----------------+-----------+------------+---------------+---------------+
8 rows in set (0.001 sec)

--How many customers are from cities 'Mumbai', 'Delhi', or 'Bengaluru' with a PaymentAmount greater than 4000?

select count(*) from customer where cityname in ("Mumbai","Delhi","Bengaluru") and paymentamount > 4000;
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.001 sec)

--What is the average PaymentAmount for orders placed between January 1, 2025, and June 30, 2025?

select avg(paymentamount) from customer where orderdate between "2025-01-01" and "2025-06-30";
+--------------------+
| avg(paymentamount) |
+--------------------+
|        4920.310000 |
+--------------------+
1 row in set (0.011 sec)

--Find the minimum OrderDate for customers whose CityName is not 'Hyderabad' and PaymentAmount is not NULL.

select min(orderdate) from customer where cityname <>"Hyderabad" and paymentamount is not null;
+----------------+
| min(orderdate) |
+----------------+
| 2025-01-15     |
+----------------+
1 row in set (0.001 sec)

--What is the maximum PaymentAmount for customers whose PaymentStatus is either 'Pending' or 'Failed'?

 select max(paymentamount) from customer where paymentstatus in ("Pending","Failed");
+--------------------+
| max(paymentamount) |
+--------------------+
|            5200.75 |
+--------------------+
1 row in set (0.001 sec)

--Count the number of customers whose Name ends with 'i' and OrderDate is after July 1, 2025.

select count(*) from customer where name like "%i" and orderdate > "2025-07-01";
+----------+
| count(*) |
+----------+
|        1 |
+----------+
1 row in set (0.001 sec)

--What is the sum of PaymentAmount for customers from cities starting with 'B' or 'K' where Id is less than 10?

  select sum(paymentamount) from customer where (cityname like "B%"or cityname like "K%") and id<10;
+--------------------+
| sum(paymentamount) |
+--------------------+
|            7800.75 |
+--------------------+
1 row in set (0.001 sec)

--How many orders have a PaymentAmount between 3000 and 6000 and a PaymentStatus of 'Completed'?

select count(*) from customer where paymentamount between 3000 and 6000 and paymentstatus="Completed";
+----------+
| count(*) |
+----------+
|        4 |
+----------+
1 row in set (0.001 sec)

--Find the average Id for customers whose CityName is in ('Chennai', 'Pune', 'Kolkata') and OrderDate is not NULL.

 select avg(id) from customer where cityname in ('Chennai', 'Pune', 'Kolkata') and OrderDate is not NULL;
+---------+
| avg(id) |
+---------+
|  9.0000 |
+---------+
1 row in set (0.001 sec)

--What is the minimum PaymentAmount for customers whose Name contains 'sh' or PaymentStatus is not 'Pending'?

select min(paymentamount) from customer where name like "%sh%" or paymentstatus <> "Pending";
+--------------------+
| min(paymentamount) |
+--------------------+
|            2500.50 |
+--------------------+
1 row in set (0.001 sec)

--Count the number of non-NULL CityName values for customers with PaymentAmount greater than or equal to 5000 or OrderDate before March 1, 2025.

select count(cityname) from customer where paymentamount >=5000 or orderdate <"2025-3-1";
+-----------------+
| count(cityname) |
+-----------------+
|               7 |
+-----------------+
1 row in set (0.001 sec)

--What is the maximum Id for customers whose PaymentStatus is not 'Failed' and PaymentAmount is less than 7000?

select max(id) from customer where paymentstatus <> "Failed" and paymentamount <7000;
+---------+
| max(id) |
+---------+
|      17 |
+---------+
1 row in set (0.001 sec)

--Calculate the total PaymentAmount multiplied by 1.1 for customers whose CityName is not NULL and OrderDate is in 2025.

select sum(paymentamount *1.1) from customer where cityname is not null and year(orderdate)=2025;
+-------------------------+
| sum(paymentamount *1.1) |
+-------------------------+
|               55993.465 |
+-------------------------+

--How many customers have a PaymentAmount greater than the average PaymentAmount of all customers?

 select count(*) from customer where paymentamount>(select avg(paymentamount) from customer);
+----------+
| count(*) |
+----------+
|        6 |
+----------+
1 row in set (0.001 sec)

--Find the average PaymentAmount for customers whose Name starts with 'R' and PaymentStatus is not 'Completed' or CityName is 'Lucknow'.

select avg(paymentamount) from customer where name like "R%" and paymentstatus <> "Completed" or cityname ="Lucknow";
+--------------------+
| avg(paymentamount) |
+--------------------+
|        2500.500000 |
+--------------------+
1 row in set (0.001 sec)
