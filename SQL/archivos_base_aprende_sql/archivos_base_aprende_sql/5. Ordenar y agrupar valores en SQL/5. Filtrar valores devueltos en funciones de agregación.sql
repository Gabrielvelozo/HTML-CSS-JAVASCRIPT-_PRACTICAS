SELECT id_libro, SUM(cantidad * precio) AS total_ventas
FROM detalle_Factura
GROUP BY id_libro
HAVING total_ventas < 105
ORDER BY total_ventas ASC;