declare
	n number := 0;
begin
	loop
		dbms_output.put_line('n :'||n);
		exit when n > 10;
		n := n + 1;
	end loop;
end;
