declare
str varchar2(1) := null;
begin   
	if str is null then    
	   dbms_output.put_line('is null');
	end if;
	if '' is null then
		dbms_output.put_line( ''''' is null');
	end if;
end;
