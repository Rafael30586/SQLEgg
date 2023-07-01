select * from empleados;
select * from departamentos;
select distinct nombre_depto from departamentos;
select nombre, sal_emp from empleados;
select distinct comision_emp from empleados;
select * from empleados where cargo_emp='Secretaria';
select * from empleados where cargo_emp='vendedor' order by nombre;
select nombre, cargo_emp from empleados order by sal_emp;
select nombre_jefe_depto from departamentos where ciudad='Ciudad real';
select nombre as Nombre,cargo_emp as Cargo from empleados; /* Buscar informacion sobre item 10 ejercicio 1 */
select sal_emp as Salario,comision_emp as Comision from empleados where id_depto=2000 order by comision_emp;
select nombre as Nombre, (sal_emp + comision_emp + 500) as Total from empleados where id_depto=3000 order by nombre;
select * from empleados where nombre like 'j%';
select nombre as Nombre, sal_emp as Salario, comision_emp as Comision, (sal_emp + comision_emp) as Total 
from empleados where comision_emp>1000;
select nombre as Nombre, sal_emp as Salario, comision_emp as Comision, (sal_emp + comision_emp) as Total 
from empleados where comision_emp=0;
select * from empleados where comision_emp>sal_emp;
select * from empleados where comision_emp<=(sal_emp*0.3);
select * from empleados where nombre not like '%ma%';
select nombre_depto from departamentos 
where nombre_depto='ventas' or nombre_depto='investigacion' or nombre_depto='mantenimiento';
select MAX(sal_emp) as salario_mas_alto from empleados; 
select MAX(nombre) from empleados;
select MAX(sal_emp) as Salario_maximo, MIN(sal_emp) as Salario_minimo, (MAX(sal_emp)-MIN(sal_emp)) as Diferencia from empleados;
select AVG(sal_emp) as salario_promedio, id_depto as departamento 
from empleados group by id_depto;
select count(*), id_depto from empleados group by id_depto having count(*)>3;
select count(*), id_depto from empleados group by id_depto having count(*)=0; 
select nombre,nombre_depto,nombre_jefe_depto from empleados join departamentos on empleados.id_depto=departamentos.id_depto;
select nombre, sal_emp as Salario from empleados where sal_emp > (select AVG(sal_emp) from empleados) order by id_depto;

 select count(*),id_depto from empleados group by id_depto;