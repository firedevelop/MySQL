-- Active: 1709107611742@@localhost@3306@contacts
CREATE DATABASE personas_aficiones;

USE personas_aficiones;

-- Crear tabla de personas
CREATE TABLE Personas (
    PersonaID INT PRIMARY KEY,
    Nombre VARCHAR(50)
);

-- Crear tabla de aficiones
CREATE TABLE Aficiones (
    AficionID INT PRIMARY KEY,
    AficionNombre VARCHAR(50)
);

-- Crear tabla de relaciones entre personas y aficiones
CREATE TABLE PersonasAficiones (
    PersonaID INT,
    AficionID INT,
    PRIMARY KEY (PersonaID, AficionID),
    CONSTRAINT PersonaID_fk FOREIGN KEY (PersonaID) REFERENCES Personas(PersonaID)
    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT AficionID_fk FOREIGN KEY (AficionID) REFERENCES Aficiones(AficionID)
    ON UPDATE CASCADE ON DELETE CASCADE
);


-- Insertar registros en la tabla de personas
INSERT INTO Personas (PersonaID, Nombre)
VALUES (1, 'Juan'),
       (2, 'María'),
       (3, 'Carlos'),
       (4, 'Ana'),
       (5, 'Luis'),
	   (6, 'Elena'),
       (7, 'Pablo'),
       (8, 'Irene'),
       (9, 'Jorge'),
       (10, 'Sofía'),
       (11, 'Miguel'),
       (12, 'Clara'),
       (13, 'Nico'),
       (14, 'Valeria'),
       (15, 'Bruno');
       
-- Insertar registros en la tabla de aficiones
INSERT INTO Aficiones (AficionID, AficionNombre)
VALUES (101, 'Fútbol'),
       (102, 'Pintura'),
       (103, 'Música'),
       (104, 'Jardinería'),
       (105, 'Cocina'),
       (106, 'Lectura'),
       (107, 'Videojuegos'),
       (108, 'Bicicleta'),
       (109, 'Escalada'),
       (110, 'Surf'),
       (111, 'Fotografía'),
       (112, 'Programación'),
       (113, 'Ajedrez'),
       (114, 'Yoga'),
       (115, 'Pilates');
       
-- Insertar registros en la tabla de relaciones
INSERT INTO PersonasAficiones (PersonaID, AficionID)
VALUES (1, 101),
       (1, 103),
       (2, 102),
       (3, 103),
       (3, 104),
       (3, 102),
       (5, 102),
       (5, 101),
       (6, 106),
       (6, 109),
       (7, 107),
       (7, 112),
       (8, 108),
       (8, 111),
       (9, 113),
       (10, 114),
       (11, 115),
       (11, 110),
       (12, 105),
       (13, 101),
       (14, 103),
       (15, 102),
       (15, 104);
       
/*Muestra todos los nombres de las personas registradas.*/
select nombre from personas;

/*Selecciona todos los nombres de personas que tienen un ID menor a 4.*/
SELECT nombre FROM personas WHERE PersonaID < 4;

/*Obtén los nombres de las personas y las aficiones que practican.*/
select P.nombre, A.AficionNombre 
FROM personasaficiones AS PA
INNER JOIN personas AS P ON PA.PersonaID = P.PersonaID
INNER JOIN aficiones AS A ON PA.AficionID = A.AficionID;

select personas.Nombre, aficiones.AficionNombre 
from personas
inner join personasaficiones
on personas.personaid = personasaficiones.PersonaID
inner join aficiones
on personasaficiones.aficionid = aficiones.AficionID;

/*Cuenta cuántas aficiones tiene cada persona.*/
SELECT personas.nombre, COUNT(personasaficiones.AficionID) AS 'Numero_aficiones'
FROM personasaficiones 
INNER JOIN personas ON personasaficiones.PersonaID =  personas.PersonaID
GROUP BY personas.PersonaID
ORDER BY personas.nombre DESC;


/*Encuentra nombre de las personas que tienen más de una afición.*/
SELECT personas.nombre
FROM personasaficiones 
INNER JOIN personas ON personasaficiones.PersonaID =  personas.PersonaID
GROUP BY personas.PersonaID
HAVING COUNT(personasaficiones.AficionID) > 1
ORDER BY personas.nombre DESC;

/*Lista todas las aficiones ordenadas alfabéticamente.*/
SELECT aficionnombre FROM aficiones ORDER BY AficionNombre ASC;


/*Muestra las aficiones que practica Carlos. Que pasa si hay más de un carlos?*/
select P.nombre, A.AficionNombre 
FROM personasaficiones AS PA
INNER JOIN personas AS P ON PA.PersonaID = P.PersonaID
INNER JOIN aficiones AS A ON PA.AficionID = A.AficionID
WHERE P.nombre = 'Carlos';

/*Encuentra la afición más popular y cuántas personas la practica */
SELECT A.AficionNombre, COUNT(PA.aficionID) AS 'Practicantes'
FROM aficiones A
INNER JOIN personasaficiones PA ON A.AficionID = PA.aficionID
GROUP BY PA.aficionID
ORDER BY Practicantes DESC
LIMIT 1;

/* Encontrar el número de personas por cada nombre único:
las personas por nombre y contamos cuántas personas tienen cada nombre único. 
Esto te dará un recuento de cuántas personas comparten cada nombre en la base de datos.*/ 
SELECT Nombre, COUNT(*) AS CantidadDePersonas
FROM Personas
GROUP BY Nombre;

-- LEFT JOIN - Todas las Personas con sus Aficiones (Incluso si no tienen):
SELECT Personas.Nombre, Aficiones.AficionNombre
FROM Personas
LEFT JOIN PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
LEFT JOIN Aficiones ON PersonasAficiones.AficionID = Aficiones.AficionID;

UPDATE PersonasAficiones SET aficionID = 109 WHERE personaID = 12;

-- RIGHT JOIN - Todas las Aficiones con las Personas relacionadas (Incluso si no tienen):
SELECT Personas.Nombre, Aficiones.AficionNombre
FROM Personas
RIGHT JOIN PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
RIGHT JOIN Aficiones ON PersonasAficiones.AficionID = Aficiones.AficionID;


/*
Encontrar las personas que tienen al menos una afición y listar sus aficiones ordenadas alfabéticamente:
Esta consulta utiliza INNER JOIN para combinar las tablas de personas y aficiones. 
Luego, muestra las personas que tienen al menos una afición y lista sus aficiones ordenadas alfabéticamente por nombre de persona y nombre de afición.
*/
SELECT Personas.Nombre, Aficiones.AficionNombre
FROM Personas
INNER JOIN PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
INNER JOIN Aficiones ON PersonasAficiones.AficionID = Aficiones.AficionID
ORDER BY  Aficiones.AficionNombre, Personas.Nombre;

/*
Encontrar la cantidad de personas que tienen cada afición y ordenar las aficiones por la cantidad de personas que las tienen de manera descendente:
Esta consulta utiliza LEFT JOIN para combinar las tablas de aficiones y personas, 
y luego GROUP BY para contar cuántas personas tienen cada afición. 
Luego, ordena las aficiones en orden descendente según la cantidad de personas que las tienen.
*/
SELECT Aficiones.AficionNombre, COUNT(PersonasAficiones.PersonaID) AS CantidadDePersonas
FROM Aficiones
LEFT JOIN PersonasAficiones ON Aficiones.AficionID = PersonasAficiones.AficionID
GROUP BY Aficiones.AficionNombre
ORDER BY CantidadDePersonas DESC;


/*
Encontrar las aficiones únicas que tienen las personas y listarlas en orden alfabético:
Esta consulta utiliza INNER JOIN para combinar las tablas de aficiones y personas, 
y luego utiliza DISTINCT para obtener las aficiones únicas que tienen las personas. 
Luego, lista las aficiones en orden alfabético por nombre de afición.
*/
SELECT DISTINCT Aficiones.AficionNombre
FROM Aficiones
INNER JOIN PersonasAficiones ON Aficiones.AficionID = PersonasAficiones.AficionID
ORDER BY Aficiones.AficionNombre;


-- SUBCONSULTAS
            
-- Encontrar personas que tienen una afición específica (usando IN):
SELECT p.nombre FROM personas p INNER JOIN personasaficiones PA ON P.personaid = PA.personaID
WHERE pa.aficionID = 101;

SELECT personaID FROM personasaficiones WHERE aficionID = 101;

SELECT AficionID FROM aficiones WHERE aficionNOMBRE = 'Fútbol';

SELECT nombre FROM personas WHERE personaID 
	IN (SELECT personaID FROM personasaficiones 
		WHERE aficionID = (SELECT AficionID FROM aficiones WHERE aficionNOMBRE = 'Fútbol'));


-- Encontrar nombre de personas que tienen mas de una aficiones:
SELECT 
    Nombre
FROM
    Personas
WHERE
    PersonaID IN (SELECT 
            PersonaID
        FROM
            PersonasAficiones
        GROUP BY PersonaID
        HAVING COUNT(*) > 1);

        
-- Encontrar personas que tienen al menos una afición en común con 'Juan' (PersonaID = 1)
-- En esta consulta, usamos EXISTS en la cláusula WHERE para encontrar personas que tienen al menos una afición en común con 'Juan'. 

SELECT DISTINCT
    Personas.Nombre
FROM
    Personas
        INNER JOIN
    PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID;
    
    

  
SELECT DISTINCT
    Personas.Nombre
FROM
    Personas
        INNER JOIN
    PersonasAficiones ON Personas.PersonaID = PersonasAficiones.PersonaID
WHERE
    Personas.PersonaID <> 1 -- Diferente al id 1 que es el propio Juan
        AND PersonasAficiones.AficionID IN (SELECT 
            AficionID
        FROM
            PersonasAficiones
        WHERE
            PersonaID = 1);


SELECT 
            AficionID
        FROM
            PersonasAficiones
        WHERE
            PersonaID IN (1);
            
            
            

