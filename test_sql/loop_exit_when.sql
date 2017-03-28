declare
	sum_i int := 0;
	i int := 0;
begin
	loop
		i := i + 1;
		sum_i := sum_i + i;
	exit when i = 100;
end loop;
dbms_output.put_line('1 to 100 sum is '||sum_i);
end;

/
