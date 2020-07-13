DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE IF NOT EXISTS libreria_cf;

/* con el comando use selecciono la base de datos a utilizar*/
USE libreria_cf;

/* Como crear una tabla  de nombre autores con sus columnas definiendo el tipo de variable*/

CREATE TABLE autores(
  autor_id INT,
  nombre VARCHAR(25),
  apellido VARCHAR(25),  
  genero CHAR(1), -- M o F
  fecha_nacimiento DATE,  -- el formato es aaaa-mm-dd
  pais_origen VARCHAR(40)
);

/* La forma de insertar multiples registros es como se ve a continuacion */

INSERT INTO autores(autor_id, nombre, genero, fecha_nacimiento, pais_origen)
VALUES  (1, 'Codi', 'M', '2018-01-01', 'México'),
        (2, 'Codi', 'M', '2018-01-01', 'México'),
        (3, 'Codi', 'M', '2018-01-01', 'México'),
        (4, 'Codi', 'M', '2018-01-01', 'México'),
        (5, 'Codi', 'M', '2018-01-01', 'México');

SELECT * FROM autores;   -- muestra los datos de la tabla autores

/* como mostrar columnas*/

SHOW COLUMNS FROM autores;

/* otra forma de consultar teniendo el mismo resultado seria con DESC  que es una abreviacion de  SHOW COLUMNS FROM */

DESC autores;


/*   crear tablas a partir de otra existente   
crea la tabla usuarios a partir de autores, las dos tablas quedarian identicas  */

CREATE TABLE usuarios LIKE autores;

/* para ejecutar un archivo sql se debe realizar de la siguiente manera*/

mysql -u root -p < ruta del archivo

