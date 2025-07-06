SELECT id_empleado, nombre, apellido, salario
FROM empleado
WHERE salario > (SELECT AVG(salario) FROM empleado);
