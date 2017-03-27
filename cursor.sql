/* scott用户模式 */
declare
	cursor c_job
	is
	select empno, ename, job, sal
	from emp
	where job = 'MANAGER';
	c_row c_job%rowtype;
begin
	for c_row in c_job loop
		dbms_output.put_line(c_row.empno||'-'||c_row.ename||'-'||c_row.job||'-'||c_row.sal);
	end loop;
end;
/
