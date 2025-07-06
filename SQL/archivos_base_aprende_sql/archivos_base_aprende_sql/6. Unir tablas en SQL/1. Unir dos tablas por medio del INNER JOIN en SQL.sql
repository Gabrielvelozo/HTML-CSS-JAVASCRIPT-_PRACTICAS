SELECT  f.id_factura, c.nombre, f.fecha
FROM factura as f
INNER JOIN cliente as c ON f.id_cliente = c.id_cliente;