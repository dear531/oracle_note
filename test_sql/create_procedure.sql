create or replace procedure pro_insertDept is
begin
	insert into dept values(77, '拓展部', 'JILN');
	commit;
	dbms_output.put_line('插入记录成功');
end pro_insertDept;
