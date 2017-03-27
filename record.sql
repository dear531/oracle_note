declare
	type emp_type is record
	(
		var_ename emp.ename%type,
		var_job emp.job%type,
		var_sal emp.sal%type
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
