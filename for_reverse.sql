declare
	--i number;
begin
	for i in reverse 1..10
	loop
		dbms_output.put_line('i : '||i);
	end loop;
end;
