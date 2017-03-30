create or replace procedure select_dept(num_deptno in number,
   var_dname out dept.dname%type,
   var_loc out dept.loc%type) is
begin
   select dname , loc   
           into var_dname, var_loc
           from dept
           where deptno = num_deptno;
   exception   
           when no_data_found then
                   dbms_output.put_line('部门编号不存在');
end select_dept;
/*
调用方法及结果输出：
SQL> l  
  1  declare
  2     dname varchar2(14);
  3     loc varchar2(13);
  4  begin
  5     select_dept(81, dname, loc);
  6     if sql%found then
  7             dbms_output.put_line('dname:'||dname||',loc:'||loc);
  8     end if;
  9* end;
SQL> /
dname:81name,loc:81loc

PL/SQL procedure successfully completed.

*/
