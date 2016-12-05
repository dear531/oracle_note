declare
	cursor c_job is
	select g1_id from t11;
	c_row c_job%rowtype;
begin
	for c_row in c_job loop
		dbms_output.put_line(c_row.g1_id);
	end loop;
end;
