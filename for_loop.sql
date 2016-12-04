declare
	n number;
begin
	for n in 0..10
	loop
		dbms_output.put_line('n : '||n);
	end loop;
end;
