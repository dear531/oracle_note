declare
	cursor c_job is select * from t1;
	c_row c_job%rowtype;
begin
	for c_row in c_job
	loop
		dbms_output.put_line('g1_id:'||c_row.g1_id||',g1_name:'||c_row.g1_name);
	end loop;
end;
