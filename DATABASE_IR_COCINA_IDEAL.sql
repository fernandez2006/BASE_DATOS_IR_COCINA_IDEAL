create database IR_COCINA_IDEAL
 
use IR_COCINA_IDEAL

create table sede_sala_ventas(
id_sede int primary key not null,
num_trabajadores varchar (100) not null,
telefono numeric (10) not null,
dir varchar (80) not null
)

create table zona_produccion(
id_produccion int primary key not null,
ubicacion varchar (100) not null,
id_proyecto int not null
)

create table trabajadores (
id_trabajadores int primary key not null,
telefono numeric (10) not null,
cargo varchar (100) not null,
id_proyecto int not null,
nomina decimal not null,
)

create table proyecto_cocina (
id_proyecto int primary key not null,
lugar_proyecto varchar (100) not null,
costo float not null,
diseño varchar (100) not null,
trabajador_asignado varchar (100) not null
)

create table cliente (
id_cliente int primary key not null,
nombre varchar (80) not null,
telefono numeric (10) not null,
correo varchar (30) not null,
id_proyecto int not null,
dir varchar (100) not null
)

create table factura (
id_factura int primary key not null,
nombre_cliente varchar (100) not null,
id_proyecto int not null,
total decimal not null,
fecha date not null,
correo varchar (30) not null
)

create table sede_sala_ventas_proyecto_cocina (
id_sede int not null,
id_proyecto int not null,
constraint foranea1 foreign key (id_sede) references sede_sala_ventas (id_sede),
constraint foranea2 foreign key (id_proyecto) references proyecto_cocina (id_proyecto)
)

create table trabajadores_proyecto_cocina (
id_trabajadores int not null,
id_proyecto int not null,
constraint foranea3 foreign key (id_trabajadores) references trabajadores (id_trabajadores),
constraint foranea4 foreign key (id_proyecto) references proyecto_cocina (id_proyecto)
) 
use IR_COCINA_IDEAL

