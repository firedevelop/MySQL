-- Active: 1709107611742@@localhost@3306@contacts
CREATE TABLE producto3 (

  codigo INT PRIMARY KEY,

  nombre VARCHAR(60) NOT NULL,

  precio DECIMAL(8,2) NOT NULL,

  cantidad_stock INT NOT NULL,

  fecha_ingreso DATE NOT NULL,

  categoria VARCHAR(50)

);

INSERT INTO producto3 (codigo, nombre, precio, cantidad_stock, fecha_ingreso, categoria)

VALUES (101, 'Laptop', 1200.50, 15, '2023-10-25', 'Electrónicos');

select * from producto3;

CREATE TABLE producto4 (

 codigo INT PRIMARY KEY,

 nombre VARCHAR(255) NOT NULL,

 precio DECIMAL(10, 2) NOT NULL,

 cantidad_stock INT NOT NULL CHECK (cantidad_stock >= 10)

);



INSERT INTO producto4 (codigo, nombre, precio, cantidad_stock) VALUES (101, 'Producto 1', 20.00, 15);

INSERT INTO producto4 (codigo, nombre, precio, cantidad_stock) VALUES (102, 'Producto 2', 25.50, 12);

INSERT INTO producto4 (codigo, nombre, precio, cantidad_stock) VALUES (103, 'Producto 3', 30.75, 18);

INSERT INTO producto4 (codigo, nombre, precio, cantidad_stock) VALUES (104, 'Producto 4', 15.25, 20);