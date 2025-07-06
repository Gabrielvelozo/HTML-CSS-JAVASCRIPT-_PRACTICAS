SELECT date(fecha) AS fecha_convertida 
FROM factura;


SELECT *
FROM factura
WHERE  date(fecha) BETWEEN '2021-01-01'  AND '2021-06-30' ;
