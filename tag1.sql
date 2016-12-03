<<outerblock>>
declare
	counter INTEGER := 0;
begin
	declare
		counter integer := 1;
	begin
		if counter = outerblock.counter then
			dbms_output.put_line('counter: ('||counter||') equals outerblock.counter : ('||outerblock.counter||')');
		else
			dbms_output.put_line('counter: ('||counter||') don''t equal outerblock.counter : ('||outerblock.counter||')');
		end if;
	end;
end;
