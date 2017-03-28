declare
	i int := 0;
begin
	for i in reverse 1 .. 100 loop
		dbms_output.put_line('i:'||i);
	end loop;
end;
/
