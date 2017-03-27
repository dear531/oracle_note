declare
	type emp_type is record
	(
		var_ename varchar2(20),
		var_job varchar2(20),
		var_sal number
	);
	empinfo emp_type;
begin
	select ename, job, sal
	into empinfo
	from emp
	where empno = 7369;
	dbms_output.put_line('雇员'||empinfo.var_ename||'的职务是'||empinfo.var_job||'、工资是'||empinfo.var_sal);
end;
/
