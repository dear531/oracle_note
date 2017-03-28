declare
	var_ename varchar2(50);
	var_job varchar2(50);
	cursor cur_emp
	is select ename, job
		from emp
		where empno = 7499;
begin
	open cur_emp;
	fetch cur_emp into var_ename, var_job;
	if cur_emp%found then
		dbms_output.put_line('编号是749员工名称'||var_ename||'，职务是'||var_job);
	else
		dbms_output.put_line('无数据记录');
	end if;
end;
/
