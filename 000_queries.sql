CREATE TABLE users(
	id INT PRIMARY KEY,
    name CHAR(20) NOT NULL,
    id_country INT DEFAULT 1
);


DROP TABLE users;


SELECT * FROM employees;


/* DUPLICATE TABLE WITH CONTENT */ 
CREATE TABLE users2 LIKE users;
INSERT INTO users2 SELECT * FROM users;


/* DUPLICATE TABLE EMPTY */
CREATE TABLE users2 LIKE users;


/* RENAME */
ALTER TABLE users3 RENAME users1;


/* DROP COLUMN */
ALTER TABLE users2 DROP COLUMN phone;

/* DROP PRIMARY ADVANCE KEY OF COLUMN WITH FOREINGN KEY  */
/* show create table users2;
    here you see the primary key of users */
/* ALTER TABLE `users` DROP PRIMARY KEY;
    delete the primary key */
/* unsigned means you only allow positive numbers, and this allow you duplicate the range of values that can be stored. */
show create table users2;
ALTER TABLE `users` MODIFY COLUMN `id` MEDIUMINT UNSIGNED NOT NULL;
ALTER TABLE `users` DROP PRIMARY KEY;

/* DROP PRIMARY KEY SIMPLE */
ALTER TABLE users DROP PRIMARY KEY;

/* ADD PRIMARY KEY */
ALTER TABLE users ADD PRIMARY KEY(id);

/* ADD COLUMN */
alter table users add extension int;

/* ADD AUTOINCREMENT */
alter table users modify id int auto_increment;
/* or */
ALTER TABLE `z` ADD COLUMN `new_id` INT UNSIGNED NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`new_id`);

