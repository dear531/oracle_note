begin
	if '' is NULL then
		dbms_output.put_line('equal');
	else
		dbms_output.put_line('not equal');
	end if;
end;
/
