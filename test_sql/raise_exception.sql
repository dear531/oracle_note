declare
	null_exception exception;
	dept_row dept%rowtype;
begin
	dept_row.deptno := 66;
	dept_row.dname := '公关部';
	insert into dept
		values(dept_row.deptno, dept_row.dname, dept_row.loc);
	if dept_row.loc is null then
		raise null_exception;
	end if;
exception
	when null_exception then
		dbms_output.put_line('loc字段不许为空');
	rollback;
end;
/
