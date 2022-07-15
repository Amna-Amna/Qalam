Last login: Wed Mar 30 18:01:28 on console
mukarramkazmi@Mukarrams-MacBook-Air ~ % mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.28 Homebrew

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use QalamDatabase
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from studetn;
ERROR 1146 (42S02): Table 'qalamdatabase.studetn' doesn't exist
mysql> select * from studet;
ERROR 1146 (42S02): Table 'qalamdatabase.studet' doesn't exist
mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------+--------+
| name     | email                | password  | cmsid  | discipline     | profile | gender |
+----------+----------------------+-----------+--------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    | 333605 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+--------+----------------+---------+--------+
4 rows in set (0.00 sec)

mysql> mysql> select * fden
    -> 

^C
mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+----------------------------------------------------------------------------------------------------------+--------+
| name     | email                | password  | cmsid  | discipline     | profile                                                                                                  | gender |
+----------+----------------------+-----------+--------+----------------+----------------------------------------------------------------------------------------------------------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    | 333605 | BS Mathematics | https://qalam.nust.edu.pk/index.html                                                                     | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL                                                                                                     | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | https://images.pexels.com/photos/1194036/pexels-photo-1194036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL                                                                                                     | male   |
+----------+----------------------+-----------+--------+----------------+----------------------------------------------------------------------------------------------------------+--------+
4 rows in set (0.01 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+----------------------------------------------------------------------------------------------------------+--------+
| name     | email                | password  | cmsid  | discipline     | profile                                                                                                  | gender |
+----------+----------------------+-----------+--------+----------------+----------------------------------------------------------------------------------------------------------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    | 333605 | BS Mathematics | https://qalam.nust.edu.pk/index.html                                                                     | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL                                                                                                     | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | https://images.pexels.com/photos/1194036/pexels-photo-1194036.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL                                                                                                     | male   |
+----------+----------------------+-----------+--------+----------------+----------------------------------------------------------------------------------------------------------+--------+
4 rows in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.01 sec)

mysql> create table student (name varchar(20), email varchar(30), password varchar(20), cmsid int, discipline varchar(20), profile varchar(500), gender varchar(10));
Query OK, 0 rows affected (0.00 sec)

mysql> 
mysql> insert into student values("Mukarram", "mukarram@nust.edu.pk", "abc123", 12345, "BS Mathematics", null, "male");
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> insert into student values("Amna", "amna@nust.edu.pk", "amna123", 123406, "BS Physics", null, "female");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student values("Waris", "waris@nust.edu.pk", "warisali", 333607, "BS Chemistry", null, "male");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student values("Faizan", "faizan@nust.edu.pk", "faizan123", 333608, "BS Mathematics", null, "male");
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------+--------+
| name     | email                | password  | cmsid  | discipline     | profile | gender |
+----------+----------------------+-----------+--------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+--------+----------------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------+--------+
| name     | email                | password  | cmsid  | discipline     | profile | gender |
+----------+----------------------+-----------+--------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+--------+----------------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------+--------+
| name     | email                | password  | cmsid  | discipline     | profile | gender |
+----------+----------------------+-----------+--------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+--------+----------------+---------+--------+
4 rows in set (0.00 sec)

mysql> insert into student values("Faizan", "faizan@nust.edu.pk", "faizan123", 333608, "BS Mathematics", null, "male");
Query OK, 1 row affected (0.01 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------+--------+
| name     | email                | password  | cmsid  | discipline     | profile | gender |
+----------+----------------------+-----------+--------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+--------+----------------+---------+--------+
5 rows in set (0.00 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------+--------+
| name     | email                | password  | cmsid  | discipline     | profile | gender |
+----------+----------------------+-----------+--------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+--------+----------------+---------+--------+
5 rows in set (0.00 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------+--------+
| name     | email                | password  | cmsid  | discipline     | profile | gender |
+----------+----------------------+-----------+--------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+--------+----------------+---------+--------+
5 rows in set (0.00 sec)

mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+--------------------------------------------------------------+--------+
| name     | email                | password  | cmsid  | discipline     | profile                                                      | gender |
+----------+----------------------+-----------+--------+----------------+--------------------------------------------------------------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | https://qalam.nust.edu.pk/odoocms_assets/static/img/logo.svg | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL                                                         | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | NULL                                                         | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL                                                         | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL                                                         | male   |
+----------+----------------------+-----------+--------+----------------+--------------------------------------------------------------+--------+
5 rows in set (0.00 sec)

mysql> mysql> select * from student;
ERROR 1146 (42S02): Table 'qalamdatabase.studem' doesn't exist
mysql> select * from student;
+----------+----------------------+-----------+--------+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+
| name     | email                | password  | cmsid  | discipline     | profile                                                                                                                                                                                                                   | gender |
+----------+----------------------+-----------+--------+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |  12345 | BS Mathematics | https://qalam.nust.edu.pk/odoocms_assets/static/img/logo.svg                                                                                                                                                              | male   |
| Amna     | amna@nust.edu.pk     | amna123   | 123406 | BS Physics     | NULL                                                                                                                                                                                                                      | female |
| Waris    | waris@nust.edu.pk    | warisali  | 333607 | BS Chemistry   | https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwirx7S2se72AhVuxYUKHRozC0cQ1bUFegQIFRAA&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fcat%2F&usg=AOvVaw0OQB07qbDBuLUYO8BkC-5Q | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL                                                                                                                                                                                                                      | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 | 333608 | BS Mathematics | NULL                                                                                                                                                                                                                      | male   |
+----------+----------------------+-----------+--------+----------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+
5 rows in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.03 sec)

mysql> 
mysql> create table student (name varchar(20), email varchar(30), password varchar(20), cmsid int, discipline varchar(20), profile varchar(500), gender varchar(10), primary key (cmsid));
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> insert into student values("Mukarram", "mukarram@nust.edu.pk", "abc123", 1, "BS Mathematics", null, "male");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student values("Amna", "amna@nust.edu.pk", "amna123", 2, "BS Physics", null, "female");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student values("Waris", "waris@nust.edu.pk", "warisali", 3, "BS Chemistry", null, "male");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student values("Faizan", "faizan@nust.edu.pk", "faizan123", 4, "BS Mathematics", null, "male");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> select * from student;
+----------+----------------------+-----------+-------+----------------+---------+--------+
| name     | email                | password  | cmsid | discipline     | profile | gender |
+----------+----------------------+-----------+-------+----------------+---------+--------+
| Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
| Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
| Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
| Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
+----------+----------------------+-----------+-------+----------------+---------+--------+
4 rows in set (0.00 sec)

mysql> drop table courses;
ERROR 1051 (42S02): Unknown table 'qalamdatabase.courses'
mysql> 
mysql> create table courses (courseid int, coursename varchar(20), primary key (courseid));
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> insert into courses values(1, "mathematics");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into courses values(2, "physics");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into courses values(3, "chemistry");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into courses values(4, "biology");
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> select * from courses;
+----------+-------------+
| courseid | coursename  |
+----------+-------------+
|        1 | mathematics |
|        2 | physics     |
|        3 | chemistry   |
|        4 | biology     |
+----------+-------------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE student_courses (id int, cmsid int, courseid int, PRIMARY KEY (id), FOREIGN KEY (cmsid) REFERENCES student(cmsid), FOREIGN KEY (courseid) REFERENCES courses(courseid));
Query OK, 0 rows affected (0.02 sec)

mysql> 
mysql> insert into student_courses values(1, 1, 2);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student_courses values(2, 1, 3);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student_courses values(3, 2, 1);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student_courses values(4, 2, 2);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student_courses values(5, 2, 3);
Query OK, 1 row affected (0.01 sec)

mysql> 
mysql> insert into student_courses values(6, 3, 4);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student_courses values(7, 4, 2);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> insert into student_courses values(8, 4, 4);
Query OK, 1 row affected (0.00 sec)

mysql> 
mysql> select * from student_courses;
+----+-------+----------+
| id | cmsid | courseid |
+----+-------+----------+
|  1 |     1 |        2 |
|  2 |     1 |        3 |
|  3 |     2 |        1 |
|  4 |     2 |        2 |
|  5 |     2 |        3 |
|  6 |     3 |        4 |
|  7 |     4 |        2 |
|  8 |     4 |        4 |
+----+-------+----------+
8 rows in set (0.00 sec)

mysql> 
mysql> 
mysql> select * from student_courses;
+----+-------+----------+
| id | cmsid | courseid |
+----+-------+----------+
|  1 |     1 |        2 |
|  2 |     1 |        3 |
|  3 |     2 |        1 |
|  4 |     2 |        2 |
|  5 |     2 |        3 |
|  6 |     3 |        4 |
|  7 |     4 |        2 |
|  8 |     4 |        4 |
+----+-------+----------+
8 rows in set (0.00 sec)

mysql> select * from student_courses join student;
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
| id | cmsid | courseid | name     | email                | password  | cmsid | discipline     | profile | gender |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
|  1 |     1 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  1 |     1 |        2 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  1 |     1 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  2 |     1 |        3 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  2 |     1 |        3 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  2 |     1 |        3 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  3 |     2 |        1 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  3 |     2 |        1 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  3 |     2 |        1 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  3 |     2 |        1 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  4 |     2 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  4 |     2 |        2 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  4 |     2 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  4 |     2 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  5 |     2 |        3 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  5 |     2 |        3 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  5 |     2 |        3 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  5 |     2 |        3 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  6 |     3 |        4 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  6 |     3 |        4 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  6 |     3 |        4 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  6 |     3 |        4 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  7 |     4 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  7 |     4 |        2 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  7 |     4 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  7 |     4 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  8 |     4 |        4 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  8 |     4 |        4 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  8 |     4 |        4 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  8 |     4 |        4 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
32 rows in set (0.00 sec)

mysql> select * from student_courses join student group by student;
ERROR 1054 (42S22): Unknown column 'student' in 'group statement'
mysql> select * from student_courses c join student s ;
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
| id | cmsid | courseid | name     | email                | password  | cmsid | discipline     | profile | gender |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
|  1 |     1 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  1 |     1 |        2 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  1 |     1 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  2 |     1 |        3 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  2 |     1 |        3 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  2 |     1 |        3 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  3 |     2 |        1 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  3 |     2 |        1 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  3 |     2 |        1 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  3 |     2 |        1 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  4 |     2 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  4 |     2 |        2 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  4 |     2 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  4 |     2 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  5 |     2 |        3 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  5 |     2 |        3 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  5 |     2 |        3 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  5 |     2 |        3 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  6 |     3 |        4 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  6 |     3 |        4 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  6 |     3 |        4 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  6 |     3 |        4 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  7 |     4 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  7 |     4 |        2 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  7 |     4 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  7 |     4 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  8 |     4 |        4 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  8 |     4 |        4 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  8 |     4 |        4 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  8 |     4 |        4 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
32 rows in set (0.00 sec)

mysql> select * from student_courses c join student s on c.cmsid = s.cmsid;
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
| id | cmsid | courseid | name     | email                | password  | cmsid | discipline     | profile | gender |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  3 |     2 |        1 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  4 |     2 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  5 |     2 |        3 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  6 |     3 |        4 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  7 |     4 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  8 |     4 |        4 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
8 rows in set (0.01 sec)

mysql> select * from student_courses c join student s on c.cmsid = s.cmsid;
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
| id | cmsid | courseid | name     | email                | password  | cmsid | discipline     | profile | gender |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123    |     1 | BS Mathematics | NULL    | male   |
|  3 |     2 |        1 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  4 |     2 |        2 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  5 |     2 |        3 | Amna     | amna@nust.edu.pk     | amna123   |     2 | BS Physics     | NULL    | female |
|  6 |     3 |        4 | Waris    | waris@nust.edu.pk    | warisali  |     3 | BS Chemistry   | NULL    | male   |
|  7 |     4 |        2 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
|  8 |     4 |        4 | Faizan   | faizan@nust.edu.pk   | faizan123 |     4 | BS Mathematics | NULL    | male   |
+----+-------+----------+----------+----------------------+-----------+-------+----------------+---------+--------+
8 rows in set (0.00 sec)

mysql> select * from student_courses c join student s on c.cmsid = s.cmsid where name="Mukarram";
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+
| id | cmsid | courseid | name     | email                | password | cmsid | discipline     | profile | gender |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from student_courses c join student s join course c on c.cmsid = s.cmsid where name="Mukarram";
ERROR 1066 (42000): Not unique table/alias: 'c'
mysql> select * from student_courses c join student s join course crs on c.cmsid = s.cmsid where name="Mukarram";
ERROR 1146 (42S02): Table 'qalamdatabase.course' doesn't exist
mysql> select * from student_courses c join student s join courses crs on c.cmsid = s.cmsid where name="Mukarram";
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+-------------+
| id | cmsid | courseid | name     | email                | password | cmsid | discipline     | profile | gender | courseid | coursename  |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+-------------+
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        1 | mathematics |
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        1 | mathematics |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        2 | physics     |
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        2 | physics     |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        3 | chemistry   |
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        3 | chemistry   |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        4 | biology     |
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        4 | biology     |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+-------------+
8 rows in set (0.00 sec)

mysql> select * from student_courses c join student s join courses crs on (c.cmsid = s.cmsid and crs.id = c.courseid) where name="Mukarram";
ERROR 1054 (42S22): Unknown column 'crs.id' in 'on clause'
mysql> select * from student_courses c join student s join courses crs on (crs.id = c.courseid) where name="Mukarram";
ERROR 1054 (42S22): Unknown column 'crs.id' in 'on clause'
mysql> select * from student_courses c join student s join courses crs on (crs.id = c.courseid) where name="Mukarram";
ERROR 1054 (42S22): Unknown column 'crs.id' in 'on clause'
mysql> select * from courses
    -> ;
+----------+-------------+
| courseid | coursename  |
+----------+-------------+
|        1 | mathematics |
|        2 | physics     |
|        3 | chemistry   |
|        4 | biology     |
+----------+-------------+
4 rows in set (0.00 sec)

mysql> select * from student_courses c join student s join courses crs on (crs.courseidid = c.courseid) where name="Mukarram";
ERROR 1054 (42S22): Unknown column 'crs.courseidid' in 'on clause'
mysql> select * from student_courses c join student s join courses crs on (crs.courseid = c.courseid) where name="Mukarram";
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+-------------+
| id | cmsid | courseid | name     | email                | password | cmsid | discipline     | profile | gender | courseid | coursename  |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+-------------+
|  3 |     2 |        1 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        1 | mathematics |
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        2 | physics     |
|  4 |     2 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        2 | physics     |
|  7 |     4 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        2 | physics     |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        3 | chemistry   |
|  5 |     2 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        3 | chemistry   |
|  6 |     3 |        4 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        4 | biology     |
|  8 |     4 |        4 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        4 | biology     |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+-------------+
8 rows in set (0.00 sec)

mysql> select * from student_courses c join student s join courses crs on (c.cmsid = s.cmsid and crs.courseid = c.courseid) where name="Mukarram";
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+------------+
| id | cmsid | courseid | name     | email                | password | cmsid | discipline     | profile | gender | courseid | coursename |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+------------+
|  1 |     1 |        2 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        2 | physics    |
|  2 |     1 |        3 | Mukarram | mukarram@nust.edu.pk | abc123   |     1 | BS Mathematics | NULL    | male   |        3 | chemistry  |
+----+-------+----------+----------+----------------------+----------+-------+----------------+---------+--------+----------+------------+
2 rows in set (0.00 sec)

mysql> 


-- <form <% if (course.0 > -1) { %>style="display: none;"<%} else { %>style="display: default;"<% } %> action="/studentattendencedetails" method="get">
--             <button id="SN" type="submit"><h3>Real analysis</h3></button>
--         </form>
