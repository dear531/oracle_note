create or replace function get_avg_pay(num_deptno number)
	return number is
	num_pay number;
begin
	select avg(sal) into num_pay from emp where deptno = num_deptno;
	return(round(num_pay));
exception
	when no_data_found then
		dbms_output.put_line('not exist depntno:'||num_deptno||'record');
end;
/

/*
调用过程：获得部门号为10的工资平均值
SQL> r  
  1  declare
  2     sal emp.sal%type;
  3  begin
  4     sal := get_avg_pay(10);
  5     dbms_output.put_line('avg sal: '||sal);
  6* end;
avg sal: 2917

PL/SQL procedure successfully completed.

*/
