declare
	salary integer := 3;
begin
	case true
	when salary >= 1 and salary <= 2
	then
		dbms_output.put_line('[1,2]');
	when salary > 2 and salary <= 3
	then
		dbms_output.put_line('(2,3]');
	when salary > 3 and salary <= 4
	then
		dbms_output.put_line('(3,4]');
	end case;
end;
