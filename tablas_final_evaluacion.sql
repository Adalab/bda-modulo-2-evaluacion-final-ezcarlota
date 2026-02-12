CREATE SCHEMA IF NOT EXISTS base_datos_pelis
USE base_datos_pelis
-- CREACION DE TABLAS
CREATE TABLE IF NOT EXISTS pelis(
id_pelis INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(50),
año YEAR,
duracion INT,
genero VARCHAR(20),
adultos BOOLEAN);

CREATE TABLE IF NOT EXISTS idiomas(
id_idiomas INT AUTO_INCREMENT PRIMARY KEY,
codigo_api VARCHAR(3) UNIQUE NOT NULL,
nombre_idioma VARCHAR(20));


CREATE TABLE IF NOT EXISTS idiomas_pelis(
id_pelis INT,                     -- referencia a la película
id_idiomas INT,                    -- referencia al idioma
PRIMARY KEY(id_pelis,id_idiomas),   -- clave primaria compuesta evita duplicados
FOREIGN KEY (id_pelis) REFERENCES pelis(id_pelis),   -- FK hacia la tabla pelis
FOREIGN KEY (id_idiomas) REFERENCES idiomas(id_idiomas));  -- FK hacia la tabla idiomas



/*Paso 1: Insertar idiomas
para cada idioma en ['es', 'en', 'fr', 'de', 'jp', 'ko', 'pt', 'it']:
    INSERT INTO idiomas (codigo_api, nombre_idioma) VALUES (codigo, nombre)

# Paso 2: Insertar películas
para cada película en lista_pelis:
    INSERT INTO pelis (titulo, genero, año, adultos) VALUES (...)
    guardar el id_pelis generado

# Paso 3: Insertar relación idiomas_pelis
para cada idioma en lista_idiomas de la película:
    buscar id_idiomas en tabla idiomas
    INSERT INTO idiomas_pelis (id_pelis, id_idiomas) VALUES (id_pelis, id_idiomas)*/


INSERT INTO idiomas (codigo_api, nombre_idioma) VALUES
('es', 'Español'),
('en', 'Inglés'),
('fr', 'Francés'),
('de', 'Alemán'),
('jp', 'Japonés'),
('ko', 'Coreano'),
('pt', 'Portugués'),
('it', 'Italiano');
DROP TABLE tem_subtitulos;
-- creo otra tabla intermedia que no siver nada mas que para vincular los idiomas con los ids de cada pelicula
CREATE TABLE temp_subtitulos (
    id_pelis INT,        -- referencia al id de la película
    codigo_api VARCHAR(3) NOT NULL -- código del idioma, tipo 'es', 'en', 'fr'
);
INSERT INTO temp_subtitulos (id_pelis,codigo_api) VALUES
(1,'es'),
(1,'en'),
(2,'es'),
(2,'en'),
(3,'es'),
(3,'en'),
(4,'es'),
(4,'en'),
(4,'fr'),
(5,'es'),
(5,'en'),
(6,'es'),
(6,'en'),
(7,'es'),
(7,'en'),
(7,'de'),
(8,'es'),
(8,'en'),
(9,'es'),
(9,'en'),
(10,'es'),
(10,'en'),
(11,'es'),
(11,'en'),
(12,'es'),
(12,'en'),
(12,'fr'),
(13,'es'),
(13,'en'),
(14,'es'),
(14,'en'),
(15,'es'),
(15,'en'),
(16,'es'),
(16,'en'),
(17,'es'),
(17,'en'),
(18,'es'),
(18,'en'),
(19,'es'),
(19,'en'),
(20,'es'),
(20,'en'),
(21,'es'),
(21,'en'),
(22,'es'),
(22,'en'),
(23,'es'),
(23,'en'),
(24,'es'),
(24,'en'),
(25,'es'),
(25,'en'),
(26,'es'),
(26,'en'),
(27,'es'),
(27,'en'),
(28,'es'),
(28,'en'),
(29,'es'),
(29,'en'),
(30,'es'),
(30,'en'),
(31,'es'),
(31,'en'),
(32,'es'),
(32,'en'),
(33,'es'),
(33,'en'),
(34,'es'),
(34,'en'),
(35,'es'),
(35,'en'),
(36,'es'),
(36,'en'),
(36,'jp'),
(37,'es'),
(37,'en'),
(37,'jp'),
(38,'es'),
(38,'en'),
(39,'es'),
(39,'en'),
(40,'es'),
(40,'en'),
(41,'es'),
(41,'en'),
(42,'es'),
(42,'en'),
(43,'es'),
(43,'en'),
(44,'es'),
(44,'en'),
(45,'es'),
(45,'en'),
(46,'es'),
(46,'en'),
(47,'es'),
(47,'en'),
(48,'es'),
(48,'en'),
(49,'es'),
(49,'en'),
(49,'ko'),
(50,'es'),
(50,'en'),
(50,'ko'),
(51,'es'),
(51,'en'),
(52,'es'),
(52,'en'),
(53,'es'),
(53,'en'),
(54,'es'),
(54,'en'),
(55,'es'),
(55,'en'),
(56,'es'),
(56,'en'),
(57,'es'),
(57,'en'),
(58,'es'),
(58,'en'),
(59,'es'),
(59,'en'),
(60,'es'),
(60,'en'),
(61,'es'),
(61,'en'),
(62,'es'),
(62,'en'),
(63,'es'),
(63,'en'),
(64,'es'),
(64,'en'),
(65,'es'),
(65,'en'),
(66,'es'),
(66,'en'),
(67,'es'),
(67,'en'),
(68,'es'),
(68,'en'),
(69,'es'),
(69,'en'),
(70,'es'),
(70,'en'),
(71,'es'),
(71,'en'),
(72,'es'),
(72,'en'),
(73,'es'),
(73,'en'),
(74,'es'),
(74,'en'),
(75,'es'),
(75,'en'),
(76,'es'),
(76,'en'),
(77,'es'),
(77,'en'),
(78,'es'),
(78,'en'),
(79,'es'),
(79,'en'),
(80,'es'),
(80,'en'),
(81,'es'),
(81,'en'),
(81,'fr'),
(82,'es'),
(82,'en'),
(82,'fr'),
(83,'es'),
(83,'en'),
(83,'pt'),
(84,'es'),
(84,'en'),
(85,'es'),
(85,'en'),
(86,'es'),
(86,'en'),
(87,'es'),
(87,'en'),
(88,'es'),
(88,'en'),
(89,'es'),
(89,'en'),
(90,'es'),
(90,'en'),
(91,'es'),
(91,'en'),
(92,'es'),
(92,'en'),
(93,'es'),
(93,'en'),
(94,'es'),
(94,'en'),
(95,'es'),
(95,'en'),
(96,'es'),
(96,'en'),
(96,'it'),
(97,'es'),
(97,'en'),
(98,'es'),
(98,'en'),
(99,'es'),
(99,'en'),
(100,'es'),
(100,'en');
INSERT INTO pelis (titulo,año,duracion,genero,adultos) VALUES 
('The Godfather', 1972, 175, 'Crimen', 0), ('The Godfather Part II', 1974, 202, 'Crimen', 0), ('Pulp Fiction', 1994, 154, 'Crimen', 1), ('Forrest Gump', 1994, 142, 'Drama', 0), ('The Dark Knight', 2008, 152, 'Acción', 0), ('Fight Club', 1999, 139, 'Drama', 1), ('Inception', 2010, 148, 'Ciencia ficción', 0), ('The Matrix', 1999, 136, 'Ciencia ficción', 0), ('The Shawshank Redemption', 1994, 142, 'Drama', 0), ('Interstellar', 2014, 169, 'Ciencia ficción', 0), ('Gladiator', 2000, 155, 'Acción', 0), ('Titanic', 1997, 195, 'Romance', 0), ('Avatar', 2009, 162, 'Ciencia ficción', 0), ('Saving Private Ryan', 1998, 169, 'Bélico', 1), ('The Silence of the Lambs', 1991, 118, 'Thriller', 1), ('Se7en', 1995, 127, 'Thriller', 1), ('Goodfellas', 1990, 146, 'Crimen', 1), ('The Departed', 2006, 151, 'Crimen', 1), ('Whiplash', 2014, 106, 'Drama', 0), ('La La Land', 2016, 128, 'Musical', 0), ('The Lord of the Rings: The Fellowship of the Ring', 2001, 178, 'Fantasía', 0), ('The Lord of the Rings: The Two Towers', 2002, 179, 'Fantasía', 0), ('The Lord of the Rings: The Return of the King', 2003, 201, 'Fantasía', 0), ('Star Wars: A New Hope', 1977, 121, 'Ciencia ficción', 0), ('Star Wars: The Empire Strikes Back', 1980, 124, 'Ciencia ficción', 0), ('Star Wars: Return of the Jedi', 1983, 131, 'Ciencia ficción', 0), ('Back to the Future', 1985, 116, 'Aventura', 0), ('Jurassic Park', 1993, 127, 'Aventura', 0), ('The Lion King', 1994, 88, 'Animación', 0), ('Toy Story', 1995, 81, 'Animación', 0), ('Finding Nemo', 2003, 100, 'Animación', 0), ('Shrek', 2001, 90, 'Animación', 0), ('The Incredibles', 2004, 115, 'Animación', 0), ('WALL·E', 2008, 98, 'Animación', 0), ('Up', 2009, 96, 'Animación', 0), ('Spirited Away', 2001, 125, 'Animación', 0), ('Princess Mononoke', 1997, 134, 'Animación', 1), ('The Green Mile', 1999, 189, 'Drama', 1), ('The Truman Show', 1998, 103, 'Drama', 0), ('The Social Network', 2010, 120, 'Drama', 0), ('Joker', 2019, 122, 'Drama', 1), ('Black Panther', 2018, 134, 'Acción', 0), ('Iron Man', 2008, 126, 'Acción', 0), ('The Avengers', 2012, 143, 'Acción', 0), ('Avengers: Endgame', 2019, 181, 'Acción', 0), ('Dune', 2021, 155, 'Ciencia ficción', 0), ('Mad Max: Fury Road', 2015, 120, 'Acción', 1), ('The Revenant', 2015, 156, 'Aventura', 1), ('Parasite', 2019, 132, 'Thriller', 1), ('Oldboy', 2003, 120, 'Thriller', 1), ('The Pianist', 2002, 150, 'Drama', 1), ('The Wolf of Wall Street', 2013, 180, 'Biografía', 1), ('Her', 2013, 126, 'Drama', 0), ('Gravity', 2013, 91, 'Ciencia ficción', 0), ('The Shape of Water', 2017, 123, 'Fantasía', 1), ('Get Out', 2017, 104, 'Terror', 1), ('It', 2017, 135, 'Terror', 1), ('The Conjuring', 2013, 112, 'Terror', 1), ('A Quiet Place', 2018, 90, 'Terror', 0), ('The Exorcist', 1973, 122, 'Terror', 1), ('The Shining', 1980, 144, 'Terror', 1), ('Blade Runner', 1982, 117, 'Ciencia ficción', 1), ('Blade Runner 2049', 2017, 164, 'Ciencia ficción', 1), ('Alien', 1979, 117, 'Ciencia ficción', 1), ('Aliens', 1986, 137, 'Ciencia ficción', 1), ('The Terminator', 1984, 107, 'Acción', 1), ('Terminator 2: Judgment Day', 1991, 137, 'Acción', 0), ('Rocky', 1976, 120, 'Drama', 0), ('Raging Bull', 1980, 129, 'Biografía', 1), ('Taxi Driver', 1976, 113, 'Drama', 1), ('Casablanca', 1942, 102, 'Romance', 0), ('Citizen Kane', 1941, 119, 'Drama', 0), ('Psycho', 1960, 109, 'Terror', 1), ('Vertigo', 1958, 128, 'Suspense', 0), ('Rear Window', 1954, 112, 'Suspense', 0), ('12 Angry Men', 1957, 96, 'Drama', 0), ("Schindler's List", 1993, 195, 'Drama', 1), ('American Beauty', 1999, 122, 'Drama', 1), ('No Country for Old Men', 2007, 122, 'Crimen', 1), ('The Big Lebowski', 1998, 117, 'Comedia', 1), ('Amélie', 2001, 122, 'Romance', 0), ('The Intouchables', 2011, 112, 'Drama', 0), ('City of God', 2002, 130, 'Crimen', 1), ("Pan's Labyrinth", 2006, 118, 'Fantasía', 1), ('Roma', 2018, 135, 'Drama', 1), ('Slumdog Millionaire', 2008, 120, 'Drama', 0), ('Million Dollar Baby', 2004, 132, 'Drama', 1), ("The King's Speech", 2010, 118, 'Biografía', 0), ('Argo', 2012, 120, 'Thriller', 0), ('Moonlight', 2016, 111, 'Drama', 1), ('Manchester by the Sea', 2016, 137, 'Drama', 1), ('Birdman', 2014, 119, 'Drama', 1), ('Django Unchained', 2012, 165, 'Western', 1), ('Inglourious Basterds', 2009, 153, 'Bélico', 1), ('The Hateful Eight', 2015, 168, 'Western', 1), ('La vita è bella', 1997, 116, 'Drama', 0), ('Requiem for a Dream', 2000, 102, 'Drama', 1), ('Memento', 2000, 113, 'Thriller', 1), ('Eternal Sunshine of the Spotless Mind', 2004, 108, 'Drama', 0), ('Donnie Darko', 2001, 113, 'Drama', 1);
INSERT INTO idiomas_pelis (id_pelis, id_idiomas) -- ahora insertamos los datos en las tabla de idiomas_pelis
SELECT t.id_pelis, i.id_idiomas
FROM temp_subtitulos t -- los datos los buscamos en la tabla temporal que he creado para vincular los 1 de las peliculas con idiomas
JOIN idiomas i ON t.codigo_api = i.codigo_api; 


-- CONSULTAS

-- ¿Cuántas películas tienen una duración superior a 120 minutos? 
SELECT duracion
FROM pelis
WHERE duracion > 120;

-- ¿Cuántas películas incluyen subtítulos en español?
SELECT id_idiomas, COUNT(*) AS total_pelis_esp
FROM idiomas_pelis
WHERE id_idiomas = 1
GROUP BY id_idiomas;

-- ¿Cuántas películas tienen contenido adulto?
SELECT adultos, COUNT(*) AS total_pelis_adul
FROM pelis
WHERE adultos = 1
GROUP BY adultos;

-- ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor.

SELECT año, COUNT(*) AS total_peliculas
FROM pelis
GROUP BY año
ORDER BY total_peliculas DESC;

-- ¿Cuál es la película más antigua registrada en la base de datos? Muestra el promedio de duración de las películas agrupado por género.
SELECT año
FROM pelis 
ORDER BY año ASC
LIMIT  1 ;

SELECT genero, AVG(duracion) AS duracion_promedio
FROM pelis
GROUP BY genero;

-- Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra)
SELECT titulo 
FROM pelis
WHERE titulo LIKE '%Godfather%';

-- ¿Cuál es el año con más películas en la base de datos?
SELECT año, COUNT(*) AS mas_pelis
FROM pelis
GROUP BY año 
ORDER BY mas_pelis DESC
LIMIT 1;

-- Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
SELECT genero, COUNT(*) AS suma_generos
FROM pelis
GROUP BY genero
ORDER BY suma_generos DESC;

