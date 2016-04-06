declare
	l_right_now varchar2(1);
begin
	l_right_now := sysdate;
	dbms_output.put_line(l_right_now);
exception   
	when value_error
then
	dbms_output.put_line('I bet l_right_now is too small for the default date format');
end;
