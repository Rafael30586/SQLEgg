select * from jugadores order by nombre;
select nombre from jugadores where posicion='C' and peso > 200 order by nombre;
select nombre from equipos order by nombre;
select nombre from equipos where conferencia='East';
select * from equipos where ciudad like 'c%' order by nombre;
select nombre, nombre_equipo from jugadores order by nombre_equipo;
select * from jugadores where nombre_equipo = 'Raptors' order by nombre;
select e.puntos_por_partido, e.temporada from estadisticas as e inner join jugadores as j on e.jugador = j.codigo where j.nombre = 'Pau Gasol'; 
select e.puntos_por_partido from estadisticas as e inner join jugadores as j on e.jugador = j.codigo where j.nombre = 'Pau Gasol' and temporada = '04/05';
select round(sum(e.puntos_por_partido)) as puntos_totales,j.nombre 
from estadisticas as e join jugadores as j on e.jugador=j.codigo group by e.jugador;
select count(*),Nombre_equipo from jugadores group by Nombre_equipo; 
/*12*/
select j.nombre_equipo,e.conferencia,e.division from jugadores as j inner join equipos as e on j.Nombre_equipo = e.Nombre where altura = (select max(altura) from jugadores);
#14



select * from equipos;
select * from jugadores;
select * from estadisticas;
select * from partidos;
