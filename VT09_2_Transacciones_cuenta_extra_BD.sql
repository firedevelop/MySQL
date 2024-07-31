-- Active: 1709107611742@@localhost@3306@contacts
-- EJEMPLO NUEVA BASE DE DATOS
CREATE DATABASE cuentas_banco;
USE cuentas_banco;

-- Crear nueva tabla
CREATE TABLE CUENTAS (
    num_cuenta INT PRIMARY KEY,
    cod_cliente INT UNIQUE,
    nombre_cliente VARCHAR(20),
    saldo_total DECIMAL(11 , 2 ) CHECK (saldo_total >= 0)
);

CREATE TABLE MOVIMIENTOS_CUENTAS (
	num_movi INT PRIMARY KEY AUTO_INCREMENT,
    cliente_ori INT,
	cliente_des INT,
    dinero_traspaso DECIMAL(11 , 2 ) CHECK (dinero_traspaso <= 999),
    concepto_movi VARCHAR(60), 
    fecha_hora_umov DATETIME ,
    CONSTRAINT cod_cli_ori_fk FOREIGN KEY (cliente_ori)
        REFERENCES cuentas (cod_cliente)
        ON UPDATE CASCADE ON DELETE SET NULL,
	CONSTRAINT cod_cli_des_fk FOREIGN KEY (cliente_des)
        REFERENCES cuentas (cod_cliente)
        ON UPDATE CASCADE ON DELETE SET NULL 
) AUTO_INCREMENT = 1001;
