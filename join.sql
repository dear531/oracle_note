/*
 select preson

PL/SQL procedure successfully completed.


      ID_P LAST_NAME  FIRST_NAME ADDRESS    CITY
---------- ---------- ---------- ---------- ----------
         1 a          a          a          a
         2 b          b          b          b
         1 b          b          b          c

select orders

PL/SQL procedure successfully completed.


      ID_O       ID_P    ORDERNO
---------- ---------- ----------
         1          1        101
         3          3        103
         4          1        104
 */
execute dbms_output.put_line('select preson');
select * from preson;

execute dbms_output.put_line('select orders');
select * from orders;

execute dbms_output.put_line('exturn');
select preson.id_p,preson.last_name,orders.orderno 
from preson, orders
where preson.id_p = orders.id_p;

execute dbms_output.put_line('inner join');
select preson.id_p, preson.last_name, orders.orderno
from preson
inner join orders
on preson.id_p = orders.id_p;

execute dbms_output.put_line('join');
select preson.id_p, preson.last_name, orders.orderno
from preson
join orders
on preson.id_p = orders.id_p;
select preson.id_p, preson.orderno, orders.orderno

execute dbms_output.put_line('left join');
select preson.id_p, preson.last_name, orders.orderno
from preson
left join orders
on preson.id_p = orders.id_p;

execute dbms_output.put_line('right join');
select preson.id_p, preson.last_name, orders.orderno
from preson
right join orders
on preson.id_p = orders.id_p;

execute dbms_output.put_line('full join');
select preson.id_p, preson.last_name, orders.orderno
from preson
full join orders
on preson.id_p = orders.id_p;

