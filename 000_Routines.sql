-- Active: 1722498295978@@127.0.0.1@3306@employees
-- DELETE ROUTINE
drop Procedure if exists hi;

delimiter //
create Procedure hi(in greet varchar(10), in username varchar(10))
begin
    select concat (greet, ' ', username);
end //

delimiter;

call hi ('hi', 'john');

