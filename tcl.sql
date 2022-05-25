SQL> connect system
Enter password:
Connected.
SQL> create table sample(id int not null,name varchar(20) not null,primary key(id));

Table created.

SQL> insert into sample values(1,'Anu');

1 row created.

SQL> insert into sample values(2,'Akhil');

1 row created.

SQL> select * from sample;

        ID NAME
---------- --------------------
         1 Anu
         2 Akhil

SQL> commit;

Commit complete.

SQL> savepoint save_point;

Savepoint created.

SQL> select * from sample;

        ID NAME
---------- --------------------
         1 Anu
         2 Akhil

SQL> rollback to save_point;

Rollback complete.

SQL> select * from sample;

        ID NAME
---------- --------------------
         1 Anu
         2 Akhil

SQL> insert into sample values(3,'Amal');

1 row created.

SQL> savepoint save_point;

Savepoint created.

SQL> insert into sample values(4,'Aju');

1 row created.

SQL> rollback to save_point;

Rollback complete.

SQL> select * from sample;

        ID NAME
---------- --------------------
         1 Anu
         2 Akhil
         3 Amal

