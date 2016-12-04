declare
	n number(2) := '';
	--n number(2) := 1;
begin
	case true
	when n >= 0 and n < 1
	then
		dbms_output.put_line('n >= 0 and n < 1');
	when n >= 1 and n < 2
	then
		dbms_output.put_line('n >= 1 and n < 2');
	else
		dbms_output.put_line('doesn''t exist range');
	end case;
end;
