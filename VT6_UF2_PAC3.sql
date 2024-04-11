-- Active: 1709107611742@@localhost@3306@contacts
-- Creación de la tabla producto

CREATE TABLE producto (

 codigo INT PRIMARY KEY,       -- Clave primaria para identificar cada producto

 nombre VARCHAR(60) NOT NULL,     -- Nombre del producto

 precio DECIMAL(8,2) NOT NULL,    -- Precio del producto

 cantidad_stock INT NOT NULL,     -- Cantidad de productos en stock

 fecha_ingreso DATE NOT NULL,     -- Fecha en que el producto fue ingresado al inventario

 categoria VARCHAR(50)        -- Categoría del producto (ejemplo: electrónicos, ropa, alimentos, etc.)

);



-- Insertar 4 registros en la tabla "producto"

INSERT INTO producto (codigo, nombre, precio, cantidad_stock, fecha_ingreso, categoria) VALUES

(1, 'Teléfono móvil', 399.99, 50, '2023-11-01', 'Electrónicos'),

(2, 'Portátil HP', 799.99, 30, '2023-11-02', 'Electrónicos'),

(3, 'Camiseta negra', 19.99, 100, '2023-11-03', 'Ropa'),

(4, 'Cargador USB', 9.99, 75, '2023-11-04', 'Electrónicos');





/* La siguiente sentencia permite establecer el valor de SQL_SAFE_UPDATES a 0, lo que significa que se desactiva la restricción y permite realizar operaciones UPDATE o DELETE sin necesidad de que la cláusula WHERE se refiera a una clave primaria o única.*/

SET SQL_SAFE_UPDATES=0;
select * from producto;

CREATE TABLE empleados (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  departamento VARCHAR(100),
  salario DECIMAL(10, 2)
);

select * from empleados;

SELECT cities.name, countries.name as country from cities left join countries on cities.country_id = countries.id where countries.name = 'Spain';
