-- Active: 1709107611742@@localhost@3306@contacts
-- Creación de la tabla producto

select avg(precio) as precio_promedio from producto2;
select count(codigo) from producto2 where categoria = 'Ropa';
select avg(precio), categoria from producto2 group by categoria;
select sum(cantidad_stock) from producto2;
select count(*) from producto2 where categoria = 'Electrónicos';
select min(precio), max(precio) from producto2;
SELECT categoria, SUM(precio * cantidad_stock) AS valor_total_stock from producto2;

FROM producto 
GROUP BY categoria 
ORDER BY valor_total_stock desc
LIMIT 1;


select extract(month from fecha_ingreso), count(*) 
from producto2
group by extract(month from fecha_ingreso) 
order by count(*) desc;


CREATE TABLE producto2 (

 codigo INT PRIMARY KEY,       -- Clave primaria para identificar cada producto

 nombre VARCHAR(60) NOT NULL,     -- Nombre del producto

 precio DECIMAL(8,2) NOT NULL,    -- Precio del producto

 cantidad_stock INT NOT NULL,     -- Cantidad de productos en stock

 fecha_ingreso DATE NOT NULL,     -- Fecha en que el producto fue ingresado al inventario

 categoria VARCHAR(50)        -- Categoría del producto (ejemplo: electrónicos, ropa, alimentos, etc.)

);



-- Algunos registro de la tabla

INSERT INTO producto2 (codigo, nombre, precio, cantidad_stock, fecha_ingreso, categoria) VALUES

(1, 'Teléfono móvil', 399.99, 50, '2023-10-01', 'Electrónicos'),

(2, 'Portátil HP', 799.99, 30, '2023-11-02', 'Electrónicos'),

(3, 'Camiseta negra', 19.99, 100, '2023-11-03', 'Ropa'),

(4, 'Cargador USB', 9.99, 75, '2023-11-04', 'Electrónicos'),

(5, 'Leche entera', 2.49, 200, '2023-10-05', 'Alimentos'),

(6, 'Pantalones vaqueros', 29.99, 50, '2023-11-06', 'Ropa'),

(7, 'Cepillo de dientes', 1.99, 150, '2023-10-07', 'Cuidado personal'),

(8, 'Manzanas', 0.99, 300, '2023-11-08', 'Alimentos'),

(9, 'Auriculares Bluetooth', 49.99, 40, '2023-12-09', 'Electrónicos'),

(10, 'Sudadera con capucha', 39.99, 25, '2023-12-10', 'Ropa');
