select nombre from producto;
select nombre,precio from producto;
select * from producto;
select nombre,round(precio) from producto;
select distinct codigo_fabricante from producto;
select nombre from fabricante order by nombre;
select nombre from producto order by nombre,precio desc;
select * from fabricante limit 5;
select * from producto order by precio limit 1;
select * from producto order by precio desc limit 1;
select nombre from producto where precio<=120;
select * from producto where precio between 60 and 200;
select * from producto where codigo_fabricante in (1,3,5);
select * from producto where nombre like '%portatil%';
select p.codigo,p.nombre,f.nombre as Nombre_fabricante ,f.codigo as Codigo_fabricante from producto as p join fabricante as f on p.codigo_fabricante=f.codigo;
select p.nombre,f.nombre as nombre_fabricante ,precio  from producto as p join fabricante as f on p.codigo_fabricante=f.codigo order by f.nombre;
select p.nombre,precio,f.nombre as Nombre_fabricante from producto as p join fabricante as f on p.codigo_fabricante=f.codigo order by precio limit 1;
select * from producto where codigo_fabricante = (select codigo from fabricante where nombre='Lenovo');
select * from producto where precio>200 and codigo_fabricante = (select codigo from fabricante where nombre='Crucial');
select * from producto 
where codigo_fabricante in ((select codigo from fabricante where nombre = 'Asus'), (select codigo from fabricante where nombre = 'Hewlett-Packard'));
select p.nombre, precio, f.nombre as fabricante 
from producto as p join fabricante as f on p.codigo_fabricante=f.codigo 
where precio>=180 order by precio desc, nombre;
select f.nombre as Fabricante, p.nombre as Producto from fabricante as f left join producto as p on p.codigo_fabricante=f.codigo; 
select nombre from fabricante 
where codigo not in (select codigo_fabricante from producto);
select * from producto where codigo_fabricante = (select codigo from fabricante where nombre='Lenovo');
select * from producto 
where precio = (select max(precio) from producto where codigo_fabricante = (select codigo from fabricante where nombre='Lenovo'));
select max(precio),nombre from producto where codigo_fabricante = (select codigo from fabricante where nombre = 'Lenovo'); 
select * from producto where codigo_fabricante = (select codigo from fabricante where nombre='Asus') 
and precio > (select avg(precio) from producto where codigo_fabricante = (select codigo from fabricante where nombre='Asus'));
select nombre from fabricante where codigo in (select codigo_fabricante from producto);
select nombre from fabricante where codigo not in (select codigo_fabricante from producto);

 
select count(*) from producto where codigo_fabricante = (select codigo from fabricante where nombre='Lenovo'); /*parte del ultimo item del ejercicio 2*/



