INSERT INTO cliente (nombre, apellido,email)
VALUES ( 'Julia', 'Martinez',  'juliamartinez@test.com');

SELECT *
FROM cliente
WHERE telefono IS NULL;