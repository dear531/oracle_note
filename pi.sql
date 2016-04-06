declare
"PI" constant number := 3.1415;
"pi" constant number := 3.14;
"2 pi" constant number := 2 * "pi";
begin
   dbms_output.put_line('"pi": ' || "pi");
   dbms_output.put_line('"PI": ' || "PI");
   dbms_output.put_line('pi: ' || pi);
   dbms_output.put_line('2 pi:' || "2 pi");
end;
