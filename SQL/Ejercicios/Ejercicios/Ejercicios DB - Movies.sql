/* Obtener el título y año de estreno de todas las películas, ordenadas por año de estreno descendente. */
SELECT title, release_year FROM movies ORDER BY release_year DESC;
/* Obtener el título y fecha de nacimiento de los actores nacidos desde el 01 de enero de 1975.*/
SELECT name, birth_date FROM people WHERE birth_date >= '1975-01-01' AND category = 'Actor';
/* Obtener los actores cuyo nombre comience con la letra 'B'. */
SELECT name FROM people WHERE name LIKE 'B%' AND category='Actor';
/* Obtener los actores cuyo nombre termine con la letra 'T', ordenados por fecha de nacimiento descendente. */
SELECT name FROM people WHERE name LIKE '%T' AND category='Actor' ORDER BY birth_date DESC;
/* Obtener los directores cuyo nombre contenga las letras 'V' o 'W'. */
SELECT name FROM people WHERE name LIKE '%V%' OR '%W%' AND category='Director';
/* Obtener los directores cuyo nombre no contenga las letras 'V' o 'W'. */
SELECT name FROM people WHERE name  NOT LIKE '%V%' OR '%W%' AND category='Director';
/* Obtener el título y año de las películas estrenadas en el año 1980 o antes. */
SELECT title, release_year FROM movies WHERE release_year <= '1980';
/* Obtener las 5 películas con más recaudación, ordenadas de manera descendente según su recaudación. Mostrar título, año, cantidad de espectadores y recaudación. */
SELECT title, release_year, total_viewers, total_revenue  FROM movies ORDER BY total_revenue DESC LIMIT 5;
/* Obtener todas las personas que tengan las 5 vocales en su nombre. */
SELECT name FROM people WHERE name LIKE '%A%' AND name LIKE '%E%' AND name LIKE '%I%' AND name LIKE '%O%' AND name LIKE '%U%';
/* Obtener la lista de años en que se estrenaron películas. Eliminar duplicados y ordenar de manera ascendente. */
SELECT DISTINCT release_year FROM movies ORDER BY release_year ASC;
/* Utilizando subqueries (subconsultas), obtener los títulos de las películas dirigidas por Christopher Nolan. */
SELECT title FROM movies WHERE director_id = (SELECT people_id FROM people WHERE name = 'Christopher Nolan');
/* Utilizando subqueries, obtener los nombres de los actores nacidos en Reino Unido. Ordenar por nombre. */
SELECT name FROM people WHERE people_id = (SELECT country_id FROM countries WHERE country_name = 'Reino Unido') AND category='Actor';
/* obtener todas las películas de "20th Century Fox" (cualquiera sea su año de estreno) y además, sin importar su estudio, aquellas que fueron estrenadas luego de 2010. */
SELECT title, release_year FROM movies WHERE studio_id = (SELECT studio_id FROM studios WHERE studio_name = '20th Century Fox') OR release_year > 2010; 
/* Utilizando subqueries, obtener todas las películas de "Warner Bros" estrenadas en 2015 o años posteriores. */
SELECT title, release_year FROM movies WHERE studio_id = (SELECT studio_id FROM studios WHERE studio_name = 'Warner Bros') AND release_year >= 2015;
SELECT  * FROM countries, genres, movie_actor, movie_genre, movies, people, studios;
