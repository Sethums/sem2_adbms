SQL> insert into sailor23 values(22,'Dustin',7,45.0);

1 row created.



SQL> insert into sailor23 values(29,'Brutus',1,33.0);

1 row created.

SQL> insert into sailor23 values(31,'Lubber',8,55.5);

1 row created.

SQL> insert into sailor23 values(32,'Audy',8,25.5);

1 row created.

SQL> insert into sailor23 values(58,Rusty',10,35.0);
ERROR:
ORA-01756: quoted string not properly terminated


SQL> insert into sailor23 values(58,'Rusty',10,35.0);

1 row created.

SQL> insert into sailor23 values(74,'Horatio',7,35.0);

1 row created.

SQL> insert into sailor23 values(64,'Horatio',7,35.0);

1 row created.

SQL> delete * from sailor23 where sid=74;
delete * from sailor23 where sid=74
       *
ERROR at line 1:
ORA-00903: invalid table name


SQL> delete from sailor23 where sid=74;

1 row deleted.

SQL> insert into sailor23 values(71,'Zorba',10,16.0);

1 row created.

SQL> insert into sailor23 values(74,'Horatio',9,35.0);

1 row created.

SQL> insert into sailor23 values(85,'Art',3,25.5);

1 row created.

SQL> insert into sailor23 values(95,'Bob',3,63.5);

1 row created.

SQL> create table boat23(bid int primary key not null,bname varchar(50) not null,color var
char(20) not null);

Table created.

SQL> insert into boat23 values(101,'Interlake','blue');

1 row created.

SQL> insert into boat23 values(102,'Interlake','red');

1 row created.

SQL> insert into boat23 values(103,'Clipper','green');

1 row created.

SQL> insert into boat23 values(104,'Marine','red');

1 row created.

SQL> create table reserve23(sid int,bid int,day date,foreign key(sid) references sailor23(
sid),foreign key(bid) references boat23(bid));

Table created.

SQL> insert into reserve23 values(22,101,10-10-98);
insert into reserve23 values(22,101,10-10-98)
                                         *
ERROR at line 1:
ORA-00932: inconsistent datatypes: expected DATE got NUMBER


SQL> insert into reserve23 values(22,101,10-oct-98);
insert into reserve23 values(22,101,10-oct-98)
                                       *
ERROR at line 1:
ORA-00984: column not allowed here


SQL> insert into reserve23 values(22,101,'10-oct-98');

1 row created.

SQL> insert into reserve23 values(22,102,'10-oct-98');

1 row created.

SQL> insert into reserve23 values(22,103,'10-aug-98');

1 row created.

SQL> insert into reserve23 values(22,104,'10-jul-98');

1 row created.

SQL> insert into reserve23 values(31,102,'11-oct-98');

1 row created.

SQL> insert into reserve23 values(31,103,'11-june-98');

1 row created.

SQL> insert into reserve23 values(31,104,'11-dec-98');

1 row created.

SQL> insert into reserve23 values(64,101,'09-may-98');

1 row created.

SQL> insert into reserve23 values(64,102,'09-aug-98');

1 row created.

SQL> insert into reserve23 values(74,103,'09-aug-98');

1 row created.

SQL> select * from sailor23;

       SID SNAME                                        RATING        AGE
---------- ---------------------------------------- ---------- ----------
        22 Dustin                                            7         45
        29 Brutus                                            1         33
        31 Lubber                                            8       55.5
        32 Audy                                              8       25.5
        58 Rusty                                            10         35
        64 Horatio                                           7         35
        71 Zorba                                            10         16
        74 Horatio                                           9         35
        85 Art                                               3       25.5
        95 Bob                                               3       63.5

10 rows selected.

SQL> select * from boat23;

       BID BNAME
---------- --------------------------------------------------
COLOR
--------------------
       101 Interlake
blue

       102 Interlake
red

       103 Clipper
green


       BID BNAME
---------- --------------------------------------------------
COLOR
--------------------
       104 Marine
red


SQL> select * from reserve23;

       SID        BID DAY
---------- ---------- ---------
        22        101 10-OCT-98
        22        102 10-OCT-98
        22        103 10-AUG-98
        22        104 10-JUL-98
        31        102 11-OCT-98
        31        103 11-JUN-98
        31        104 11-DEC-98
        64        101 09-MAY-98
        64        102 09-AUG-98
        74        103 09-AUG-98

10 rows selected.

SQL> select distinct sailor23.sname from sailor23 inner join sailor23.sid=reserve23.sid;
select distinct sailor23.sname from sailor23 inner join sailor23.sid=reserve23.sid
                                                                    *
ERROR at line 1:
ORA-00905: missing keyword


SQL> select distinct sailor23.sname from sailor23 inner join reserve23 on sailor23.sid=res
erve23.sid;

SNAME
----------------------------------------
Lubber
Dustin
Horatio

SQL> select distinct(sname) from sailor23;

SNAME
----------------------------------------
Rusty
Lubber
Brutus
Art
Bob
Audy
Dustin
Zorba
Horatio

9 rows selected.

SQL> select sname from sailor23 where(select * from reserve23 where bid=101) and sailor23.
sid=reserve23.sid;
select sname from sailor23 where(select * from reserve23 where bid=101) and sailor23.sid=r
eserve23.sid
                                                                        *
ERROR at line 1:
ORA-00936: missing expression


SQL> select sname from sailor23 where sid in(select sid from reserve23 where bid=101);

SNAME
----------------------------------------
Dustin
Horatio

SQL> select * from sailor23 where sid in(select sid from reserve23 where bid=101);

       SID SNAME                                        RATING        AGE
---------- ---------------------------------------- ---------- ----------
        22 Dustin                                            7         45
        64 Horatio                                           7         35

SQL> select sname from sailor23 where sid in(select sid from reserve23);

SNAME
----------------------------------------
Dustin
Lubber
Horatio
Horatio

SQL> select sname from sailor23 where sid in(select sid from reserve23 where bid in(select
 bid from boat23 where color='red')) order by age;

SNAME
----------------------------------------
Horatio
Dustin
Lubber

SQL> select sname,age from sailor23 where sid in(select sid from reserve23 where bid in(se
lect bid from boat23 where color='red')) order by age;

SNAME                                           AGE
---------------------------------------- ----------
Horatio                                          35
Dustin                                           45
Lubber                                         55.5

SQL> select distinct s.sid,s.sname from sailor23 s,reserve23 r1,reserve23 r2 where s.sid=r
1.sid and s.sid=r2.sid and r1.day=r2.day and r1.bid<>r2.bid;

       SID SNAME
---------- ----------------------------------------
        22 Dustin

SQL> select sname from sailor23 where sid in(select sid from reserve23 having count(*)>1 g
roup by day,sid);

SNAME
----------------------------------------
Dustin
