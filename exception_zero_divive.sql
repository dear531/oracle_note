declare
a int:= 100;
b int:= 200;
c number;
begin
	c:= (a+b)/(a-b);
	dbms_output.put_line('('||a||'+'||b||')/('||a||'-'||b||') = '||c);
exception
	when zero_divide then
	dbms_output.put_line('除数不许为零！');
end;
/
