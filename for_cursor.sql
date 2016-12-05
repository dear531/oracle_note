declare
begin
	for c_row in (select * from t1)
	loop
		dbms_output.put_line('g1_id:'||c_row.g1_id||', g1_name:'||c_row.g1_name);
	end loop;
end;
