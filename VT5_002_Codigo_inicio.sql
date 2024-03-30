-- Active: 1709107611742@@localhost@3306@hospital
DROP DATABASE if exists hospital ;
CREATE DATABASE hospital;

USE hospital;

-- DDL para crear las tablas
CREATE TABLE PERSONAL (
    id_pers INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE ENFERMERO (
    id_pers INT PRIMARY KEY,
    años_esp INT,
    CONSTRAINT id_enfer_fk FOREIGN KEY (id_pers)
        REFERENCES PERSONAL (id_pers)
);

CREATE TABLE ADMINISTRATIVO (
    id_pers INT PRIMARY KEY,
    gafas BOOLEAN,
    CONSTRAINT id_admin_fk FOREIGN KEY (id_pers)
        REFERENCES PERSONAL (id_pers)
);

CREATE TABLE MEDICO (
    id_pers INT PRIMARY KEY,
    edad INT,
    CONSTRAINT id_medico_fk FOREIGN KEY (id_pers)
        REFERENCES PERSONAL (id_pers)
);

CREATE TABLE ESPECIALIDAD (
    id_esp VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE MEDICO_ESP (
    id_pers INT,
    id_esp VARCHAR(10),
    PRIMARY KEY (id_pers , id_esp),
    CONSTRAINT id_medic_fk FOREIGN KEY (id_pers)
        REFERENCES MEDICO (id_pers),
    CONSTRAINT id_esp_fk FOREIGN KEY (id_esp)
        REFERENCES ESPECIALIDAD (id_esp)
);

-- DML para insertar datos en las tablas PERSONAL, ENFERMERO, ADMINISTRATIVO, MEDICO, ESPECIALIDAD y MEDICO_ESP

INSERT INTO PERSONAL (id_pers, nombre) VALUES 
(1, 'Ana Torres'), 
(2, 'Luis Navarro'), 
(3, 'Marta Gómez'), 
(4, 'Carlos Sánchez'), 
(5, 'Lucía Molina'),
(6, 'Joan Mayans');

INSERT INTO ENFERMERO (id_pers, años_esp) VALUES (1, 5);

INSERT INTO ADMINISTRATIVO (id_pers, gafas) VALUES 
(2, TRUE), 
(3, FALSE);

INSERT INTO MEDICO (id_pers, edad) VALUES 
(4, 40), 
(5, 30);

INSERT INTO ESPECIALIDAD (id_esp, nombre) VALUES 
('CAR','Cardiología'), 
('NEU','Neurología'), 
('PED','Pediatría'), 
('CRA','Cirugía'), 
('DER','Dermatología');

-- Nota: Los id_pers aquí deberían ser los ID de los médicos y id_esp deberían ser los ID de las especialidades.
INSERT INTO MEDICO_ESP (id_pers, id_esp) VALUES 
(4, 'CAR'), 
(5, 'DER');


-- Esta consulta selecciona todos los campos de todos los registros de la tabla PERSONAL.
SELECT * FROM PERSONAL;

-- Esta consulta selecciona todos los campos de todos los registros de la tabla MEDICO.
SELECT * FROM MEDICO;

-- Selecciona todos los campos de los enfermeros que tienen más de 5 años de especialización.
SELECT * FROM ENFERMERO
WHERE años_esp > 5;

-- Selecciona el nombre del médico y el nombre de su especialidad uniendo las tablas MEDICO, PERSONAL y ESPECIALIDAD.
SELECT P.nombre AS NombreMedico, E.nombre AS Especialidad
FROM MEDICO M
INNER JOIN PERSONAL P ON M.id_pers = P.id_pers
INNER JOIN MEDICO_ESP ME ON M.id_pers = ME.id_pers
INNER JOIN ESPECIALIDAD E ON ME.id_esp = E.id_esp;

-- Cuenta el número total de médicos en cada especialidad y los agrupa por especialidad.
SELECT E.nombre AS Especialidad, COUNT(*) AS NumeroMedicos
FROM MEDICO_ESP ME
INNER JOIN ESPECIALIDAD E ON ME.id_esp = E.id_esp
GROUP BY E.nombre;

-- Selecciona los detalles de los trabajadores administrativos que usan gafas.
SELECT P.nombre AS NombreAdministrativo
FROM ADMINISTRATIVO A
INNER JOIN PERSONAL P ON A.id_pers = P.id_pers
WHERE gafas = TRUE;

