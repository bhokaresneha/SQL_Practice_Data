
MariaDB [12_2]> create or replace table t1( salary int) ;


MariaDB [12_2]> create table t2( id2 int) values (1, "Kala", 23.0);


MariaDB [12_2]> create table t3( id2 int) values (1, "Kala", 23.0), (2, "Bala", 23), (3, "mala", 24);

MariaDB [12_2]> drop table t1, t2, t3;

MariaDB [12_2]> create table t1 (id int, name char(12), address varchar(13));


MariaDB [12_2]> -- Create table
MariaDB [12_2]> CREATE TABLE emp (
    ->     emp_id INT PRIMARY KEY,
    ->     emp_name VARCHAR(50),
    ->     gender CHAR(1),
    ->     salary DECIMAL(10,2),
    ->     department VARCHAR(30)
    -> );

MariaDB [12_2]> INSERT INTO emp (emp_id, emp_name, gender, salary, department) VALUES
    -> (1, 'Amit Sharma', 'M', 55000, 'HR'),
    -> (2, 'Neha Verma', 'F', 62000, 'Finance'),
    -> (3, 'Ravi Kumar', 'M', 48000, 'IT'),
    -> (4, 'Priya Singh', 'F', 75000, 'Marketing'),
    -> (5, 'Anil Mehta', 'M', 68000, 'Finance'),
    -> (6, 'Sneha Gupta', 'F', 50000, 'HR'),
    -> (7, 'Raj Malhotra', 'M', 72000, 'IT'),
    -> (8, 'Kavita Joshi', 'F', 59000, 'Marketing');

+--------+--------------+--------+----------+------------+
| emp_id | emp_name     | gender | salary   | department |
+--------+--------------+--------+----------+------------+
|      1 | Amit Sharma  | M      | 55000.00 | HR         |
|      2 | Neha Verma   | F      | 62000.00 | Finance    |
|      3 | Ravi Kumar   | M      | 48000.00 | IT         |
|      4 | Priya Singh  | F      | 75000.00 | Marketing  |
|      5 | Anil Mehta   | M      | 68000.00 | Finance    |
|      6 | Sneha Gupta  | F      | 50000.00 | HR         |
|      7 | Raj Malhotra | M      | 72000.00 | IT         |
|      8 | Kavita Joshi | F      | 59000.00 | Marketing  |
+--------+--------------+--------+----------+------------+

MariaDB [12_2]> desc emp;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| emp_id     | int(11)       | NO   | PRI | NULL    |       |
| emp_name   | varchar(50)   | YES  |     | NULL    |       |
| gender     | char(1)       | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
| department | varchar(30)   | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+

MariaDB [12_2]> create table emp_1 select * from emp;

MariaDB [12_2]> desc emp_1;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| emp_id     | int(11)       | NO   |     | NULL    |       |
| emp_name   | varchar(50)   | YES  |     | NULL    |       |
| gender     | char(1)       | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
| department | varchar(30)   | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+

MariaDB [12_2]> select * from emp_1;
+--------+--------------+--------+----------+------------+
| emp_id | emp_name     | gender | salary   | department |
+--------+--------------+--------+----------+------------+
|      1 | Amit Sharma  | M      | 55000.00 | HR         |
|      2 | Neha Verma   | F      | 62000.00 | Finance    |
|      3 | Ravi Kumar   | M      | 48000.00 | IT         |
|      4 | Priya Singh  | F      | 75000.00 | Marketing  |
|      5 | Anil Mehta   | M      | 68000.00 | Finance    |
|      6 | Sneha Gupta  | F      | 50000.00 | HR         |
|      7 | Raj Malhotra | M      | 72000.00 | IT         |
|      8 | Kavita Joshi | F      | 59000.00 | Marketing  |
+--------+--------------+--------+----------+------------+

MariaDB [12_2]> create table emp_2 like emp;

MariaDB [12_2]> select * from emp_2;

MariaDB [12_2]> desc emp_2;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| emp_id     | int(11)       | NO   | PRI | NULL    |       |
| emp_name   | varchar(50)   | YES  |     | NULL    |       |
| gender     | char(1)       | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
| department | varchar(30)   | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+

MariaDB [12_2]> insert into emp_2 select * from emp;

MariaDB [12_2]> create table sal select salary, salary * 0.1   "bonus" from emp;

MariaDB [12_2]> select * from sal as a;

MariaDB [12_2]> select * from sal as "a";

MariaDB [12_2]> select * from sal  "a";

MariaDB [12_2]> select * from sal as 1;

MariaDB [12_2]> create table t1 (id int, name varchar(12), add varchar(23), doj date, sal float(5,1));

MariaDB [12_2]> replace table t1 (id int, name varchar(12), add1 varchar(23), doj date, sal float(5,1));

MariaDB [12_2]> create or replace table t1 (id int, name varchar(12), add1 varchar(23), doj date, sal float(5,1));

MariaDB [12_2]> insert into t1 values(1, "kala", "thane", 2024-01-01, 2343.5);

MariaDB [12_2]> insert into t1 values(1, "kala", "thane", "2024-01-01", 2343.5);

MariaDB [12_2]> insert into t1 values(1, 1,1,1,1);

MariaDB [12_2]> insert into t1 values("1", "1","1","1","1");

MariaDB [12_2]> insert into t1 values("1a", "1a","1a","1a","1a");

MariaDB [12_2]> insert into t1 values("a1", "a1","a1","a1","a1");

MariaDB [12_2]> insert into t1 values("1+2a", "1+2a","1+2a","1+2a","1+2a");

MariaDB [12_2]> insert into t1 values("1+2", "a1","a1","a1","1+2");

MariaDB [12_2]> insert into t1 values();

MariaDB [12_2]> insert into t1 (id, name) values ();

MariaDB [12_2]> insert into t1 (id, name) values (id, name);

MariaDB [12_2]> alter table t1 modify id int default 23, modify name char(12) default "Harry";

MariaDB [12_2]> insert into t1 (id, name) values (id, name);

MariaDB [12_2]> insert into t1 values(Null, null, null, null, null);

MariaDB [12_2]> insert into t1 values("Null", "null", "null", "null", "null");

MariaDB [12_2]> select null is null,  "null" is null;

MariaDB [12_2]> insert into t1 values("Null"+2, "null"+2, "null"+2, "null"+2, "null"+2);

MariaDB [12_2]> insert into t1 values(Null+2, null+2, null+2, null+2, null+2);

MariaDB [12_2]> insert into t1 values(Null+null, null+null, null+null, null+null, null+Null);

MariaDB [12_2]> insert into t1 values(Null is null, null is null, null is null, null is null, null is Null);

MariaDB [12_2]> insert into t1 values(Null>null, null>null, null>null, null>null, null>Null);

MariaDB [12_2]> insert into t1 values( 1 is True , 0 is True , 0 is False, 1 is 1, True is 1);

MariaDB [12_2]> insert into t1 values( 1 is True , 0 is True , 0 is False, True  is 1, True is 1);

MariaDB [12_2]> insert into t1 values( 1 is True , 0 is True , 0 is False, True  is True , True is 1);

MariaDB [12_2]> insert into t1 values( 1 is True , 0 is True , 0 is False, True  is True , True is 1);

MariaDB [12_2]> insert into t1 values( 1 is True , 0 is True , 0 is False, "Hello" is True , 1);

MariaDB [12_2]> insert into t1(id, name) values(1+"1", 1 > "2");

MariaDB [12_2]> insert into t1(id, name) values(1+"1", 1 > "2");

MariaDB [12_2]> insert into t1(id, name) values(id + 2, name + name);

MariaDB [12_2]> insert into t1(id, name) values(id + 2, "name name");

MariaDB [12_2]> insert into t1(id, name) values(id + id, id + name);

MariaDB [12_2]> insert into t1(id, name) values(name+0, name);

MariaDB [12_2]> insert into t1(id, name) values(id > id , id > id + 2);

MariaDB [12_2]> select  0 + 2;

MariaDB [12_2]> select False + 2;

MariaDB [12_2]> select id > id + 2  from t1;

MariaDB [12_2]> create table t2 like select id, name from t1;

MariaDB [12_2]> create table t2  select id, name from t1 where False;

MariaDB [12_2]> insert into t2 values (2), (4);

MariaDB [12_2]> insert into t2 values (2, "kala"), (4, "Bala");

MariaDB [12_2]> select * from t2;
+------+------+
| id   | name |
+------+------+
|    2 | kala |
|    4 | Bala |
+------+------+

MariaDB [12_2]> select id > id, id> id + 2 from t2;

MariaDB [12_2]> select id > id, False + 2 from t2;

MariaDB [12_2]> select null > null + 2;

MariaDB [12_2]> select id from t1;


============================================================= Part 2 ==============================================================================



MariaDB [2_4]> create table s1;


MariaDB [2_4]> create table s1();

MariaDB [2_4]> create table s1(id int);

MariaDB [2_4]> create table student (id int, name char, address varchar(15), contact int(10), mail varchar);

MariaDB [2_4]> create table student (id int, name char, address varchar(15), contact int(10), mail varchar(12));

MariaDB [2_4]> desc student;

MariaDB [2_4]> create table std1 (id int, name char(20), address varchar(15), contact int(10), mail varchar(12));

MariaDB [2_4]> insert into std1 values(1, "kala", "thane", 9876543221, "k@123.com");
MariaDB [2_4]> insert into std1 values(1, "kala", "thane", 876543221, "k@123.com");
MariaDB [2_4]> insert into std1 values(1, "kala", "thane", 1876543221, "k@123.com");
MariaDB [2_4]> insert into std1 values(1, "kala", "thane", 2876543221, "k@123.com");
MariaDB [2_4]> insert into std1 values(1, "kala", "thane", 3876543221, "k@123.com");

MariaDB [2_4]> create table std2 (id int, name char(20), address varchar(15), contact int(10), mail varchar(12));

MariaDB [2_4]> insert into std1 values(1, "kala", "thane", 876543221, "k@123.com");
MariaDB [2_4]> insert into std1 values(2, "Bala", "thane", 776543221, "b@123.com"), (3, "Mala", "Mulund", 676543221, "M@123.com");
MariaDB [2_4]> insert into std1 values(4, "Raju", "Mumbai", 776543222, "Raju@123.com"), (5, "lala", "Mulund", 676543221, "lala@123.com");
MariaDB [2_4]> insert into std2 values(1, "kala", "thane", 876543221, "k@123.com");
MariaDB [2_4]> insert into std2 values(2, "Bala", "thane", 776543221, "b@123.com"), (3, "Mala", "Mulund", 676543221, "M@123.com");
MariaDB [2_4]> insert into std2 values(4, "Raju", "Mumbai", 776543222, "Raju@123.com"), (5, "lala", "Mulund", 676543221, "lala@123.com");



MariaDB [2_4]> create table std3 (id1 int, name char(20), address char(20), contact bigint(12), mail varchar(19));

MariaDB [2_4]> insert into std3 values(1, "kala", "thane", 876543221, "k@123.com");

MariaDB [2_4]> insert into std3 select * from std2;

MariaDB [2_4]> create table std4 (id int, name char(1));

MariaDB [2_4]> insert into std4 select id1, name from std3;

MariaDB [2_4]> insert into std4 select id1+1, name from std3;

MariaDB [2_4]> create table std5 (id int, name char(10), mail varchar(12));

MariaDB [2_4]> insert into std5 values;

MariaDB [2_4]> insert into std5 values();

MariaDB [2_4]> insert into std5 values(1);

MariaDB [2_4]> insert into std5(id) values(1);

MariaDB [2_4]> insert into std5 values(2,2,2);

MariaDB [2_4]> insert into std5 values(2,2,@);

MariaDB [2_4]> insert into std5 values(2,2,#);

MariaDB [2_4]> insert into std5 values("3", "3", "3");

MariaDB [2_4]> insert into std5 values("a", "b", "c");

MariaDB [2_4]> insert into std5 values(a, "b", "c");

MariaDB [2_4]> insert into std5 values(1+2, "b", "c");

MariaDB [2_4]> insert into std5 values("a"+1, "b", "c");

MariaDB [2_4]> insert into std5 values("a"-2, "b", "c");

MariaDB [2_4]> insert into std5 values("a1", "b", "c");

MariaDB [2_4]> insert into std5 values("a-2", "b", "c");

MariaDB [2_4]> insert into std5 values("3-2", "3-2", "c-2");

MariaDB [2_4]> insert into std5 values("5-2", "3-2", "c-2");

MariaDB [2_4]> insert into std5 values("1-2", "3-2", "c-2");

MariaDB [2_4]> insert into std5 values("5*2", "3-2", "c-2");

MariaDB [2_4]> insert into std5 values();

MariaDB [2_4]> insert into std5 values(null, null, null);

MariaDB [2_4]> insert into std5 values("null", "null", "null");

MariaDB [2_4]> insert into std5 values("null"+null, null, null);

MariaDB [2_4]> insert into std5 values("null"-null, null, null);

MariaDB [2_4]> insert into std5 values(null-null, null, null);

MariaDB [2_4]> insert into std5 values(1+null, null, null);

MariaDB [2_4]> insert into std5 values(id, id, id);

MariaDB [2_4]> insert into std5 values(null,null, null);

MariaDB [2_4]> insert into std5 values("id", "id", "id");

MariaDB [2_4]> insert into std5 values(insert into std5 values(1, 2, 3));

MariaDB [2_4]> insert into std5 values(insert (1, 2, 3));


========================================================================== Part 3 ==============================================================



MariaDB [2_4]> create table emp ( id int, name char(12), add varchar(14), salary float(5, 1), doj date);

MariaDB [2_4]> create table emp ( id int, name char(12), add1 varchar(14), salary float(5, 1), doj date);


MariaDB [2_4]> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int(11)     | YES  |     | NULL    |       |
| name   | char(12)    | YES  |     | NULL    |       |
| add1   | varchar(14) | YES  |     | NULL    |       |
| salary | float(5,1)  | YES  |     | NULL    |       |
| doj    | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

MariaDB [2_4]> insert into emp values(1, "Kala", "Thane", 12345.5, "2025-09-02");

MariaDB [2_4]> desc emp;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int(11)     | YES  |     | NULL    |       |
| name   | char(12)    | YES  |     | NULL    |       |
| add1   | varchar(14) | YES  |     | NULL    |       |
| salary | float(5,1)  | YES  |     | NULL    |       |
| doj    | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+

MariaDB [2_4]> insert into emp values ( 1, 2, 1, 1, 1);

MariaDB [2_4]> insert into emp values ( "1", "2", "1", "1", "1");

MariaDB [2_4]> select "3" + 2;

MariaDB [2_4]> insert into emp values ( "1+1", "2+1", "1+2", "1+2", "1+1");

MariaDB [2_4]> select "3" + 2;

MariaDB [2_4]> select  "1+1", "2+1", "1+2", "1+2", "1+1";

MariaDB [2_4]> insert into emp values ( "a+1", "a+1", "a+2", "a+2", "1+1");

MariaDB [2_4]> insert into emp values ( "aadfa2453", "a+1", "a+2", "a+2", "1+1");

MariaDB [2_4]> insert into emp values ( "e", "d", "c", "b", "a");

MariaDB [2_4]> insert into emp values ( Null, Null + null, Null>null, null, Null);

MariaDB [2_4]> insert into emp values ( "Null", "Null + null", "Null>null", "null", "Null");

MariaDB [2_4]> insert into emp values (null is null, null is null, null is null, null is null, null is null);

MariaDB [2_4]> insert into emp(id, name , add1) values ( 1 and 1, 1 or 1, not 1);

MariaDB [2_4]> insert into emp(id, name , add1) values ( 1 and -3, -100 or 1, not -231);

MariaDB [2_4]> insert into emp(id, name , add1) values ( "100-2" and -3, "-100"+100 or 1, not -231);

MariaDB [2_4]> insert into emp(id, name , add1) values ( "id", "name" , "add1");

MariaDB [2_4]> insert into emp(id, name , add1) values ( id, name , add1);

MariaDB [2_4]> alter table emp modify id int default 23, modify name char(12) default "Kala"; (optional to answer )

MariaDB [2_4]> insert into emp(id, name , add1) values ( id, name , add1);

MariaDB [2_4]> insert into emp(id, name , add1) values ( name, name, name);

MariaDB [2_4]> insert into emp(id, name , add1) values ("kala", "kala", "Kala");

MariaDB [2_4]> insert into emp(id, name , add1) values (id, id, id);

MariaDB [2_4]> insert into emp(id, name , add1) values ( id+2, id, id);

MariaDB [2_4]> insert into emp(id, name , add1) values ( id+2, id+3, id);

MariaDB [2_4]> insert into emp(id, name , add1) values ( id+2, id+3, id+4);

MariaDB [2_4]> insert into emp(id, name, add1) values ( name+name, name, name);

MariaDB [2_4]> insert into emp(id, name, add1) values ( name+name, name+name, name);

MariaDB [2_4]> insert into emp(name, id, add1) value( "kala", 23, "Thane");

MariaDB [2_4]> insert into emp(name, id, add1) value( "Thane", "Bala", 34);

MariaDB [2_4]> insert into emp(name, id, add1) value( "kala", name, name);

MariaDB [2_4]> insert into emp(name, id, add1) value( name+name, name, name);

MariaDB [2_4]> insert into emp(name, id, add1) value( 34, name, name);


====================================================================== done =================================================================







