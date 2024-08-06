-- Active: 1722498295978@@127.0.0.1@3306@employees
drop user a1@localhost;
select * from mysql.user;
create user a1@localhost IDENTIFIED by 'a1';
ALTER USER 'a1'@'localhost' 
IDENTIFIED BY 'a1' 
PASSWORD EXPIRE INTERVAL 10 DAY;
GRANT ALL PRIVILEGES ON *.* TO 'a1'@'localhost' WITH GRANT OPTION;

alter user a1@localhost WITH
MAX_CONNECTIONS_PER_HOUR 8 
MAX_USER_CONNECTIONS 8 
MAX_QUERIES_PER_HOUR 8 
MAX_UPDATES_PER_HOUR 8;
revoke all PRIVILEGES on *.* from a1@localhost;
revoke GRANT option on *.* from a1@localhost;
grant select, insert, update on *.* to a1@localhost;
revoke insert, update on *.* from a1@localhost;
show grants for a1@localhost;


/* see foreign key relation */
SELECT 
    TABLE_NAME,
    COLUMN_NAME,
    CONSTRAINT_NAME,    
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    TABLE_SCHEMA = 'test'
    AND TABLE_NAME = 'orders'
    AND REFERENCED_TABLE_NAME IS NOT NULL;


/* see constraints */
SELECT *
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'test'
  AND TABLE_NAME = 'orders';

  mysql < employees.sql
