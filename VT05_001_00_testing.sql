-- Active: 1709107611742@@localhost@3306@contacts
select avg(saldo) from users where marca=('lg');
select usuario from users where nivel=1 or nivel=3 order by RAND();
select usuario from users where nivel in(1,3);
select nombre,marca from users where marca <> 'LG';
select usuario from users where nivel=3;
select count(idx),sexo from users group by sexo order by sexo;
select distinct compañia from users order by compañia desc;
select sum(saldo) from users where compañia='telcel';