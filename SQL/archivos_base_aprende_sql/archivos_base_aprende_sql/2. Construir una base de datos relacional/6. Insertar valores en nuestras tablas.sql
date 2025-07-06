INSERT INTO autor VALUES (101, 'Alonso Ortiz');
INSERT INTO autor (nombre) VALUES ('Carlos Carmona');
INSERT INTO libro (id_libro, titulo, ISBN, fecha) VALUES (3786, 'El sol radiante', 'de3764836d', '2023-03-17');


-- Tabla autor
INSERT INTO autor (id_autor, nombre) VALUES (103, 'Natalia Gallego');

-- Tabla libro
INSERT INTO libro (id_libro, titulo, ISBN, fecha) VALUES (3787, 'Luna de verano', 'ea4b81d719', '1986-01-13');
INSERT INTO libro (id_libro, titulo, ISBN, fecha) VALUES (3788, 'Hoy es el día', 'ff890ca9a1', '1998-02-26');
INSERT INTO libro (id_libro, titulo, ISBN, fecha) VALUES (3790, 'Iniciar en SQL', '2e3c3a6ccf', '2022-01-30');
INSERT INTO libro (id_libro, titulo, ISBN, fecha) VALUES (3791, 'El café de Naranjo', '193c4d6156', '2010-07-31');


-- Tabla autor_libro
INSERT INTO autor_libro (id_libro, id_autor) VALUES (3786, 101);
INSERT INTO autor_libro (id_libro, id_autor) VALUES (3787, 102);
INSERT INTO autor_libro (id_libro, id_autor) VALUES (3788, 103);
INSERT INTO autor_libro (id_libro, id_autor) VALUES (3790, 103);
INSERT INTO autor_libro (id_libro, id_autor) VALUES (3791, 101);
INSERT INTO autor_libro (id_libro, id_autor) VALUES (3791, 102);

-- Tabla cliente
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (1, 'Juanita', 'Lind', '(123) 8592-2238', 'juanitalind@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (2, 'George', 'Weissnat', '(123) 6599-8313', 'georgeweissnat@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (3, 'Leilani', 'Langworth', '(123) 3376-7786', 'leilanilangworth@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (4, 'Reggie', 'Schmitt', '(123) 1886-6216', 'reggieschmitt@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (5, 'Delores', 'Rippin', '(123) 9976-1342', 'deloresrippin@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (6, 'Guido', 'Rogahn', '(123) 4357-9648', 'guidorogahn@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (7, 'Delfina', 'Schmeler', '(123) 3819-7691', 'delfinaschmeler@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (8, 'Lon', 'Conroy', '(123) 9585-9496', 'lonconroy@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (9, 'Arden', 'Schumm', '(123) 1197-5529', 'ardenschumm@test.com');
INSERT INTO cliente (id_cliente, nombre, apellido, telefono, email) VALUES (10, 'Elliott', 'Kulas', '(123) 1748-9216', 'elliottkulas@test.com');


-- Tabla empleado
INSERT INTO empleado (id_empleado, nombre, apellido, email, salario) VALUES (1, 'Juan', 'Rojas', 'juan.rojas@tiendatest.com', 508.21);
INSERT INTO empleado (id_empleado, nombre, apellido, email, salario) VALUES (2, 'John', 'Smith', 'john.smith@tiendatest.com', 508.74);
INSERT INTO empleado (id_empleado, nombre, apellido, email, salario) VALUES (3, 'Ana', 'Campos', 'ana.campos@tiendatest.com', 509.48);
INSERT INTO empleado (id_empleado, nombre, apellido, email, salario) VALUES (4, 'Gustavo', 'Vargas', 'gustavo.vargas@tiendatest.com', 510.41);
INSERT INTO empleado (id_empleado, nombre, apellido, email, salario) VALUES (5, 'María', 'Mora', 'maria.mora@tiendatest.com', 516.46);

-- Tabla factura
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (1, 1, 3, '2021-01-14');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (2, 2, 3, '2022-07-09');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (3, 3, 4, '2021-01-10');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (4, 4, 4, '2021-05-17');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (5, 4, 2, '2022-04-01');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (6, 5, 1, '2021-03-21');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (7, 6, 2, '2021-05-18');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (8, 6, 4, '2021-10-23');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (9, 8, 5, '2021-09-28');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (10, 8, 5, '2021-07-26');
INSERT INTO factura (id_factura, id_cliente, id_empleado, fecha) VALUES (11, 10, 1, '2021-02-27');


-- Tabla detalle_factura
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (1, 3786, 2, 18.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (1, 3787, 2, 20.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (2, 3788, 1, 19.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (3, 3790, 2, 17.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (3, 3791, 1, 18.50);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (4, 3786, 2, 18.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (5, 3787, 2, 20.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (6, 3788, 2, 19.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (6, 3790, 2, 17.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (7, 3786, 1, 18.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (7, 3787, 2, 20.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (7, 3791, 1, 18.50);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (8, 3788, 1, 19.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (9, 3790, 2, 17.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (9, 3791, 2, 18.50);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (10, 3786, 1, 18.00);
INSERT INTO detalle_factura (id_factura, id_libro, cantidad, precio) VALUES (11, 3787, 1, 20.00);


