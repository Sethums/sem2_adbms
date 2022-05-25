1 row created.

SQL> insert into tbl_employee23 values(6,'Roshni','Jadhav','Finance','Banglore',20000);

1 row created.

SQL> insert into tbl_employee23 values(7,'Sandhya','Jain','Finance','Banglore',20000);

1 row created.

SQL> select * from tbl_employee23;

        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         1 Harshad
Kuwar
Marketing
Pune                                                    10000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         2 Anurag
Rajput
IT
Mumbai                                                  20000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         3 Chaitali
Tarle
IT
Chennai                                                 30000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         4 Pranjal
Patil
IT
Chennai                                                 25000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         5 Suraj
Tripathi
Marketing
Pune                                                    15000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         6 Roshni
Jadhav
Finance
Banglore                                                20000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         7 Sandhya
Jain
Finance
Banglore                                                20000


7 rows selected.

SQL> select * from tbl_employee23 where department='IT' and location='Chennai';

        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         3 Chaitali
Tarle
IT
Chennai                                                 30000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         4 Pranjal
Patil
IT
Chennai                                                 25000


SQL> select * from tbl_employee23 where department='IT' or location='Chennai';

        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         2 Anurag
Rajput
IT
Mumbai                                                  20000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         3 Chaitali
Tarle
IT
Chennai                                                 30000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         4 Pranjal
Patil
IT
Chennai                                                 25000


SQL> select firstname as emp fn,location as address from tbl_employee23;
select firstname as emp fn,location as address from tbl_employee23
                        *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select firstname,location from tbl_employee23 as emp fn,address;
select firstname,location from tbl_employee23 as emp fn,address
                                              *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> select firstname as emp_fn,location as address from tbl_employee23;

EMP_FN
--------------------------------------------------
ADDRESS
--------------------------------------------------
Harshad
Pune

Anurag
Mumbai

Chaitali
Chennai


EMP_FN
--------------------------------------------------
ADDRESS
--------------------------------------------------
Pranjal
Chennai

Suraj
Pune

Roshni
Banglore


EMP_FN
--------------------------------------------------
ADDRESS
--------------------------------------------------
Sandhya
Banglore


7 rows selected.

SQL> select * from tbl_employee23 where firstname like 'S%';

        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         5 Suraj
Tripathi
Marketing
Pune                                                    15000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         7 Sandhya
Jain
Finance
Banglore                                                20000


SQL> select sum(salary) as salarysum from tbl_employee23 group by location;

 SALARYSUM
----------
     20000
     25000
     55000
     40000

SQL> select sum(salary) as salarysum,location from tbl_employee23 group by location;

 SALARYSUM LOCATION
---------- --------------------------------------------------
     20000 Mumbai
     25000 Pune
     55000 Chennai
     40000 Banglore

SQL> select location from tbl_employee23 group by location having sum(salary)>10000;

LOCATION
--------------------------------------------------
Mumbai
Pune
Chennai
Banglore

SQL> select * from tbl_employee23 order by firstname;

        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         2 Anurag
Rajput
IT
Mumbai                                                  20000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         3 Chaitali
Tarle
IT
Chennai                                                 30000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         1 Harshad
Kuwar
Marketing
Pune                                                    10000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         4 Pranjal
Patil
IT
Chennai                                                 25000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         6 Roshni
Jadhav
Finance
Banglore                                                20000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         7 Sandhya
Jain
Finance
Banglore                                                20000


        ID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
DEPARTMENT
--------------------------------------------------
LOCATION                                               SALARY
-------------------------------------------------- ----------
         5 Suraj
Tripathi
Marketing
Pune                                                    15000


7 rows selected.

SQL> ed tblemployee