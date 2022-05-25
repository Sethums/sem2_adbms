SQL> CREATE TABLE tbl_emp2(emp_id INT NOT NULL,emp_name VARCHAR(50) NOT NULL,dept_id IN
OT NULL,salary VARCHAR(50) NOT NULL);

Table created.

SQL> CREATE TABLE tbl_dept1(dept_id INT NOT NULL,dept_name VARCHAR(50) NOT NULL,hod VAR
R(50) NOT NULL);

Table created.

SQL> ALTER TABLE tbl_emp2 MODIFY(emp_id PRIMARY KEY);

Table altered.

SQL> ALTER TABLE tbl_dept1 MODIFY(dept_id PRIMARY KEY);

Table altered.

SQL> ALTER TABLE tbl_emp2 ADD FOREIGN KEY(dept_id) REFERENCES tbl_dept1(dept_id);

Table altered.

SQL> INSERT INTO tbl_dept1 VALUES(101,'Computer','Kurian');

1 row created.

SQL> INSERT INTO tbl_dept1 VALUES(102,'Computer','Abraham');

1 row created.

SQL> INSERT INTO tbl_dept1 VALUES(103,'History','John');

1 row created.

SQL> DELETE FROM tbl_dept1 WHERE dept_id=102;

1 row deleted.

SQL> SELECT * FROM tbl_dept1;

   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
HOD
--------------------------------------------------
       101 Computer
Kurian

       103 History
John


SQL> INSERT INTO tbl_dept1 VALUES(104,'English','Meera');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(1,'Saritha',104,'20000');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(2,'Mini',104,'30000');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(3,'Jeeva',101,'40000');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(4,'Chinju',103,'50000');

1 row created.

SQL> SELECT * FROM tbl_emp2;

    EMP_ID EMP_NAME                                              DEPT_ID
---------- -------------------------------------------------- ----------
SALARY
--------------------------------------------------
         1 Saritha                                                   104
20000

         2 Mini                                                      104
30000

         3 Jeeva                                                     101
40000


    EMP_ID EMP_NAME                                              DEPT_ID
---------- -------------------------------------------------- ----------
SALARY
--------------------------------------------------
         4 Chinju                                                    103
50000


SQL> SELECT * FROM tbl_dept1;

   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
HOD
--------------------------------------------------
       101 Computer
Kurian

       103 History
John

       104 English
Meera


SQL> UPDATE tbl_emp2 SET emp_name='Meenu' WHERE emp_id=1;

1 row updated.

SQL> SELECT * FROM tbl_emp2;

    EMP_ID EMP_NAME                                              DEPT_ID
---------- -------------------------------------------------- ----------
SALARY
--------------------------------------------------
         1 Meenu                                                     104
20000

         2 Mini                                                      104
30000

         3 Jeeva                                                     101
40000


    EMP_ID EMP_NAME                                              DEPT_ID
---------- -------------------------------------------------- ----------
SALARY
--------------------------------------------------
         4 Chinju                                                    103
50000





















































































































































































SQL> CREATE TABLE tbl_emp2(emp_id INT NOT NULL,emp_name VARCHAR(50) NOT NULL,dept_id IN
OT NULL,salary VARCHAR(50) NOT NULL);

Table created.

SQL> CREATE TABLE tbl_dept1(dept_id INT NOT NULL,dept_name VARCHAR(50) NOT NULL,hod VAR
R(50) NOT NULL);

Table created.

SQL> ALTER TABLE tbl_emp2 MODIFY(emp_id PRIMARY KEY);

Table altered.

SQL> ALTER TABLE tbl_dept1 MODIFY(dept_id PRIMARY KEY);

Table altered.

SQL> ALTER TABLE tbl_emp2 ADD FOREIGN KEY(dept_id) REFERENCES tbl_dept1(dept_id);

Table altered.

SQL> INSERT INTO tbl_dept1 VALUES(101,'Computer','Kurian');

1 row created.

SQL> INSERT INTO tbl_dept1 VALUES(102,'Computer','Abraham');

1 row created.

SQL> INSERT INTO tbl_dept1 VALUES(103,'History','John');

1 row created.

SQL> DELETE FROM tbl_dept1 WHERE dept_id=102;

1 row deleted.

SQL> SELECT * FROM tbl_dept1;

   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
HOD
--------------------------------------------------
       101 Computer
Kurian

       103 History
John


SQL> INSERT INTO tbl_dept1 VALUES(104,'English','Meera');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(1,'Saritha',104,'20000');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(2,'Mini',104,'30000');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(3,'Jeeva',101,'40000');

1 row created.

SQL> INSERT INTO tbl_emp2 VALUES(4,'Chinju',103,'50000');

1 row created.

SQL> SELECT * FROM tbl_emp2;

    EMP_ID EMP_NAME                                              DEPT_ID
---------- -------------------------------------------------- ----------
SALARY
--------------------------------------------------
         1 Saritha                                                   104
20000

         2 Mini                                                      104
30000

         3 Jeeva                                                     101
40000


    EMP_ID EMP_NAME                                              DEPT_ID
---------- -------------------------------------------------- ----------
SALARY
--------------------------------------------------
         4 Chinju                                                    103
50000


SQL> SELECT * FROM tbl_dept1;

   DEPT_ID DEPT_NAME
---------- --------------------------------------------------
HOD
--------------------------------------------------
       101 Computer
Kurian

       103 History
John

       104 English
Meera


SQL> f



















































































































































































