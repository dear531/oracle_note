/* scott用户模式 */
declare
	var_ename emp.ename%type;
	var_job emp.job%type;
begin
	select ename, job
	into var_ename, var_job
	from emp
	where empno = 7369;
	dbms_output.put_line(var_ename||'的职务是'||var_job);
	end;
/
