declare
	date1 varchar2(24);
	i number;
begin
	for i in 0..10
	loop
		select to_char(sysdate,'yyyy-MM-dd HH24:mi:ss') into date1  from dual;
		dbms_output.put_line('date :'||date1);
		dbms_lock.sleep(1);
	end loop;
end;
