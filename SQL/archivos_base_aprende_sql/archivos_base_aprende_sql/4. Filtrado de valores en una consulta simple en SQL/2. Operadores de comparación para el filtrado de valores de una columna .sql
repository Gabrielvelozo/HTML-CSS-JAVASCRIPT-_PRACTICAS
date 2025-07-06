SELECT *
FROM cliente 
WHERE id_cliente = 4;

SELECT *
FROM libro 
WHERE id_libro != 3786;

SELECT *
FROM empleado
WHERE salario > 510;

SELECT *
FROM detalle_factura
WHERE cantidad >= 2;

SELECT *
FROM empleado
WHERE salario < 509;

SELECT *
FROM detalle_factura
WHERE precio <= 18;
