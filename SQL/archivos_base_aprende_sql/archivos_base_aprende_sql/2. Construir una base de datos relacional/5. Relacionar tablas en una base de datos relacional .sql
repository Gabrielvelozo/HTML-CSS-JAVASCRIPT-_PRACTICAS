CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT,
    apellido TEXT,
    telefono TEXT,
    email TEXT
);

CREATE TABLE factura (
    id_factura INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER,
    id_empleado INTEGER,
    fecha TEXT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

CREATE TABLE detalle_factura (
    id_detalle INTEGER PRIMARY KEY AUTOINCREMENT,
    id_factura INTEGER,
    id_libro INTEGER,
    cantidad INTEGER,
    precio REAL,
    FOREIGN KEY (id_factura) REFERENCES factura(id_factura),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);
