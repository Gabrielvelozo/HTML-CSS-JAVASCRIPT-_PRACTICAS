SELECT  c.nombre, f.id_factura
FROM cliente c
LEFT JOIN  factura f  ON f.id_cliente = c.id_cliente;
