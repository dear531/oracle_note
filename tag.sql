<<outerblock>>
declare
   counter integer := 0;
begin
   declare
           counter integer := 1;
   begin
           if counter = outerblock.counter
           then
                   dbms_output.put_line('is equal');
           else
                   dbms_output.put_line('isn''t equal');
           end if;
	   dbms_output.put_line('counter :' || counter);
	   dbms_output.put_line('outerblock.counter :'
			   || outerblock.counter);
   end;
end;
