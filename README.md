# bda-modulo-2-evaluacion-final-ezcarlota
🎬 Proyecto: Base de Datos de Películas
📌 Descripción

En este proyecto se han realizado dos ejercicios relacionados con la extracción de datos desde una API y el uso de bases de datos relacionales mediante SQL.

El objetivo principal ha sido practicar el proceso completo de trabajo con datos: obtención, almacenamiento y consulta.

📂 Ejercicio 1: Creación de una Base de Datos a partir de una API
🔹 Fase 1: Extracción de datos

Se extrajeron datos de películas desde una API proporcionada.
El endpoint utilizado fue:

https://beta.adalab.es/resources/apis/pelis/pelis.json

De cada película se obtuvieron los siguientes campos:

Título

Año de lanzamiento

Duración (en minutos)

Género

Contenido para adultos

Los datos fueron transformados a un formato estructurado para poder trabajarlos posteriormente.

🔹 Fase 2: Creación de la base de datos

Se creó una base de datos en MySQL con las tablas necesarias para almacenar la información de las películas.

Se diseñó una estructura básica con:

Una tabla para las películas

Una tabla para los géneros

Las tablas se relacionaron mediante claves para mantener coherencia en los datos.

🔹 Fase 3: Inserción de datos

Una vez creada la base de datos, se insertaron las 100 películas extraídas desde la API en las tablas correspondientes.

Se comprobó que los datos se almacenaran correctamente antes de realizar consultas.

🔹 Fase 4: Consultas SQL

Se realizaron distintas consultas para analizar la información almacenada, por ejemplo:

Número de películas con duración superior a 120 minutos

Cantidad de películas con contenido adulto

Película más antigua registrada

Promedio de duración por género

Número de películas por año

Búsqueda de películas por palabra clave en el título

Estas consultas permitieron trabajar con funciones como COUNT, AVG, GROUP BY, ORDER BY y LIKE.

🎥 Ejercicio 2: Base de Datos Sakila

En el segundo ejercicio se trabajó con la base de datos de ejemplo Sakila, que simula una tienda de alquiler de películas.

Se realizaron consultas sobre distintas tablas como:

film

actor

customer

rental

category

Algunas de las consultas realizadas fueron:

Selección de películas sin duplicados

Filtrado por clasificación (PG-13, R, etc.)

Búsqueda por palabras en la descripción

Listado de actores

Número de películas alquiladas por cliente

Alquileres por categoría

Promedio de duración por clasificación

Este ejercicio permitió practicar consultas más complejas utilizando JOIN, GROUP BY, BETWEEN, LIKE y funciones de agregación.

✅ Conclusión

Con estos ejercicios se ha trabajado el proceso completo de gestión de datos:

Extracción desde una API.

Creación y diseño de una base de datos relacional.

Inserción de información.

Consulta y análisis mediante SQL.

El proyecto ha permitido reforzar conocimientos sobre bases de datos, relaciones entre tablas y análisis básico de datos mediante consultas estructuradas.
