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

