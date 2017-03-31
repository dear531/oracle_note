create or replace procedure pro_square(
   num in out number,
   flag in boolean) is
   i int := 2;
begin
   if flag then
           num := power(num, i);
   else
           num := sqrt(num);
   end if;
end;

/*

存储过程调用：

SQL> r
  1  declare
  2     var_number number;
  3     var_temp number;
  4     boo_flag boolean;
  5  begin
  6     var_temp := 3;
  7     var_number := var_temp;
  8     boo_flag := true;
  9     pro_square(var_number, boo_flag);
 10     if boo_flag then
 11             dbms_output.put_line(var_temp||'平方'||var_number);
 12     else
 13             dbms_output.put_line(var_temp||'平方根'||var_number);
 14     end if;
 15* end;
3平方9

PL/SQL procedure successfully completed.

*/
