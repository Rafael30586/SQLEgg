select codigo_oficina,ciudad from oficina;
select telefono,ciudad from oficina where pais='España';
select nombre,apellido1,apellido2,email from empleado where codigo_jefe=7;
select puesto,nombre,apellido1,apellido2,email from empleado where puesto='Director general'; #tratar de mejorar esta consulta
select puesto,nombre,apellido1,apellido2 from empleado where puesto != 'Representante ventas';
select nombre_cliente from cliente where pais='Spain';
select distinct estado from pedido;
select distinct codigo_cliente from pago where fecha_pago like '2008%';
select codigo_pedido,codigo_cliente,fecha_esperada,fecha_entrega from pedido where fecha_entrega > fecha_esperada;
#sigue el 10

select * from oficina;
select * from empleado;
select * from cliente;
select * from pedido;
select * from pago;

