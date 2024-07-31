-- Active: 1709107611742@@localhost@3306@contacts
select nombre, nivel as "nivel 0 a 2", marca from users
    where nivel BETWEEN 0 and 2
        and marca not in ('lg', 'sony')
        and nombre BETWEEN 'daniel' and 'valentina'
order by nivel asc;

select orders.order_id, order_date, users.nombre, products.product_name
from users
inner join orders
    on orders.user_id = users.idx
inner join products
    on orders.product_id = products.product_id
order by order_id;

select idx from users
UNION All
select order_id from orders;


SELECT name, country_code from cities
    where name = 'Madrid'
UNION
select name, capital  from countries
    where name = 'Madrid';

select name from countries
where iso2 = ANY
    (select country_code from cities );

SELECT COUNT(idx) AS users, marca, SUM(saldo) AS total_saldo
FROM users
GROUP BY marca
HAVING SUM(saldo) >= 200 AND SUM(saldo) < 1000
ORDER BY total_saldo DESC;

select * from users;
select * from countries;

select count(users.country) as "Country ID", countries.name
from users
inner join countries on users.country = countries.id
where countries.name like 'United%'
group by countries.name
having count(users.idx) > 2
order by count(users.idx) desc;

insert into users(city)
select countries.id from countries;

SELECT SUM(idx) AS total, marca,
    CASE
        WHEN SUM(idx) >= 50 THEN 'gold'
        WHEN SUM(idx) >= 25 THEN 'silver'
        ELSE 'bronze'
    END AS Ranking
FROM users
WHERE saldo IS NOT NULL
GROUP BY marca
HAVING marca != 'LG'
ORDER BY total DESC;

