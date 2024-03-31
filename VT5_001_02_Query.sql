-- Active: 1709107611742@@localhost@3306@contacts
/*
Listar los nombres de los usuarios
Calcular el saldo máximo de los usuarios de sexo “Mujer”
Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
Contar los usuarios sin saldo o inactivos
Listar el login de los usuarios con nivel 1, 2 o 3
Listar los números de teléfono con saldo menor o igual a 300
Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL
Contar el número de usuarios por compañía telefónica
Contar el número de usuarios por nivel
Listar el login de los usuarios con nivel 2
Mostrar el email de los usuarios que usan gmail
Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA

LEVEL 2

Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL
Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL
Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL
Mostrar el email de los usuarios que no usan yahoo
Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL
Listar el login y teléfono de los usuarios con compañia telefónica UNEFON
Listar las diferentes marcas de celular en orden alfabético descendentemente
Listar las diferentes compañias en orden alfabético aleatorio
Listar el login de los usuarios con nivel 0 o 2
Calcular el saldo promedio de los usuarios que tienen teléfono marca LG

LEVEL 3

Listar el login de los usuarios con nivel 1 o 3
Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY
Listar el login de los usuarios con nivel 3
Listar el login de los usuarios con nivel 0
Listar el login de los usuarios con nivel 1
Contar el número de usuarios por sexo
Listar el login y teléfono de los usuarios con compañia telefónica AT&T
Listar las diferentes compañias en orden alfabético descendentemente
Listar el logn de los usuarios inactivos
Listar los números de teléfono sin saldo
Calcular el saldo mínimo de los usuarios de sexo “Hombre”
Listar los números de teléfono con saldo mayor a 300


LEVEL 4

Contar el número de usuarios por marca de teléfono
Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
Listar las diferentes compañias en orden alfabético ascendentemente
Calcular la suma de los saldos de los usuarios de la compañia telefónica UNEFON
Mostrar el email de los usuarios que usan hotmail
Listar los nombres de los usuarios sin saldo o inactivos
Listar el login y teléfono de los usuarios con compañia telefónicaIUSACELL o TELCEL
Listar las diferentes marcas de celular en orden alfabético ascendentemente
Listar las diferentes marcas de celular en orden alfabético aleatorio
Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o UNEFON
Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
Calcular la suma de los saldos de los usuarios de la compañia telefónica TELCEL
*/

# Listar los nombres de los usuarios
SELECT nombre FROM tblUsuarios;

# Calcular el saldo máximo de los usuarios de sexo "Mujer"
SELECT MAX(saldo) FROM tblUsuarios WHERE sexo = 'M';

#Listar nombre y teléfono de los usuarios con teléfono NOKIA, BLACKBERRY o SONY
SELECT nombre, telefono FROM tblUsuarios WHERE marca IN('NOKIA', 'BLACKBERRY', 'SONY');

#Contar los usuarios sin saldo o inactivos
SELECT COUNT(*) FROM tblUsuarios WHERE NOT activo OR saldo <= 0;

#Listar el login de los usuarios con nivel 1, 2 o 3
SELECT usuario FROM tblUsuarios WHERE nivel IN(1, 2, 3);

#Listar los números de teléfono con saldo menor o igual a 300
SELECT telefono FROM tblUsuarios WHERE saldo <= 300;

#Calcular la suma de los saldos de los usuarios de la compañia telefónica NEXTEL
SELECT SUM(saldo) FROM tblUsuarios WHERE compañia = 'NEXTEL';

#Contar el número de usuarios por compañía telefónica
SELECT compañia, COUNT(*) FROM tblUsuarios GROUP BY compañia;

#Contar el número de usuarios por nivel
SELECT nivel, COUNT(*) FROM tblUsuarios GROUP BY nivel;

#Listar el login de los usuarios con nivel 2
SELECT usuario FROM tblUsuarios WHERE nivel = 2;

#Mostrar el email de los usuarios que usan gmail
SELECT email FROM tblUsuarios WHERE email LIKE '%gmail.com';

#Listar nombre y teléfono de los usuarios con teléfono LG, SAMSUNG o MOTOROLA
SELECT nombre, telefono FROM tblUsuarios WHERE marca IN('LG', 'SAMSUNG', 'MOTOROLA');


/* LEVEL 2 */

# Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG o SAMSUNG
SELECT nombre, telefono FROM tblUsuarios WHERE marca NOT IN('LG', 'SAMSUNG');

# Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia = 'IUSACELL';

# Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia <> "TELCEL";

# Calcular el saldo promedio de los usuarios que tienen teléfono marca NOKIA
SELECT AVG(saldo) FROM tblUsuarios WHERE marca = 'NOKIA';

# Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o AXEL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia IN('IUSACELL', 'AXEL');

# Mostrar el email de los usuarios que no usan yahoo
SELECT email FROM tblUsuarios WHERE email NOT LIKE '%yahoo.com';

# Listar el login y teléfono de los usuarios con compañia telefónica que no sea TELCEL o IUSACELL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia NOT IN('TELCEL', 'IUSACELL');

# Listar el login y teléfono de los usuarios con compañia telefónica UNEFON
SELECT usuario, telefono FROM tblUsuarios WHERE compañia = 'UNEFON';

# Listar las diferentes marcas de celular en orden alfabético descendentemente
SELECT DISTINCT marca FROM tblUsuarios ORDER BY marca DESC;

# Listar las diferentes compañias en orden alfabético aleatorio
SELECT DISTINCT compañia FROM tblUsuarios ORDER BY RAND();

# Listar el login de los usuarios con nivel 0 o 2
SELECT usuario FROM tblUsuarios WHERE nivel IN(0, 2);

# Calcular el saldo promedio de los usuarios que tienen teléfono marca LG
SELECT AVG(saldo) FROM tblUsuarios WHERE marca = 'LG';


/* LEVEL 3 */

# Listar el login de los usuarios con nivel 1 o 3
SELECT usuario FROM tblUsuarios WHERE nivel IN(1, 3);

# Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca BLACKBERRY 
SELECT nombre, telefono FROM tblUsuarios WHERE marca <> "BLACKBERRY";

# Listar el login de los usuarios con nivel 3
SELECT usuario FROM tblUsuarios WHERE nivel = 3;

# Listar el login de los usuarios con nivel 0
SELECT usuario FROM tblUsuarios WHERE nivel = 0;

# Listar el login de los usuarios con nivel 1
SELECT usuario FROM tblUsuarios WHERE nivel = 1;

# Contar el número de usuarios por sexo
SELECT sexo, COUNT(*) FROM tblUsuarios GROUP BY sexo;

# Listar el login y teléfono de los usuarios con compañia telefónica AT&T
SELECT usuario, telefono FROM tblUsuarios WHERE compañia = "AT&T";

# Listar las diferentes compañias en orden alfabético descendentemente
SELECT DISTINCT compañia FROM tblUsuarios ORDER BY compañia DESC;

# Listar el login de los usuarios inactivos
SELECT usuario FROM tblUsuarios WHERE NOT activo;

# Listar los números de teléfono sin saldo
SELECT telefono FROM tblUsuarios WHERE saldo <= 0;

# Calcular el saldo mínimo de los usuarios de sexo "Hombre"
SELECT MIN(saldo) FROM tblUsuarios WHERE sexo = 'H';

# Listar los números de teléfono con saldo mayor a 300
SELECT telefono FROM tblUsuarios WHERE saldo > 300;


/* LEVEL 4 */

# Contar el número de usuarios por marca de teléfono
SELECT marca, COUNT(*) FROM tblUsuarios GROUP BY marca;

# Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca LG
SELECT nombre, telefono FROM tblUsuarios WHERE marca <> "LG";

# Listar las diferentes compañias en orden alfabético ascendentemente
SELECT DISTINCT compañia FROM tblUsuarios ORDER BY compañia ASC;

# Calcular la suma de los saldos de los usuarios de la compañia telefónica UNEFON
SELECT SUM(saldo) FROM tblUsuarios WHERE compañia = 'UNEFON';

# Mostrar el email de los usuarios que usan hotmail
SELECT email FROM tblUsuarios WHERE email LIKE "%hotmail.com";

# Listar los nombres de los usuarios sin saldo o inactivos
SELECT nombre FROM tblUsuarios WHERE NOT activo OR saldo <= 0;

# Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o TELCEL
SELECT usuario, telefono FROM tblUsuarios WHERE compañia IN('IUSACELL', 'TELCEL');

# Listar las diferentes marcas de celular en orden alfabético ascendentemente
SELECT DISTINCT marca FROM tblUsuarios ORDER BY marca DESC;

# Listar las diferentes marcas de celular en orden alfabético aleatorio
SELECT DISTINCT marca FROM tblUsuarios ORDER BY RAND();

# Listar el login y teléfono de los usuarios con compañia telefónica IUSACELL o UNEFON
SELECT usuario, telefono FROM tblUsuarios WHERE compañia IN('IUSACELL', 'UNEFON');

# Listar nombre y teléfono de los usuarios con teléfono que no sea de la marca MOTOROLA o NOKIA
SELECT nombre, telefono FROM tblUsuarios WHERE marca NOT IN('MOTOROLA', 'NOKIA');

# Calcular la suma de los saldos de los usuarios de la compañia telefónica TELCEL
SELECT SUM(saldo) FROM tblUsuarios WHERE compañia = 'TELCEL';