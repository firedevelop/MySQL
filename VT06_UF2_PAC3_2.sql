-- Active: 1709107611742@@localhost@3306@contacts
-- Creación de la tabla producto

/* La siguiente sentencia permite establecer el valor de SQL_SAFE_UPDATES a 0, lo que significa que se desactiva la restricción y permite realizar operaciones UPDATE o DELETE sin necesidad de que la cláusula WHERE se refiera a una clave primaria o única.*/

SET SQL_SAFE_UPDATES=0;
select * from producto;
insert into producto(codigo,nombre, precio,cantidad_stock,fecha_ingreso,categoria)
values (11,'mac',200.40,10,'2024-01-01','apple');

SELECT nombre, fecha_ingreso from producto where fecha_ingreso < '2024-01-01';


DELETE from producto WHERE nombre LIKE 'MA%' AND precio BETWEEN 200 AND 201;

INSERT INTO producto (codigo, nombre, precio, cantidad_stock, fecha_ingreso, categoria) VALUES
(101, 'Teclado Mecánico', 45.99, 20, '2023-05-15', 'electrónicos'),
(102, 'Mouse Inalámbrico', 25.50, 30, '2023-05-16', 'electrónicos'),
(103, 'Camisa Algodón', 15.00, 50, '2023-05-17', 'ropa');

delete from producto where categoria = 'ropa';
select * from producto;

select * from producto where cantidad_stock > 25;


insert into producto(codigo,nombre, precio) values(102,'panta',20.00);
describe producto;

update producto set precio=51 where nombre='Teclado Mecánico';

