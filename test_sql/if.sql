declare
	var_name1 varchar2(50);
	var_name2 varchar2(50);
begin
	var_name1 := 'east';
	var_name2 := 'xiaoke';
	if length(var_name1) < length(var_name2) then
		dbms_output.put_line('字符串"'||var_name1||'" < 字符串"'||var_name2||'"');
	end if;
end;
/
