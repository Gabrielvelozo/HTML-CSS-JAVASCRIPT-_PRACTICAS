SELECT id_libro,  SUM(cantidad * precio) AS total_ventas
FROM detalle_Factura
GROUP BY id_libro
ORDER BY total_ventas DESC
LIMIT 1;
