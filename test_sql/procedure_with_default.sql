create or replace procedure insert_dept (
	num_deptno in number,
	var_dname in varchar2 default '综合部',
	var_loc in varchar2 default '北京') is
begin
	insert into dept values(num_deptno, var_dname, var_loc);
end;
/
/*
在数据库管理员模式下，执行查看数据库源码表dba_source
查看行字段和文本字段，以查找存储名称为条件
可以查看数据库存储过程
SQL> r  
  1* select line,text from dba_source where name='INSERT_DEPT'

      LINE TEXT
---------- --------------------------------------------------------------------------------
         1 procedure insert_dept (
         2      num_deptno in number,
         3      var_dname in varchar2 default '综合部',
         4      var_loc in varchar2 default '北京') is
         5 begin
         6      insert into dept values(num_deptno, var_dname, var_loc);
         7 end;

7 rows selected.
*/

/*
执行调用过程
SQL> get tmp2
  1  declare
  2     var_dname dept.DNAME%type;
  3     var_loc dept.LOC%type;
  4  begin
  5     var_dname := 12;
  6     insert_dept(60, var_dname=>var_dname);
  7     commit;
  8     select loc into var_loc from dept where deptno = 60;
  9     dbms_output.put_line('loc'||var_loc);
 10* end;
SQL> /
loc北京

PL/SQL procedure successfully completed.

*/
