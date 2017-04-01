/* 创建记录用户scott数据库定义语言ddl的数据库操作的表 */
SQL> create table ddl_oper_log
  2  (
  3     db_obj_name varchar2(20),
  4     db_obj_type varchar2(20),
  5     oper_action varchar2(20),
  6     oper_user varchar2(20),
  7     oper_date date
  8  );

Table created.

/* 创建用户事件触发 */
SQL> create or replace trigger tri_ddl_oper
  2     before create or alter or drop
  3     on scott.schema
  4  begin 
  5     insert into ddl_oper_log values(
  6             ora_dict_obj_name,
  7             ora_dict_obj_type,
  8             ora_sysevent,
  9             ora_login_user,
 10             sysdate);
 11  end;
 12  /

Trigger created.

/* 执行用户事件：创建表 */
SQL> create table tb_test(id number);

Table created.

/* 执行用户事件：修改表 */
SQL> alter table tb_test add(name varchar2(20));

Table altered.
/* 执行用户事件：创建视图 */
SQL> create view view_test as   
  2  select empno, ename from emp;

View created.

/* 执行用户事件：删除视图 */
SQL> drop view view_test;

View dropped.

/* 执行用户事件：删除表 */
SQL> drop table tb_test;

Table dropped.

/* 查看由触发记录的用户事件表内容，用户事件均被记录 */
SQL> r 
  1* select * from ddl_oper_log

DB_OBJ_NAME          DB_OBJ_TYPE          OPER_ACTION          OPER_USER            OPER_DATE
-------------------- -------------------- -------------------- -------------------- ---------------
TB_TEST              TABLE                CREATE               SCOTT                01-APR-17
TB_TEST              TABLE                ALTER                SCOTT                01-APR-17
VIEW_TEST            VIEW                 CREATE               SCOTT                01-APR-17
VIEW_TEST            VIEW                 DROP                 SCOTT                01-APR-17
TB_TEST              TABLE                DROP                 SCOTT                01-APR-17


/* 再次执行其他非用户事件的表级事件 */
SQL> select * from emp;

  EMPNO ENAME      JOB                         MGR HIREDATE               SAL       COMM DEPTNO
------- ---------- -------------------- ---------- --------------- ---------- ---------- ------
   7369 SMITH      CLERK                      7902 17-DEC-80              800                20
   7499 ALLEN      SALESMAN                   7698 20-FEB-81             2304        300     30
   7521 WARD       SALESMAN                   7698 22-FEB-81             1800        500     30
   7566 JONES      MANAGER                    7839 02-APR-81             2975                20
   7654 MARTIN     SALESMAN                   7698 28-SEP-81             1800       1400     30
   7698 BLAKE      MANAGER                    7839 01-MAY-81             2850                30
   7782 CLARK      MANAGER                    7839 09-JUN-81             2450                10
   7788 SCOTT      ANALYST                    7566 19-APR-87             3000                20
   7839 KING       PRESIDENT                       17-NOV-81             5000                10
   7844 TURNER     SALESMAN                   7698 08-SEP-81             2160          0     30
   7876 ADAMS      CLERK                      7788 23-MAY-87             1100                20

  EMPNO ENAME      JOB                         MGR HIREDATE               SAL       COMM DEPTNO
------- ---------- -------------------- ---------- --------------- ---------- ---------- ------
   7900 JAMES      CLERK                      7698 03-DEC-81              950                30
   7902 FORD       ANALYST                    7566 03-DEC-81             3000                20
   7934 MILLER     CLERK                      7782 23-JAN-82             1300                10
   8888 东方       CASHIER                         01-APR-17                                 10

15 rows selected.

/* 未被记录到用户事件表中 */
SQL>  select * from ddl_oper_log;

DB_OBJ_NAME          DB_OBJ_TYPE          OPER_ACTION          OPER_USER            OPER_DATE
-------------------- -------------------- -------------------- -------------------- ---------------
TB_TEST              TABLE                CREATE               SCOTT                01-APR-17
TB_TEST              TABLE                ALTER                SCOTT                01-APR-17
VIEW_TEST            VIEW                 CREATE               SCOTT                01-APR-17
VIEW_TEST            VIEW                 DROP                 SCOTT                01-APR-17
TB_TEST              TABLE                DROP                 SCOTT                01-APR-17

