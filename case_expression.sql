declare
	boolean_true boolean := true;
	boolean_false boolean := false;
	boolean_null boolean;
	function boolean_to_varchar2 (flag in boolean) return varchar2 is
	begin
		return
			case flag
				when true then 'Trun'
				when false then 'False'
				else 'Null'
			end;
	end;
begin
	dbms_output.put_line('boolean_true :'||boolean_to_varchar2(boolean_true));
	dbms_output.put_line('boolean_false :' ||boolean_to_varchar2(boolean_false));
	dbms_output.put_line('boolean_null :' ||boolean_to_varchar2(boolean_null));
end;
