select nombre from pokemon;
select * from pokemon;
select * from pokemon where peso < 10;
select * from pokemon_tipo; #los pokemon estan como numero_pokedex
select * from tipo; #tipo agua id=1
select p.nombre from pokemon as p inner join pokemon_tipo as pkt on pkt.numero_pokedex = p.numero_pokedex 
where pkt.id_tipo = (select id_tipo from tipo where nombre='Agua');
select p.nombre from pokemon as p inner join pokemon_tipo as pkt on pkt.numero_pokedex = p.numero_pokedex 
where pkt.id_tipo in ((select id_tipo from tipo where nombre='Agua'),(select id_tipo from tipo where nombre='Tierra'),(select id_tipo from tipo where nombre='Fuego')) order by pkt.id_tipo;
select p.nombre from pokemon as p inner join pokemon_tipo as pkt on pkt.numero_pokedex = p.numero_pokedex 
where pkt.id_tipo in ((select id_tipo from tipo where nombre='Volador'),(select id_tipo from tipo where nombre='Fuego'));
select nombre from pokemon where numero_pokedex in (select numero_pokedex from estadisticas_base where ps>200);
select nombre from pokemon 
where numero_pokedex = (select pokemon_origen from evoluciona_de 
where pokemon_evolucionado = (select numero_pokedex from pokemon where nombre='Arbok'));
select nombre from pokemon 
where numero_pokedex in (select id_forma_evolucion from forma_evolucion 
where tipo_evolucion = (select id_forma_evolucion from tipo_evolucion where tipo_evolucion='Intercambio'));
select max(prioridad),nombre from movimiento; 
select max(peso), nombre from pokemon;
select m.nombre, t.nombre from movimiento as m inner join tipo as t on m.id_tipo = t.id_tipo 
where m.potencia = (select max(potencia) from movimiento);
select count(*), t.nombre from movimiento as m join tipo as t on m.id_tipo = t.id_tipo
group by m.id_tipo;
select m.nombre, m.descripcion from movimiento as m join movimiento_efecto_secundario as mes on m.id_movimiento = mes.id_movimiento
where id_efecto_secundario = (select id_efecto_secundario from efecto_secundario where efecto_secundario='Envenenamiento leve');
select * from movimiento where descripcion like '%causa daño%' order by nombre;
select nombre from movimiento 
where id_movimiento in (select id_movimiento from pokemon_movimiento_forma 
where numero_pokedex = (select numero_pokedex from pokemon where nombre='Pikachu'));
#16 pendiente

select * from movimiento;
select * from pokemon_movimiento_forma; 
select * from forma_aprendizaje;
select * from tipo_forma_aprendizaje; #mt es id_tipoaprendizaje=1
select * from mt;



