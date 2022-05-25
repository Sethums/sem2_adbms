SQL> create table tbl_customer(id int not null,name varchar(50) not null,age int not null,
hometown varchar(50) not null,salary varchar(30) not null,primary key(id));

Table created.

SQL> insert into tbl_customer values(1,'Ramesh',32,'Ahamedabad','2000');

1 row created.

SQL> insert into tbl_customer values(2,'Khilan',25,'Delhi','1500');

1 row created.

SQL> insert into tbl_customer values(3,'Kaushik',23,'Kota','2000');

1 row created.

SQL> insert into tbl_customer values(4,'Chaitali',25,'Mumbai','6500');

1 row created.

SQL> insert into tbl_customer values(5,'Hardik',27,'Bhopal','8500');

1 row created.

SQL> insert into tbl_customer values(6,'Komal',22,'MP','4500');

1 row created.

SQL> insert into tbl_customer values(7,'Muffy',24,'Indore','10000');

1 row created.

SQL> insert into tbl_customer values(8,'Ramu',23,'Delhi','6000');

1 row created.

SQL> insert into tbl_customer values(9,'Rohit',24,'Ahmedabad','5000');

1 row created.

SQL> insert into tbl_customer values(10,'Shamli',23,'Mumbai','10000');

1 row created.

SQL> select * from tbl_customer;

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
HOMETOWN
--------------------------------------------------
SALARY
------------------------------
         1 Ramesh                                                     32
Ahamedabad
2000

         2 Khilan                                                     25
Delhi
1500

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
HOMETOWN
--------------------------------------------------
SALARY
------------------------------

         3 Kaushik                                                    23
Kota
2000

         4 Chaitali                                                   25
Mumbai

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
HOMETOWN
--------------------------------------------------
SALARY
------------------------------
6500

         5 Hardik                                                     27
Bhopal
8500

         6 Komal                                                      22

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
HOMETOWN
--------------------------------------------------
SALARY
------------------------------
MP
4500

         7 Muffy                                                      24
Indore
10000


        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
HOMETOWN
--------------------------------------------------
SALARY
------------------------------
         8 Ramu                                                       23
Delhi
6000

         9 Rohit                                                      24
Ahmedabad
5000

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
HOMETOWN
--------------------------------------------------
SALARY
------------------------------

        10 Shamli                                                     23
Mumbai
10000


10 rows selected.

SQL> select * from tbl_customer where id=4;

        ID NAME                                                      AGE
---------- -------------------------------------------------- ----------
HOMETOWN
--------------------------------------------------
SALARY
------------------------------
         4 Chaitali                                                   25
Mumbai
6500


SQL> select distinct hometown from tbl_customer;

HOMETOWN
--------------------------------------------------
Ahamedabad
Bhopal
Ahmedabad
Delhi
Kota
Mumbai
MP
Indore

8 rows selected.

SQL> select count(salary) as salarycount from tbl_customer;

SALARYCOUNT
-----------
         10
