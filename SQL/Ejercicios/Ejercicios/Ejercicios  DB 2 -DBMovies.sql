/* Obtener el título y año de estreno de las películas que no fueron lanzadas en 1993, 1999, 2000 y 2017. */ 
SELECT title, release_year FROM movies  WHERE release_year NOT IN(1993, 1999, 2000, 2017);
/* Obtener las películas que no tienen año de estreno. */ 
SELECT title, release_year FROM movies WHERE release_year IS NULL;
/* Obtener las películas con estudio cinematográfico asociado. */
SELECT title FROM movies WHERE studio_id IS NOT NULL;
/* Obtener los actores sin fecha de nacimiento o identificador de país de nacimiento. */
SELECT name, birth_date, country_of_birth_id FROM people WHERE(birth_date IS NULL AND country_of_birth_id IS NULL) AND category='Actor';
-- Obtener la cantidad total de películas almacenadas en la base de datos. Mostrar el resultado como "Total Peliculas".
SELECT COUNT(title) AS Total_Peliculas FROM movies;
-- Calcular el promedio de recaudación de todas las películas.
SELECT AVG(total_revenue) AS promedio_recaudacion FROM movies;
-- Contar cuántas películas se estrenaron por año. Ordenar por año descendente.
SELECT release_year,COUNT(title) AS cantidad FROM movies GROUP BY release_year ORDER BY release_year DESC;
-- Obtener las películas cuyo año de estreno está entre 1990 y 1999.
SELECT title, release_year FROM movies WHERE release_year BETWEEN 1990 AND 1999;
/* Clasificar las películas según su recaudación, mostrando título, recaudación y clasificación, siguiendo estos criterios:
    - Menor a 500000000, mostrar 'Bajo rendimiento'
    - Entre 100000000 y 500000000, mostrar 'Moderado'
    - Entre 500000000 y 1000000000, mostrar "Éxito"
    - Mayor a 1000000000, mostrar "Éxito masivo"
    - Recaudación nula, mostrar "Sin datos de recaudación"
    - Ordena el resultado alfabéticamente por nombre de película.
*/
SELECT title AS 'Titulo', total_revenue AS 'Recaudacion',
CASE 
	WHEN total_revenue > 1000000000 THEN 'Exito masivo'
    WHEN total_revenue BETWEEN 500000000 AND 100000000 THEN 'Moderado'
    WHEN total_revenue BETWEEN 500000000 AND 1000000000 THEN 'Exito'
    WHEN total_revenue IS NULL THEN 'Sin datos de recaudacion'
    ELSE 'Bajo rendimiento'
 END AS 'Clasificacion'
 FROM movies
 ORDER BY title;
/* Obtiene el nombre y fecha de nacimiento de cada actor. Muestra el resultado en una única columna llamada "Actores", con formato "Nombre actor (fecha nacimiento)". 
Descarta los actores sin fecha de nacimiento.*/
SELECT CONCAT('Nombre: ',name,', Fecha nacimiento: ',birth_date) AS 'Actores' FROM people WHERE birth_date IS NOT NULL  AND category='Actor';
-- Obtiene el valor mínimo de recaudación (no usar los modificadores ORDER BY y LIMIT).
SELECT MIN(total_revenue) 'Valor_minimo' FROM movies;
-- Obtiene la cantidad máxima de espectadores (no usar el modificador ORDER BY y LIMIT).
SELECT  MAX(total_viewers) 'Maximos_espectadores' FROM movies;
-- Obtiene la recaudación total y cantidad total de espectadores de todas las películas. 
SELECT SUM(total_revenue) 'Recaudacion_total', SUM(total_viewers) 'Cantidad_total_espectadores' FROM movies;
-- Obtiene título y año de estreno de las películas. Si no está el año, mostrar "No especificado". Usa los alias "Película" y "Año Estreno". Ordenar por película.
SELECT title 'Peliculas', IFNULL(release_year, 'No especificado') 'Año_estreno' FROM movies ORDER BY title;
-- Mostrar los años en que se estrenaron más de 1 película. Ordena por año de estreno ascendente. 
SELECT release_year, COUNT(release_year) 'Cantidad_peliculas' FROM movies GROUP BY release_year HAVING COUNT(*) > 1 ORDER BY release_year;
-- Obtiene los estudios de cine que han producido películas cuya taquilla supera el promedio de recaudación.
SELECT studio_name FROM studios WHERE studio_id IN (SELECT studio_id FROM movies WHERE total_revenue > (SELECT AVG(total_revenue) FROM movies));
-- Obtiene el año de nacimiento de cada director.
SELECT birth_date 'Año_nacimiento', category FROM people WHERE category='Director';
-- Obtiene los títulos de las películas en mayúsculas y la cantidad de letras de su nombre.
SELECT UPPER(title) 'Peliculas', LENGTH(title) 'Cantidad_letras' FROM movies;
/* Calcula la edad aproximada de cada persona utilizando funciones de fecha.
    - Tener en cuenta solo el año de nacimiento al hacer el cálculo.
    - Excluye las personas sin fecha de nacimiento.
    - Ordena por edad ascendente.
*/
SELECT name, YEAR(CURDATE()) - YEAR(birth_date) 'Edad' FROM people WHERE birth_Date IS NOT NULL ORDER BY Edad;