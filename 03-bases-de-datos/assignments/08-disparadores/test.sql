create database if not exists test;
use test;

create table alumnos (
    id int unsigned auto_increment primary key,
    nombre varchar(50),
    apellido1 varchar(50),
    apellido2 varchar(50),
    nota float
);

