SELECT id_autor, COUNT(*) AS cantidad_de_libros
FROM autor_libro
GROUP BY id_autor;

SELECT id_libro, SUM(cantidad * precio) AS total_ventas
FROM detalle_Factura
GROUP BY id_libro;
