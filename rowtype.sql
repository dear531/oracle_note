/* scott用户模式 */
declare
	rowVar_emp emp%rowtype;
begin
	select * into rowVar_emp
	from emp
	where empno = 7369;
	dbms_output.put_line('雇员'||rowVar_emp.ename||'的编号'||rowVar_emp.empno||'，职务是'||rowVar_emp.job);
	end;
/
