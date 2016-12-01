/* first implement wordcount.sql  */
set serveroutput on;
execute dbms_output.put_line('there are '||wordcount(chr(9))||' words in tab');
