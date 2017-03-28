declare
	season int := 3;
	aboutinfo varchar2(50);
begin
	case season
	when 1 then
		aboutinfo := season||'季度123';
	when 2 then
		aboutinfo := season||'季度456';
	when 3 then
		aboutinfo := season||'季度789';
	when 4 then
		aboutinfo := season||'10,11,12';
	else
		aboutinfo := season||'非法';
	end case;
dbms_output.put_line(aboutinfo);
end;


/
