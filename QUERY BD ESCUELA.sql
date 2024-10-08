create database escuela

use escuela

create table materia(
clave_materia int primary key,
nombre_materia varchar (20),
creditos_materia tinyint
)

create table profesor (
clave_profesor int primary key,
nombre_profesor varchar (100),
dir_profesor varchar (100),
telefono_profesor bigint,
horario  datetime,
)

create table carrera(
id_carrera int primary key,
nombre_carrera varchar (20),
dura_c float)

create table alumno(
matricula_alumno varchar (10) primary key,
nombre_alumno varchar  (100),
edad_alumno tinyint,
semestre_alumno float,
genero_alumno varchar (20),
id_carrera int,
constraint apodo foreign key ( id_carrera )  references carrera (id_carrera))

create table materia_alumno(
clave_materia int,
matricula_alumno varchar (10),
constraint apodo1 foreign key (clave_materia) references materia (clave_materia),
constraint apodo2 foreign key (matricula_alumno) references alumno (matricula_alumno))

create table materia_profesor (
clave_materia int,
clave_profesor int,
constraint apodo3 foreign key (clave_materia) references materia (clave_materia),
constraint apodo4 foreign key (clave_profesor) references profesor (clave_profesor)
)

create table alumno_profesor (
matricula_alumno varchar (10),
clave_profesor int,
constraint apodo5 foreign key (matricula_alumno) references alumno (matricula_alumno),
constraint apodo6 foreign key (clave_profesor) references profesor (clave_profesor)
)