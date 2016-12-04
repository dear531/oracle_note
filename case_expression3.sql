declare
	n number(2) := 5;
	function quzheng(n in number) return number is
	begin
		return case
			when n >= 0 and n < 10 then 1
			when n >= 10 and n < 100 then 10
		end * 10;
	end;
begin
	dbms_output.put_line('n :'||n||' via quzheng:'||quzheng(n));
end;
