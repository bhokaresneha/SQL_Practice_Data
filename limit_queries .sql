+----+---------------+-----------+------------+---------------+---------------+
| Id | Name          | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+----+---------------+-----------+------------+---------------+---------------+
| 1  | Arjun Patel   | Mumbai    | 2025-01-15 | 4500.50       | Completed     |
| 2  | Priya Sharma  | Delhi     | 2025-02-03 | 3200.00       | Pending       |
| 3  | Rohan Gupta   | Bengaluru | 2025-03-10 | NULL          | Failed        |
| 4  | Anjali Nair   | Kochi     | 2025-04-22 | 7800.75       | Completed     |
| 5  | Vikram Singh  | Jaipur    | NULL       | 1500.25       | Pending       |
| 6  | Sneha Reddy   | Hyderabad | 2025-05-18 | 6200.00       | Completed     |
| 7  | Kiran Desai   | Ahmedabad | 2025-06-07 | 2900.30       | NULL          |
| 8  | Meera Iyer    | Chennai   | 2025-07-12 | 5100.00       | Completed     |
| 9  | Rahul Verma   | Pune      | 2025-08-01 | NULL          | Pending       |
| 10 | Lakshmi Menon | Kolkata   | 2025-09-09 | 4300.60       | Completed     |
| 11 | Suresh Yadav  | NULL      | 2025-10-14 | 3700.00       | Failed        |
| 12 | Pooja Malhotra| Lucknow   | NULL       | 2500.50       | Completed     |
| 13 | Nikhil Chopra | Surat     | 2025-11-20 | 6900.25       | NULL          |
| 14 | Deepak Joshi  | Nagpur    | 2025-12-05 | 5200.75       | Pending       |
| 15 | Riya Kapoor   | Indore    | 2025-12-15 | NULL          | Completed     |
| 16 | Amit Mehra    | NULL      | NULL       | NULL          | NULL          |
| 17 | Shalini Rao   | Bhopal    | 2025-11-30 | 4800.00       | Completed     |
+----+---------------+-----------+------------+---------------+---------------+


INSERT INTO Orders_del values
   (1,'Arjun Patel','Mumbai','2025-01-15',4500.50,'Completed'),
     (2,'Priya Sharma','Delhi','2025-02-03',3200.00,'Pending'),
     (3,'Rohan Gupta','Bengaluru','2025-03-10',NULL,'Failed'),
     (4,'Anjali Nair','Kochi','2025-04-22',7800.75,'Completed'),
     (5,'Vikram Singh','Jaipur',NULL,1500.25,'Pending'),
     (6,'Sneha Reddy','Hyderabad','2025-05-18',6200.00,'Completed'),
     (7,'Kiran Desai','Ahmedabad','2025-06-07',2900.30,NULL),
     (8,'Meera Iyer','Chennai','2025-07-12',5100.00,'Completed'),
     (9,'Rahul Verma','Pune','2025-08-01',NULL,'Pending'),
     (10,'Lakshmi Menon','Kolkata','2025-09-09',4300.60,'Completed'),
     (11,'Suresh Yadav',NULL,'2025-10-14',3700.00,'Failed'),
     (12,'Pooja Malhotra','Lucknow',NULL,2500.50,'Completed'),
     (13,'Nikhil Chopra','Surat','2025-11-20',6900.25,NULL),
     (14,'Deepak Joshi','Nagpur','2025-12-05',5200.75,'Pending'),
     (15,'Riya Kapoor','Indore','2025-12-15',NULL,'Completed'),
     (16,'Amit Mehra',NULL,NULL,NULL,NULL),
     (17,'Shalini Rao','Bhopal','2025-11-30',4800.00,'Completed');

CREATE TABLE Orders_del
         Id INT,
         Name VARCHAR(50),
         CityName VARCHAR(50),
         OrderDate DATE,
         PaymentAmount DECIMAL(10,2),
         PaymentStatus VARCHAR(20)

Section 1 ------------------------------------------------------------------------------------------------------------------------------------------------------

--1.  Retrieve the first 5 rows of all columns from the Customer table.
 select * from orders limit 5;
+------+--------------+-----------+------------+---------------+---------------+
| Id   | Name         | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+--------------+-----------+------------+---------------+---------------+
|    1 | Arjun Patel  | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
|    2 | Priya Sharma | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|    3 | Rohan Gupta  | Bengaluru | 2025-03-10 |          NULL | Failed        |
|    4 | Anjali Nair  | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    5 | Vikram Singh | Jaipur    | NULL       |       1500.25 | Pending       |
+------+--------------+-----------+------------+---------------+---------------+
5 rows in set (0.000 sec)

--2.  Show only the Id and Name columns for the first 3 rows in the Customer table.
MariaDB [class_demo]> select  id,name from orders limit 3;
+------+--------------+
| id   | name         |
+------+--------------+
|    1 | Arjun Patel  |
|    2 | Priya Sharma |
|    3 | Rohan Gupta  |
+------+--------------+
3 rows in set (0.000 sec)

--3.  Display the first 10 rows of the CityName, OrderDate, and PaymentAmount columns from the Customer table.

MariaDB [class_demo]> select cityname ,orderdate,paymentamount from orders limit 10;
+-----------+------------+---------------+
| cityname  | orderdate  | paymentamount |
+-----------+------------+---------------+
| Mumbai    | 2025-01-15 |       4500.50 |
| Delhi     | 2025-02-03 |       3200.00 |
| Bengaluru | 2025-03-10 |          NULL |
| Kochi     | 2025-04-22 |       7800.75 |
| Jaipur    | NULL       |       1500.25 |
| Hyderabad | 2025-05-18 |       6200.00 |
| Ahmedabad | 2025-06-07 |       2900.30 |
| Chennai   | 2025-07-12 |       5100.00 |
| Pune      | 2025-08-01 |          NULL |
| Kolkata   | 2025-09-09 |       4300.60 |
+-----------+------------+---------------+
10 rows in set (0.000 sec)

--4.  Get the first 2 rows of the Name and PaymentStatus columns from the Customer table.

MariaDB [class_demo]> select name ,paymentstatus from orders limit 2;
+--------------+---------------+
| name         | paymentstatus |
+--------------+---------------+
| Arjun Patel  | Completed     |
| Priya Sharma | Pending       |
+--------------+---------------+
2 rows in set (0.000 sec)

Section 2 ------------------------------------------------------------------------------------------------------------------------------------------------------

--1.  Display the OrderDate and PaymentStatus columns for 4 rows in the Customer table, starting from the 6th row.
MariaDB [class_demo]> select orderdate,paymentstatus from orders limit 4 offset 5;
+------------+---------------+
| orderdate  | paymentstatus |
+------------+---------------+
| 2025-05-18 | Completed     |
| 2025-06-07 | NULL          |
| 2025-07-12 | Completed     |
| 2025-08-01 | Pending       |
+------------+---------------+
4 rows in set (0.000 sec)

--2.  Get 7 rows of the Id, CityName, and PaymentAmount columns from the Customer table, skipping the first 3 rows.

MariaDB [class_demo]> select id ,cityname,paymentstatus from orders limit 7 offset 3;
+------+-----------+---------------+
| id   | cityname  | paymentstatus |
+------+-----------+---------------+
|    4 | Kochi     | Completed     |
|    5 | Jaipur    | Pending       |
|    6 | Hyderabad | Completed     |
|    7 | Ahmedabad | NULL          |
|    8 | Chennai   | Completed     |
|    9 | Pune      | Pending       |
|   10 | Kolkata   | Completed     |
+------+-----------+---------------+
7 rows in set (0.000 sec)

--3.  Retrieve the Name, CityName, and OrderDate columns for 3 rows in the Customer table, starting after the 7th row.

MariaDB [class_demo]> select name orderdate from orders limit 7,3;
+---------------+
| orderdate     |
+---------------+
| Meera Iyer    |
| Rahul Verma   |
| Lakshmi Menon |
+---------------+
3 rows in set (0.001 sec)

--4.  Retrieve 5 rows of all columns from the Customer table, starting from the 3rd row.

MariaDB [class_demo]> select * from orders limit 3,5;
+------+--------------+-----------+------------+---------------+---------------+
| Id   | Name         | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+--------------+-----------+------------+---------------+---------------+
|    4 | Anjali Nair  | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    5 | Vikram Singh | Jaipur    | NULL       |       1500.25 | Pending       |
|    6 | Sneha Reddy  | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    7 | Kiran Desai  | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|    8 | Meera Iyer   | Chennai   | 2025-07-12 |       5100.00 | Completed     |
+------+--------------+-----------+------------+---------------+---------------+
5 rows in set (0.001 sec)

--5.  Show the Id and Name columns for 4 rows in the Customer table, skipping the first 2 rows.
MariaDB [class_demo]> select id ,name from orders limit 2,4;
+------+--------------+
| id   | name         |
+------+--------------+
|    3 | Rohan Gupta  |
|    4 | Anjali Nair  |
|    5 | Vikram Singh |
|    6 | Sneha Reddy  |
+------+--------------+
4 rows in set (0.001 sec)


--6.  Display 3 rows of the CityName, OrderDate, and PaymentAmount columns from the Customer table, starting after the 5th row.

MariaDB [class_demo]> select cityname,orderdate,paymentamount from orders limit 5,3;
+-----------+------------+---------------+
| cityname  | orderdate  | paymentamount |
+-----------+------------+---------------+
| Hyderabad | 2025-05-18 |       6200.00 |
| Ahmedabad | 2025-06-07 |       2900.30 |
| Chennai   | 2025-07-12 |       5100.00 |
+-----------+------------+---------------+
3 rows in set (0.001 sec)


Section 3 ------------------------------------------------------------------------------------------------------------------------------------------------------

--1.  Retrieve all columns for 3 customers whose Name contains 'a' and PaymentStatus is 'Completed', starting from the 2nd matching row.

 select * from orders where name like "%a%" and paymentstatus="completed" limit 1,3;
+------+-------------+-----------+------------+---------------+---------------+
| Id   | Name        | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+-------------+-----------+------------+---------------+---------------+
|    4 | Anjali Nair | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    6 | Sneha Reddy | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    8 | Meera Iyer  | Chennai   | 2025-07-12 |       5100.00 | Completed     |
+------+-------------+-----------+------------+---------------+---------------+

--2.  Show the Id and Name for 4 customers from 'Mumbai', 'Delhi', or 'Bengaluru' with PaymentAmount greater than 4000, skipping the first matching row.

 SELECT Id, Name
     FROM Orders
     WHERE CityName IN ('Mumbai','Delhi','Bengaluru')
     AND PaymentAmount > 4000
     LIMIT 4 OFFSET 1;

--3.  Display the CityName, OrderDate, and PaymentAmount for 2 customers whose OrderDate is between July 1, 2025, and December 31, 2025, starting after the 3rd matching row.

MariaDB [class_demo]> select cityname,orderdate,paymentamount from orders where orderdate between "2025-7-1" and "2025-12-31" limit 2,2;
+----------+------------+---------------+
| cityname | orderdate  | paymentamount |
+----------+------------+---------------+
| Kolkata  | 2025-09-09 |       4300.60 |
| NULL     | 2025-10-14 |       3700.00 |
+----------+------------+---------------+
2 rows in set (0.013 sec)

--4.  Get the Name and PaymentStatus for 5 customers whose CityName is not 'Hyderabad' and PaymentAmount is not NULL, skipping the first 2 matching rows.

MariaDB [class_demo]> select name ,paymentstatus from orders where cityname<> "Hyderabad" limit 2,5;
+--------------+---------------+
| name         | paymentstatus |
+--------------+---------------+
| Rohan Gupta  | Failed        |
| Anjali Nair  | Completed     |
| Vikram Singh | Pending       |
| Kiran Desai  | NULL          |
| Meera Iyer   | Completed     |
+--------------+---------------+
5 rows in set (0.001 sec)

--5.  List all columns for 3 customers with PaymentStatus in ('Pending', 'Failed') and Id less than 10, starting from the 1st matching row.

MariaDB [class_demo]> select * from orders where paymentstatus in ("pending","failed") and id <10 ;
+------+--------------+-----------+------------+---------------+---------------+
| Id   | Name         | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+--------------+-----------+------------+---------------+---------------+
|    2 | Priya Sharma | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|    3 | Rohan Gupta  | Bengaluru | 2025-03-10 |          NULL | Failed        |
|    5 | Vikram Singh | Jaipur    | NULL       |       1500.25 | Pending       |
|    9 | Rahul Verma  | Pune      | 2025-08-01 |          NULL | Pending       |
+------+--------------+-----------+------------+---------------+---------------+
4 rows in set (0.001 sec)

--6.  Retrieve the Id, Name, and PaymentAmount for 2 customers whose Name ends with 'i' or CityName starts with 'B', skipping the first 4 matching rows.

MariaDB [class_demo]> select id,name,paymentamount from orders where name like "%i" or cityname like "B%" limit 4,2;
Empty set (0.001 sec)

--7.  Show the OrderDate and PaymentStatus for 4 customers whose PaymentAmount is between 2000 and 5000 and PaymentStatus is not 'Failed', starting after the 1st matching row.
MariaDB [class_demo]> select orderdate,paymentstatus from orders where paymentamount between 2000 and 5000 and paymentstatus <> "failed" ;
+------------+---------------+
| orderdate  | paymentstatus |
+------------+---------------+
| 2025-01-15 | Completed     |
| 2025-02-03 | Pending       |
| 2025-09-09 | Completed     |
| NULL       | Completed     |
| 2025-11-30 | Completed     |
+------------+---------------+
5 rows in set (0.001 sec)


--8.  Display the Id, CityName, and PaymentAmount for 3 customers whose Name contains 'sh' and OrderDate is after September 1, 2025, skipping the first 2 matching rows.

MariaDB [class_demo]> select id,cityname,paymentamount from orders where name like "%sh%" and orderdate>"2025-9-1" limit 2,3;
+------+----------+---------------+
| id   | cityname | paymentamount |
+------+----------+---------------+
|   14 | Nagpur   |       5200.75 |
|   17 | Bhopal   |       4800.00 |
+------+----------+---------------+
2 rows in set (0.001 sec)

--9.  Get the Name, CityName, and OrderDate for 5 customers whose PaymentAmount is greater than or equal to 3000 or PaymentStatus is 'Completed', starting from the 3rd matching row.

MariaDB [class_demo]> select name,cityname,orderdate,paymentamount from orders where paymentamount>=3000 or paymentstatus ="completed" limit 3,5;
+----------------+-----------+------------+---------------+
| name           | cityname  | orderdate  | paymentamount |
+----------------+-----------+------------+---------------+
| Sneha Reddy    | Hyderabad | 2025-05-18 |       6200.00 |
| Meera Iyer     | Chennai   | 2025-07-12 |       5100.00 |
| Lakshmi Menon  | Kolkata   | 2025-09-09 |       4300.60 |
| Suresh Yadav   | NULL      | 2025-10-14 |       3700.00 |
| Pooja Malhotra | Lucknow   | NULL       |       2500.50 |
+----------------+-----------+------------+---------------+
5 rows in set (0.001 sec)


--10.  Retrieve all columns for 2 customers whose CityName is not NULL and Id is not equal to 5, skipping the first 5 matching rows.

MariaDB [class_demo]> select * from orders where cityname <> "NULL" and id <> 5 limit 5,2;
+------+-------------+-----------+------------+---------------+---------------+
| Id   | Name        | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+-------------+-----------+------------+---------------+---------------+
|    7 | Kiran Desai | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|    8 | Meera Iyer  | Chennai   | 2025-07-12 |       5100.00 | Completed     |
+------+-------------+-----------+------------+---------------+---------------+
2 rows in set (0.001 sec)

--11.  Show the Id and PaymentAmount for 3 customers whose Name starts with 'R' and PaymentStatus is not 'Pending', starting after the 1st matching row.

MariaDB [class_demo]> select id,paymentamount from orders where name like "R%" and paymentstatus <> "pending" limit 3;
+------+---------------+
| id   | paymentamount |
+------+---------------+
|    3 |          NULL |
|   15 |          NULL |
+------+---------------+
2 rows in set (0.001 sec)

--12.  Display the Name and OrderDate for 4 customers whose CityName in ('Chennai', 'Pune', 'Kolkata') and PaymentAmount is less than 6000, skipping the first 2 matching rows.


MariaDB [class_demo]> select name ,orderdate from orders where cityname in ("chennai","pune","kolkata") and paymentamount <6000 limit 2,4;
Empty set (0.001 sec)


--13.  Get all columns for 1 customer whose PaymentAmount is greater than 5000 and OrderDate is before November 1, 2025, starting from the 3rd matching row.

MariaDB [class_demo]> select * from orders where paymentamount>5000 and orderdate <"2025-11-1" limit 2,1;
+------+------------+----------+------------+---------------+---------------+
| Id   | Name       | CityName | OrderDate  | PaymentAmount | PaymentStatus |
+------+------------+----------+------------+---------------+---------------+
|    8 | Meera Iyer | Chennai  | 2025-07-12 |       5100.00 | Completed     |
+------+------------+----------+------------+---------------+---------------+
1 row in set (0.001 sec)

--14.  Retrieve the Id, Name, and CityName for 2 customers whose PaymentStatus is not NULL or PaymentAmount is between 4000 and 7000, skipping the first 4 matching rows.

MariaDB [class_demo]> select id,name,cityname from orders where paymentstatus is not null or paymentamount  between 4000 and 7000 limit 4,20;
+------+----------------+-----------+
| id   | name           | cityname  |
+------+----------------+-----------+
|    5 | Vikram Singh   | Jaipur    |
|    6 | Sneha Reddy    | Hyderabad |
|    8 | Meera Iyer     | Chennai   |
|    9 | Rahul Verma    | Pune      |
|   10 | Lakshmi Menon  | Kolkata   |
|   11 | Suresh Yadav   | NULL      |
|   12 | Pooja Malhotra | Lucknow   |
|   13 | Nikhil Chopra  | Surat     |
|   14 | Deepak Joshi   | Nagpur    |
|   15 | Riya Kapoor    | Indore    |
|   17 | Shalini Rao    | Bhopal    |
+------+----------------+-----------+
11 rows in set (0.001 sec)

--15.  Show the CityName, OrderDate, and PaymentStatus for 3 customers whose Name ends with 'a' or Id is greater than 8, starting after the 2nd matching row.

MariaDB [class_demo]> select cityname ,orderdate ,paymentstatus from orders where name like "%a" or id >8 limit 1,3;
+-----------+------------+---------------+
| cityname  | orderdate  | paymentstatus |
+-----------+------------+---------------+
| Bengaluru | 2025-03-10 | Failed        |
| Pune      | 2025-08-01 | Pending       |
| Kolkata   | 2025-09-09 | Completed     |
+-----------+------------+---------------+
3 rows in set (0.001 sec)

Section 4 ------------------------------------------------------------------------------------------------------------------------------------------------------

--1.  Write a query to fetch 5 customers ordered by OrderDate in ascending order, starting from the 3rd record.
 select * from orders order by orderdate asc limit 3,5;
+------+--------------+-----------+------------+---------------+---------------+
| Id   | Name         | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+--------------+-----------+------------+---------------+---------------+
|    1 | Arjun Patel  | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
|    2 | Priya Sharma | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|    3 | Rohan Gupta  | Bengaluru | 2025-03-10 |          NULL | Failed        |
|    4 | Anjali Nair  | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    6 | Sneha Reddy  | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
+------+--------------+-----------+------------+---------------+---------------+
5 rows in set (0.000 sec)

--2.  Write a query to retrieve 4 customers ordered by PaymentAmount in descending order, skipping the first 2 highest payments.

MariaDB [class_demo]> select * from orders order by paymentamount desc limit 2;
+------+---------------+----------+------------+---------------+---------------+
| Id   | Name          | CityName | OrderDate  | PaymentAmount | PaymentStatus |
+------+---------------+----------+------------+---------------+---------------+
|    4 | Anjali Nair   | Kochi    | 2025-04-22 |       7800.75 | Completed     |
|   13 | Nikhil Chopra | Surat    | 2025-11-20 |       6900.25 | NULL          |
+------+---------------+----------+------------+---------------+---------------+
2 rows in set (0.000 sec)

--3.  Write a query to get 6 customers ordered by Name alphabetically, starting from the 5th record.

MariaDB [class_demo]> select * from orders order by name limit 4,6;
+------+----------------+-----------+------------+---------------+---------------+
| Id   | Name           | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+----------------+-----------+------------+---------------+---------------+
|    7 | Kiran Desai    | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|   10 | Lakshmi Menon  | Kolkata   | 2025-09-09 |       4300.60 | Completed     |
|    8 | Meera Iyer     | Chennai   | 2025-07-12 |       5100.00 | Completed     |
|   13 | Nikhil Chopra  | Surat     | 2025-11-20 |       6900.25 | NULL          |
|   12 | Pooja Malhotra | Lucknow   | NULL       |       2500.50 | Completed     |
|    2 | Priya Sharma   | Delhi     | 2025-02-03 |       3200.00 | Pending       |
+------+----------------+-----------+------------+---------------+---------------+
6 rows in set (0.001 sec)

--4.  Write a query to fetch 3 customers ordered by CityName ascending and then by PaymentStatus descending, starting from the 4th record

MariaDB [class_demo]> select * from orders order by cityname asc, paymentstatus desc limit 3,3;
+------+-------------+-----------+------------+---------------+---------------+
| Id   | Name        | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+-------------+-----------+------------+---------------+---------------+
|    3 | Rohan Gupta | Bengaluru | 2025-03-10 |          NULL | Failed        |
|   17 | Shalini Rao | Bhopal    | 2025-11-30 |       4800.00 | Completed     |
|    8 | Meera Iyer  | Chennai   | 2025-07-12 |       5100.00 | Completed     |
+------+-------------+-----------+------------+---------------+---------------+
3 rows in set (0.012 sec)

--5.  Write a query to retrieve 7 customers ordered by PaymentStatus ascending, skipping the first 5 records.

MariaDB [class_demo]> select * from orders order by paymentstatus asc limit 5,7;
+------+---------------+-----------+------------+---------------+---------------+
| Id   | Name          | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+---------------+-----------+------------+---------------+---------------+
|   10 | Lakshmi Menon | Kolkata   | 2025-09-09 |       4300.60 | Completed     |
|   17 | Shalini Rao   | Bhopal    | 2025-11-30 |       4800.00 | Completed     |
|    8 | Meera Iyer    | Chennai   | 2025-07-12 |       5100.00 | Completed     |
|   15 | Riya Kapoor   | Indore    | 2025-12-15 |          NULL | Completed     |
|    6 | Sneha Reddy   | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    1 | Arjun Patel   | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
|   11 | Suresh Yadav  | NULL      | 2025-10-14 |       3700.00 | Failed        |
+------+---------------+-----------+------------+---------------+---------------+
7 rows in set (0.001 sec)


--6.  Write a query to fetch 10 customers ordered by Id descending, starting from the 11th record.

MariaDB [class_demo]> select * from orders order by id desc limit 10,20;
+------+--------------+-----------+------------+---------------+---------------+
| Id   | Name         | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+--------------+-----------+------------+---------------+---------------+
|    7 | Kiran Desai  | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|    6 | Sneha Reddy  | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    5 | Vikram Singh | Jaipur    | NULL       |       1500.25 | Pending       |
|    4 | Anjali Nair  | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    3 | Rohan Gupta  | Bengaluru | 2025-03-10 |          NULL | Failed        |
|    2 | Priya Sharma | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|    1 | Arjun Patel  | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
+------+--------------+-----------+------------+---------------+---------------+
7 rows in set (0.014 sec)

--7.  Write a query to get 8 customers ordered by PaymentAmount ascending, skipping the first 3 records.

MariaDB [class_demo]> select * from orders order by paymentamount asc limit 3,8;
+------+----------------+-----------+------------+---------------+---------------+
| Id   | Name           | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+----------------+-----------+------------+---------------+---------------+
|   15 | Riya Kapoor    | Indore    | 2025-12-15 |          NULL | Completed     |
|    5 | Vikram Singh   | Jaipur    | NULL       |       1500.25 | Pending       |
|   12 | Pooja Malhotra | Lucknow   | NULL       |       2500.50 | Completed     |
|    7 | Kiran Desai    | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|    2 | Priya Sharma   | Delhi     | 2025-02-03 |       3200.00 | Pending       |
|   11 | Suresh Yadav   | NULL      | 2025-10-14 |       3700.00 | Failed        |
|   10 | Lakshmi Menon  | Kolkata   | 2025-09-09 |       4300.60 | Completed     |
|    1 | Arjun Patel    | Mumbai    | 2025-01-15 |       4500.50 | Completed     |
+------+----------------+-----------+------------+---------------+---------------+
8 rows in set (0.001 sec)

--8.  Write a query to fetch 5 customers ordered by OrderDate descending, starting from the 6th record.

MariaDB [class_demo]> select * from orders order by orderdate desc limit 6,5;
+------+-------------+-----------+------------+---------------+---------------+
| Id   | Name        | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+-------------+-----------+------------+---------------+---------------+
|    9 | Rahul Verma | Pune      | 2025-08-01 |          NULL | Pending       |
|    8 | Meera Iyer  | Chennai   | 2025-07-12 |       5100.00 | Completed     |
|    7 | Kiran Desai | Ahmedabad | 2025-06-07 |       2900.30 | NULL          |
|    6 | Sneha Reddy | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    4 | Anjali Nair | Kochi     | 2025-04-22 |       7800.75 | Completed     |
+------+-------------+-----------+------------+---------------+---------------+
5 rows in set (0.001 sec)

--9.  Write a query to retrieve 4 customers ordered by PaymentStatus ascending and PaymentAmount descending, skipping the first 2 records.

MariaDB [class_demo]> select * from orders order by paymentstatus asc ,paymentamount desc limit 2,4;
+------+-------------+-----------+------------+---------------+---------------+
| Id   | Name        | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+-------------+-----------+------------+---------------+---------------+
|   16 | Amit Mehra  | NULL      | NULL       |          NULL | NULL          |
|    4 | Anjali Nair | Kochi     | 2025-04-22 |       7800.75 | Completed     |
|    6 | Sneha Reddy | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    8 | Meera Iyer  | Chennai   | 2025-07-12 |       5100.00 | Completed     |
+------+-------------+-----------+------------+---------------+---------------+
4 rows in set (0.001 sec)

--10.  Write a query to fetch 3 customers ordered by CityName descending, starting from the 7th record.

MariaDB [class_demo]> select * from orders order by cityname desc limit 6,3;
+------+--------------+----------+------------+---------------+---------------+
| Id   | Name         | CityName | OrderDate  | PaymentAmount | PaymentStatus |
+------+--------------+----------+------------+---------------+---------------+
|    4 | Anjali Nair  | Kochi    | 2025-04-22 |       7800.75 | Completed     |
|    5 | Vikram Singh | Jaipur   | NULL       |       1500.25 | Pending       |
|   15 | Riya Kapoor  | Indore   | 2025-12-15 |          NULL | Completed     |
+------+--------------+----------+------------+---------------+---------------+
3 rows in set (0.001 sec)


Section 5 ------------------------------------------------------------------------------------------------------------------------------------------------------

--1.  Retrieve all columns for 3 customers whose Name contains 'a' and PaymentStatus is 'Completed', sorted by PaymentAmount in descending order, starting from the 2nd matching row.
 select * from orders where name like "%a%" and paymentstatus="completed" order by paymentamount desc limit 1,3;
+------+-------------+-----------+------------+---------------+---------------+
| Id   | Name        | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+-------------+-----------+------------+---------------+---------------+
|    6 | Sneha Reddy | Hyderabad | 2025-05-18 |       6200.00 | Completed     |
|    8 | Meera Iyer  | Chennai   | 2025-07-12 |       5100.00 | Completed     |
|   17 | Shalini Rao | Bhopal    | 2025-11-30 |       4800.00 | Completed     |
+------+-------------+-----------+------------+---------------+---------------+
3 rows in set (0.001 sec)

--2.  Show the Id and Name for 4 customers from 'Mumbai', 'Delhi', or 'Bengaluru' with PaymentAmount greater than 4000, sorted by Id in ascending order, skipping the first matching row.


MariaDB [class_demo]> SELECT Id, Name from orders where cityname in ("Mumbai","Delhi","bengaluru") and paymentamount >4000 order by id limit 1,3;
Empty set (0.001 sec)


--3.  Display the CityName, OrderDate, and PaymentAmount for 2 customers whose OrderDate is between July 1, 2025, and December 31, 2025, sorted by OrderDate in descending order, starting after the 3rd matching row.

MariaDB [class_demo]> select cityname,orderdate,paymentamount from orders  where orderdate between "2025-7-1" and "2025-12-31" order by orderdate desc limit 3,2;
+----------+------------+---------------+
| cityname | orderdate  | paymentamount |
+----------+------------+---------------+
| Surat    | 2025-11-20 |       6900.25 |
| NULL     | 2025-10-14 |       3700.00 |
+----------+------------+---------------+
2 rows in set (0.001 sec)

--4.  Get the Name and PaymentStatus for 5 customers whose CityName is not 'Hyderabad' and PaymentAmount is not NULL, sorted by Name in ascending order, skipping the first 2 matching rows.

MariaDB [class_demo]> select name,paymentstatus from orders  where cityname <> "hyderabad" and paymentamount <> "NULL" order by name limit 2,5;
+---------------+---------------+
| name          | paymentstatus |
+---------------+---------------+
| Deepak Joshi  | Pending       |
| Kiran Desai   | NULL          |
| Lakshmi Menon | Completed     |
| Meera Iyer    | Completed     |
| Nikhil Chopra | NULL          |
+---------------+---------------+
5 rows in set, 1 warning (0.001 sec)


--5.  List all columns for 3 customers with PaymentStatus in ('Pending', 'Failed') and Id less than 10, sorted by Id in descending order, starting from the 1st matching row.

MariaDB [class_demo]> select * from orders where paymentstatus in ("pending","Failed") and id <10 order by id desc limit 3;
+------+--------------+-----------+------------+---------------+---------------+
| Id   | Name         | CityName  | OrderDate  | PaymentAmount | PaymentStatus |
+------+--------------+-----------+------------+---------------+---------------+
|    9 | Rahul Verma  | Pune      | 2025-08-01 |          NULL | Pending       |
|    5 | Vikram Singh | Jaipur    | NULL       |       1500.25 | Pending       |
|    3 | Rohan Gupta  | Bengaluru | 2025-03-10 |          NULL | Failed        |
+------+--------------+-----------+------------+---------------+---------------+
3 rows in set (0.001 sec)

--6.  Retrieve the Id, Name, and PaymentAmount for 2 customers whose Name ends with 'i' or CityName starts with 'B', sorted by PaymentAmount in descending order, skipping the first 4 matching rows.

MariaDB [class_demo]> select id,name,paymentamount from orders where name like "%i" or cityname like "B%" order by paymentamount desc limit 4,2;
Empty set (0.001 sec)

--7.  Show the OrderDate and PaymentStatus for 4 customers whose PaymentAmount is between 2000 and 5000 and PaymentStatus is not 'Failed', sorted by OrderDate in ascending order, starting after the 1st matching row.

MariaDB [class_demo]> select orderdate,paymentstatus from orders where paymentamount between 2000 and 5000 and paymentstatus <> "failed" order by orderdate limit 4;
+------------+---------------+
| orderdate  | paymentstatus |
+------------+---------------+
| NULL       | Completed     |
| 2025-01-15 | Completed     |
| 2025-02-03 | Pending       |
| 2025-09-09 | Completed     |
+------------+---------------+
4 rows in set (0.001 sec)

--8.  Display the Id, CityName, and PaymentAmount for 3 customers whose Name contains 'sh' and OrderDate is after September 1, 2025, sorted by CityName in ascending order, skipping the first 2 matching rows.

MariaDB [class_demo]> select id,cityname,paymentamount from orders where name like "%sh%" and orderdate > "2025-9-1" order by cityname asc limit 2,3;
+------+----------+---------------+
| id   | cityname | paymentamount |
+------+----------+---------------+
|   10 | Kolkata  |       4300.60 |
|   14 | Nagpur   |       5200.75 |
+------+----------+---------------+
2 rows in set (0.001 sec)


--9.  Get the Name, CityName, and OrderDate for 5 customers whose PaymentAmount is greater than or equal to 3000 or PaymentStatus is 'Completed', sorted by Name in ascending order, starting from the 3rd matching row.

MariaDB [class_demo]> select name ,cityname ,orderdate from orders where paymentamount >=3000 or paymentstatus ="completed" order by name asc limit 2, 5;
+----------------+----------+------------+
| name           | cityname | orderdate  |
+----------------+----------+------------+
| Deepak Joshi   | Nagpur   | 2025-12-05 |
| Lakshmi Menon  | Kolkata  | 2025-09-09 |
| Meera Iyer     | Chennai  | 2025-07-12 |
| Nikhil Chopra  | Surat    | 2025-11-20 |
| Pooja Malhotra | Lucknow  | NULL       |
+----------------+----------+------------+
5 rows in set (0.001 sec)


--10.  Retrieve all columns for 2 customers whose CityName is not NULL and Id is not equal to 5, sorted by Id in descending order, skipping the first 5 matching rows.

MariaDB [class_demo]> select * from orders where cityname is not null and id <>5 order by id desc limit 5,2;
+------+---------------+----------+------------+---------------+---------------+
| Id   | Name          | CityName | OrderDate  | PaymentAmount | PaymentStatus |
+------+---------------+----------+------------+---------------+---------------+
|   10 | Lakshmi Menon | Kolkata  | 2025-09-09 |       4300.60 | Completed     |
|    9 | Rahul Verma   | Pune     | 2025-08-01 |          NULL | Pending       |
+------+---------------+----------+------------+---------------+---------------+
2 rows in set (0.001 sec)

--11.  Show the Id and PaymentAmount for 3 customers whose Name starts with 'R' and PaymentStatus is not 'Pending', sorted by PaymentAmount in descending order, starting after the 1st matching row.

MariaDB [class_demo]> select id,paymentamount from orders where name like "R%" and paymentstatus <> "pending" order by paymentamount desc limit 3;
+------+---------------+
| id   | paymentamount |
+------+---------------+
|    3 |          NULL |
|   15 |          NULL |
+------+---------------+
2 rows in set (0.001 sec)


--12.  Display the Name and OrderDate for 4 customers whose CityName is in ('Chennai', 'Pune', 'Kolkata') and PaymentAmount is less than 6000, sorted by OrderDate in descending order, skipping the first 2 matching rows.

select name, orderdate from orders where paymentamount < 6000 and cityname in ("Chennai","Pune","Kolkata") order by orderdate desc limit 4 offset 2;
Empty set (0.001 sec)

--13.  Get all columns for 1 customer whose PaymentAmount is greater than 5000 and OrderDate is before November 1, 2025, sorted by PaymentAmount in ascending order, starting from the 3rd matching row.

select * from orders where paymentamount >5000 and orderdate < "2025-11-01" order by paymentamount limit 1 offset 3;
Empty set (0.001 sec)


--14.  Retrieve the Id, Name, and CityName for 2 customers whose PaymentStatus is not NULL or PaymentAmount is between 4000 and 7000, sorted by Name in ascending order, skipping the first 4 matching rows.

select id,name,cityname from orders where paymentstatus is not null or paymentamount between 4000 and 7000 order by name limit 2 offset 4;
+------+---------------+----------+
| id   | name          | cityname |
+------+---------------+----------+
|    8 | Meera Iyer    | Chennai  |
|   13 | Nikhil Chopra | Surat    |
+------+---------------+----------+
2 rows in set (0.001 sec)


--15.  Show the CityName, OrderDate, and PaymentStatus for 3 customers whose Name ends with 'a' or Id is greater than 8, sorted by Id in ascending order, starting after the 2nd matching row.

 select cityname,orderdate,paymentstatus from orders where name like "%a" and id >8 order by id limit 3 offset 2;
+----------+------------+---------------+
| cityname | orderdate  | paymentstatus |
+----------+------------+---------------+
| Surat    | 2025-11-20 | NULL          |
| NULL     | NULL       | NULL          |
+----------+------------+---------------+
2 rows in set (0.001 sec)
