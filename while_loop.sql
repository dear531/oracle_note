declare
	n number := 0;
begin
	while n < 10
	loop
		dbms_output.put_line('n : '||n);
		n := n + 1;
	end loop;
end;
