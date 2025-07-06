SELECT strftime('%Y', fecha)
FROM factura;

SELECT * 
FROM factura 
WHERE  strftime('%Y', fecha) >= 2021 AND id_empleado = 1;
