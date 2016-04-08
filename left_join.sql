select preson.id_p, preson.last_name, orders.orderno
from preson
left join orders
on preson.id_p = orders.id_p
