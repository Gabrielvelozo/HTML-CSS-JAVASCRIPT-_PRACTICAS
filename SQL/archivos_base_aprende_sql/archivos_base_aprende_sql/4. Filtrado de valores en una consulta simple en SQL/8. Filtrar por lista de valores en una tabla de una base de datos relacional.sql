SELECT *
FROM factura
WHERE 
	id_factura = 1 OR
	id_factura = 3 OR
	id_factura = 7 OR
	id_factura = 8 OR
	id_factura = 9 OR
	id_factura = 10;

SELECT *
FROM factura
WHERE id_factura IN (1,3,7,8,9,10);


SELECT *
FROM factura
WHERE id_factura NOT IN (1,3,7,8,9,10);