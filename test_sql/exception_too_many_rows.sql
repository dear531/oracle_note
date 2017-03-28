declare
	var_empno number;
	var_ename varchar2(50);
begin
	select empno, ename into var_empno, var_ename
		from emp
		where deptno = 10;
	if sql%found then
		dbms_output.put_line('雇员编：'||var_empno||';雇员名称：'||var_ename);
	end if;
exception
	when too_many_rows then
		dbms_output.put_line('记录超过一行');
	when no_data_found then
		dbms_output.put_line('无数据记录');
end;
/
