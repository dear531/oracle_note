declare
	age int:= 55;
begin
	if age >= 56 then
		dbms_output.put_line('可以退休');
	else
		dbms_output.put_line('不可以');
	end if;
end;
/
