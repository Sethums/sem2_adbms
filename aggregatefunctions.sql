SQL> create table tbl_student23(studentid int not null,studentname varchar(40) not null,ma
rk int not null,primary key(studentid));

Table created.

SQL> insert into tbl_student23 values(1,'Sanjay',64);

1 row created.

SQL> insert into tbl_student23 values(2,'Varun',72);

1 row created.

SQL> insert into tbl_student23 values(3,'Akash',45);

1 row created.

SQL> insert into tbl_student23 values(4,'Rohit',86);

1 row created.

SQL> insert into tbl_student23 values(5,'Anjali',92);

1 row created.

SQL> insert into tbl_student23 values(6,'ammu',95);

1 row created.

SQL> insert into tbl_student23 values(7,'Rahul',88);

1 row created.

SQL> insert into tbl_student23 values(8,'Prathibha',62);

1 row created.

SQL> insert into tbl_student23 values(9,'Ravi',75);

1 row created.

SQL> insert into tbl_student23 values(10,'Pulkit',76);

1 row created.

SQL> select count(*) AS No_of_students from tbl_student23 where mark>75;

NO_OF_STUDENTS
--------------
             5

SQL> Select avg(mark) as Average from tbl_student23;

   AVERAGE
----------
      75.5

SQL> select min(mark) AS minimummarks from tbl_student23;

MINIMUMMARKS
------------
          45

SQL> select max(mark) AS maximummarks from tbl_student23;

MAXIMUMMARKS
------------
          95

SQL> commit;

Commit complete.

SQL> ed aggregatefunctions



































