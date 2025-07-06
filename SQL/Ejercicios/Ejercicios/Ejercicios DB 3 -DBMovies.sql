-- Insertar tres nuevos géneros de película llamados "Musical", "Bélico", "Infantil".
INSERT INTO genres (genre_name) VALUE('Musical'), ('Belico'), ('Infantil');
-- Insertar un nuevo estudio de cine llamado "Pixar Animation".
INSERT INTO studios (studio_name) VALUE('Pixar Animation');
-- Inserta cuatro nuevos países (Argentina, Uruguay, Chile y España).
INSERT INTO countries (country_name) VALUE('Argentina'), ('Uruguay'), ('Chile'), ('España');
/* Insertar una nueva película:
    - Nombre: Avatar
    - Año Estreno: 2009
    - Director: Steven Spielberg
    - Estudio: 20th Century Fox
    - Total Espectadores: 331000000
    - Total Recaudación: 2923706026
*/
SELECT people_id FROM people WHERE name = 'Steven Spielberg';
SELECT studio_id FROM studios WHERE studio_name = '20th Century Fox';
INSERT INTO movies (title, release_year, director_id, studio_id, total_revenue, total_viewers) 
	VALUES('Avatar', 2009, 63, 6, 331000000, 2923706026);
/* Insertar un nuevo actor:
    - Nombre: Sam Worthington
    - Fecha Nacimiento: 22 de Agosto de 1976
    - Pais: Reino Unido  
*/
SELECT country_id FROM countries WHERE country_name = 'Reino Unido';
INSERT INTO people (name, birth_date, country_of_birth_id, category) VALUES('Sam Worthington', '1976/08/22', 14, 'Actor');
-- Actualiza el nombre del estudio "Pixar Animation" a "Disney Studios".
UPDATE studios SET studio_name = 'Disney Studios' WHERE studio_id = '11';
-- Aumentar en 10% la taquilla de todas las películas con recaudación menor a 100 millones.
UPDATE movies SET total_revenue = total_revenue * 1.10 WHERE total_revenue < 100000000;
-- Actualiza la cantidad de espectadores de la película "Fight Club" a 30 millones.
UPDATE movies SET total_viewers = 30000000 WHERE movie_id = '15';
-- Utilizando subqueries, asocia el estudio "Warner Bros" a las películas "Interstellar" y "The Dark Knight".
UPDATE movies SET studio_id = ( SELECT studio_id FROM studios WHERE studio_name = 'Warner Bros') WHERE title IN ( 'Interstellar', 'The Dark Knight');
-- Utilizando subqueries, actualiza el director de la película "Avatar" a James Cameron.
UPDATE movies SET director_id = ( SELECT people_id FROM people WHERE name = 'James Cameron') WHERE title = 'Avatar';
-- Actualiza la fecha de nacimiento de Sam Worthington a 02/08/1976.
UPDATE people SET birth_date = '1976/08/02' WHERE name = 'Sam Worthington';
-- Actualiza la cantidad de espectadores a 50000000 y la recaudación a 425368238.50 de la película "Django Unchained".
UPDATE movies SET total_viewers = '50000000', total_revenue = '425368238.50' WHERE title = 'Django Unchained';
-- Elimina el estudio "Netflix Originals".
DELETE FROM studios WHERE studio_name = 'Netflix Originals';
-- Elimina Argentina y Uruguay de la tabla de países.
DELETE FROM countries WHERE country_name = ('Argentina','Uruguay');
-- Elimina el director "Anthony Russo".
DELETE FROM people WHERE name = 'Anthony Russo' AND category = 'Director';
-- Elimina las películas estrenadas en 2017 que hayan tenido menos de 18500000 espectadores.
DELETE FROM movies WHERE release_year = 2017 AND total_viewers < 18500000;
																   
-- Crea una base de datos llamada "cinedb_backup".
CREATE DATABASE cinedb_backup;
-- Elimina la base de datos llamada "cinedb_backup".
DROP DATABASE cinedb_backup;
-- Elimina, si existe, la base de datos llamada "cinedb_backup".




