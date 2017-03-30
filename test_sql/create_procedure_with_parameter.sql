create or replace procedure insert_dept(
   num_deptno in number,
   var_ename in varchar2,
   var_loc in varchar2) is
begin
   insert into dept 
   values(num_deptno, var_ename, var_loc);
commit;
end insert_dept;
/
/*

1. 指定参数名称调用存储过程：
SQL> execute insert_dept(var_ename=>'采购部', var_loc=>'程度', num_deptno=>15);

PL/SQL procedure successfully completed.

2. 按位置输入指定参数：
SQL> execute insert_dept(79, '79', '79');

PL/SQL procedure successfully completed.

3. 混合性参数输入调用：(位置＋指定参数名）
SQL> execute insert_dept(81, var_ename=>'81name', var_loc=>'81loc');

PL/SQL procedure successfully completed.

4. describe查看存储过程的信息：
SQL> desc insert_dept
PROCEDURE insert_dept
 Argument Name                  Type                    In/Out Default?
 ------------------------------ ----------------------- ------ --------
 NUM_DEPTNO                     NUMBER                  IN
 VAR_ENAME                      VARCHAR2                IN
 VAR_LOC                        VARCHAR2                IN

*/

/*
通过execute命令执行及其所需变量的定义方法：

SQL> variable var_dname varchar2(50);
SQL> variable var_loc varchar2(50);
SQL> execute select_dept(81, :var_dname, :var_loc);

PL/SQL procedure successfully completed.

SQL> print var_dname var_loc;

VAR_DNAME
--------------------------------------------------------------------------------
81name


VAR_LOC
--------------------------------------------------------------------------------
81loc

SQL> select :var_dname, :var_loc 
  2  from dual;

:VAR_DNAME
--------------------------------------------------------------------------------
:VAR_LOC
--------------------------------------------------------------------------------
81name
81loc

*/
