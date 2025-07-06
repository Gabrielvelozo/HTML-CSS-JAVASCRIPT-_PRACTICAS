CREATE TABLE awards(
	award_id int auto_increment PRIMARY KEY,
	award_name varchar(100)
);
CREATE TABLE audit_log(
	audit_id int AUTO_INCREMENT PRIMARY KEY,
    table_name VARCHAR(100) NOT NULL,
    operation_type ENUM("INSERT","UPDATE","DELETE") NOT NULL,
    record_id int NOT NULL,
    changed_by VARCHAR(100) NOT NULL,
    change_timestamp TIMESTAMP,
    old_value TEXT,
    new_value TEXT
);
-- Agregar una nueva columna "duration", de tipo entero, a la tabla "movies"
USE cinedb;
ALTER TABLE movies
ADD duration INT;
-- Agrega una nueva columna "rating" a la tabla "movies". El campo debe permitir numeros de 2 digitos y 1 decimal, y estar restringido sólo a números entre 0 y 10. 
ALTER TABLE movies
ADD rating DECIMAL(3,1) CHECK (rating >= 0 AND rating <=10);
-- En la tabla "movies", modifica el nombre de la columna "duration" a "duration_minutes".
ALTER TABLE movies
RENAME COLUMN duration TO duration_minutes;
-- Modifica el tipo de dato de la columna "studio_name" en la tabla "studios" para aceptar hasta 80 caracteres.
ALTER TABLE studios
MODIFY COLUMN studio_name VARCHAR(80);
-- Establece el valor por defecto de la columna "duration_minutes" en 0.
ALTER TABLE movies
MODIFY duration_minutes INT DEFAULT 0; 
-- Agrega la restricción UNIQUE al campo "country_name" de la tabla "countries". Intenta insertar el país "España" y revisa que sucede.
ALTER TABLE countries ADD CONSTRAINT unique_country_name UNIQUE (country_name);
-- Establece a "No Nulo" y "único" el campo "award_name" de la tabla "awards".
USE hello_mysql;
ALTER TABLE awards 
MODIFY COLUMN award_name VARCHAR(100) NOT NULL,
ADD CONSTRAINT unique_award_name UNIQUE (award_name);	
-- En la tabla "movies", agrega una clave foránea que relacione el campo "studio_id" de esta tabla con el campo "studio_id" de la tabla "studios".
USE cinedb;
ALTER TABLE movies
   ADD CONSTRAINT movies_fk_studios
   FOREIGN KEY (studio_id)
   REFERENCES studios (studio_id);
   
-- Elimina las columnas "duration_minutes" y "rating" de la tabla "movies".
ALTER TABLE movies
DROP COLUMN duration_minutes, DROP COLUMN rating;




