declare
	flag1 varchar2(2) := '';
	flag2 char(2) := '';
begin
	dbms_output.put_line('flag1 varchar2:');
	if flag1 is null then
		dbms_output.put_line('''''');
	elsif flag1 = '  ' then
		dbms_output.put_line(''' | ''');
	else
		dbms_output.put_line('both is not');
	end if;
	dbms_output.put_line('flag2 char:');
	if flag2 is null then
		dbms_output.put_line('''''');
	elsif flag2 = '  ' then
		dbms_output.put_line(''' | ''');
	else
		dbms_output.put_line('both is not');
	end if;
end;
