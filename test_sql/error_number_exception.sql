/* scott用户模式 */
declare
	primary_iterant exception;
	pragma exception_init(primary_iterant, -00001);
begin
	insert into dept values(10,'ranjian', 'shenzhen');
	exception
		when primary_iterant then
			dbms_output.put_line('主键不允许重复');
end;
/
