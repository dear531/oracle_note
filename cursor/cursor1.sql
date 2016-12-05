SET SERVEROUTPUT ON 
declare
  cursor c_job is
  select G1_ID, G1_NAME, G2_ID, G2_NAME from t1 where g1_id = '001';
  c_row c_job%rowtype;
begin
  for c_row in c_job loop
    dbms_output.put_line(c_row.G1_ID||'-'||c_row.G1_NAME||'-'||c_row.G2_ID||'-'||c_row.G2_NAME);
  end loop;
end; 
