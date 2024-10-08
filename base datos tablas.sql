create database concesionario;
use concesionario;
use master;
alter database concesionario modify name = consecionarioCesde;
drop database concesionarioCesde;
create table clientes (
nif int not null, 
nombres varchar (30) not null,
direccion varchar (30) not null,
cuidad varchar (20) not null,
telefono numeric (10) not null,
cod_interno int not null
);

create table revision(
cod_rev int,
cam_filtro bit,
cam_fren bit, 
cam_acei bit,
cam_gen bit, 

);
select *from clientes;