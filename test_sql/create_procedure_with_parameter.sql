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
