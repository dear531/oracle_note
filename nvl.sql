declare
	n varchar2(2) := '';
begin
	if nvl(n, '0') = '0' then
		dbms_output.put_line('n is null and be chenged ''0'' by function nvl');
	end if;
	if nvl(n, '1') = '1' then
		dbms_output.put_line('n is null and be chenged ''1'' by function nvl');
	end if;
end;
