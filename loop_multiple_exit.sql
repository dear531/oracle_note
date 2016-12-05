declare
	n number := -2;
begin
	loop
		if n = 0 then
			dbms_output.put_line('n :'||n||' false exit');
			exit;
		elsif n = 1 then
			dbms_output.put_line('n :'||n||' true exit');
			exit;
		else
			dbms_output.put_line('n :('||n||')nuknow continue');
		end if;
		n := n + 1;
	end loop;
end;
