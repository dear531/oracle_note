/* system用户下给予授权，允许创建视图 */
SQL> grant create view to scott;

Grant succeeded.

/* scott用户模式创建视图 */
SQL> create view view_emp_dept
  2     as select empno, ename, dept.deptno, dname, job, hiredate
  3             from emp, dept
  4             where emp.deptno = dept.deptno;

View created.

/* 在未创建触发时向视图中插入数据，发生错误 */
SQL> insert into view_emp_dept(empno, ename, deptno, dname, job, hiredate)
  2     values (8888, '东方', 10, 'ACCOUNING', 'CASHIER', sysdate);
insert into view_emp_dept(empno, ename, deptno, dname, job, hiredate)
                                        *
ERROR at line 1:
ORA-01776: cannot modify more than one base table through a join view

/* 给视图创建插入替换命令触发 */
SQL> r
  1  create or replace trigger tri_insert_view
  2     instead of insert
  3             on view_emp_dept
  4             for each row
  5  declare
  6     row_dept dept%rowtype;
  7  begin
  8     select * into row_dept from dept where deptno = :new.deptno;
  9     if sql%notfound then
 10             insert into dept(deptno, dname)
 11             values(:new.deptno, :new.dname);
 12     end if;
 13     insert into emp(empno, ename, deptno, job, hiredate)
 14             values(:new.empno, :new.ename,
 15             :new.deptno, :new.job, :new.hiredate);
 16* end tri_insert_view;

Trigger created.

/* 在未插入数据之前，查询要插入的内容，为空 */
SQL> select * from view_emp_dept where empno = 8888;

no rows selected

/* 插入数据，成功 */
SQL> insert into view_emp_dept(empno, ename, deptno, dname, job, hiredate)
  2  values (8888, '东方', 10, 'ACCOUNING', 'CASHIER', sysdate);

1 row created.

/* 查询插入的内容，已经在视图中了，验证了替换触发执行了 */
SQL> select * from view_emp_dept where empno = 8888;

  EMPNO ENAME      DEPTNO DNAME                JOB                  HIREDATE
------- ---------- ------ -------------------- -------------------- ---------------
   8888 东方           10 ACCOUNTING           CASHIER              01-APR-17


