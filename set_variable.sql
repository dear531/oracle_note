variable x varchar2(10);
begin  
	:x := 'hello';
end;
/
print :x;
