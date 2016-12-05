declare
	cursor c_job is select * from t1;
	c_row c_job%rowtype;
begin
	open c_job;
	loop
		fetch c_job into c_row;
		exit when c_job%notfound;
		dbms_output.put_line('g1_id :'||c_row.g1_id||', g1_name'||c_row.g1_name);
	end loop;
	close c_job;
end;
