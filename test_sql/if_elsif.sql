declare
	month int:= 13;
begin
	if month >= 1 and month <= 3 then
		dbms_output.put_line('春天');
	elsif month >= 4 and month <= 6 then
		dbms_output.put_line('夏天');
	elsif month >= 7 and month < 9 then
		dbms_output.put_line('秋天');
	elsif month >= 10 and month < 12 then
		dbms_output.put_line('冬天');
	else
		dbms_output.put_line('月份不合法');
	end if;
end;
/
