declare
counter integer := 0;
begin   
   if counter = 0 then
           dbms_output.put_line('0');
   elsif counter = 1 then
           dbms_output.put_line('1');
   else  
           dbms_output.put_line('isn''t anything');
   end if;
end;
