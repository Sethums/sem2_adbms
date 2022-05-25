SQL> connect system
Enter password:
Connected.





SQL> create table tbl_st1(st_id INT NOT NULL,st_name VARCHAR(20) NOT NULL,PRIMARY KEY(st_i
d));

Table created.

SQL> desc tbl_st1;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ST_ID                                     NOT NULL NUMBER(38)
 ST_NAME                                   NOT NULL VARCHAR2(20)


                                *



SQL> create user sethu123 identified by 123;

User created.




SQL> grant select,update,insert on tbl_st1 to sethu123;

Grant succeeded.



SQL> connect system
Enter password:
Connected.
SQL> grant create session to sethu123;

Grant succeeded.

SQL> connect sethu123
Enter password:
Connected.




SQL> Insert into system.tbl_st1 VALUES(2,'Anu');

1 row created.

SQL> Insert into system.tbl_st1 VALUES(3,'Amal');

1 row created.

SQL> SELECT * FROM system.tbl_st1;

     ST_ID ST_NAME
---------- --------------------
         2 Anu
         3 Amal



SQL> UPDATE system.tbl_st1 SET st_name='Achu' where st_id=2;

1 row updated.

SQL> SELECT * FROM system.tbl_st1;

     ST_ID ST_NAME
---------- --------------------
         2 Achu
         3 Amal

SQL> DELETE FROM system.tbl_st1 where st_id=2;
DELETE FROM system.tbl_st1 where st_id=2
                   *
ERROR at line 1:
ORA-01031: insufficient privileges


SQL> connect system
Enter password:
Connected.
SQL> revoke select,update,insert on tbl_st1 from sethu123;

Revoke succeeded.

SQL> connect sethu123
Enter password:
Connected.
SQL> INSERT INTO system.tbl_st1 VALUES(4,'Akhila');
INSERT INTO system.tbl_st1 VALUES(4,'Akhila')
                   *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from system.tbl_st1;
select * from system.tbl_st1
                     *
ERROR at line 1:
ORA-00942: table or view does not exist






































