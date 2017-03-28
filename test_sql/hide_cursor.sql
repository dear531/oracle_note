begin
	update emp
		set sal = sal * (1+0.2)
		where job = 'SALESMAN';
	if sql%notfound then
		dbms_output.put_line('没有雇需要上工资');
	else
		dbms_output.put_line('有'||sql%rowcount||'工资上调20％');
	end if;
end;
/
