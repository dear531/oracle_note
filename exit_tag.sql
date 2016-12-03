begin
	<<outer_loop>>
	loop
		loop
			dbms_output.put_line('here loop');
			--exit outer_loop;
			exit;
		end loop;
		dbms_output.put_line('here after loop');
		exit;
	end loop;
end;
/
