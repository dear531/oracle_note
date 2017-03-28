begin
	for emp_record in (select empno, ename, sal from emp where job = 'SALESMAN')
	loop
		dbms_output.put('雇员编号:'||emp_record.empno);
		dbms_output.put('；雇员名称：'||emp_record.ename);
		dbms_output.put_line('：雇员工资:'||emp_record.sal);
	end loop;
end;
/
