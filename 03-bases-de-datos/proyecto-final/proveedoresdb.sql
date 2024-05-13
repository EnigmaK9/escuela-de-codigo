create database if not exists proveedoresdb;
use proveedoresdb;

create table proveedor (
  codigo_proveedor varchar(255) not null,
  nombre varchar(255),
  direccion varchar(255),
  ciudad varchar(255),
  provincia varchar(255),
  primary key (codigo_proveedor)
);

create table categoria (
  codigo_categoria varchar(255) not null,
  nombre varchar(255),
  primary key (codigo_categoria)
);

create table pieza (
  codigo_pieza varchar(255) not null,
  nombre varchar(255),
  color varchar(255),
  precio decimal(10, 2),
  codigo_categoria varchar(255) not null,
  primary key (codigo_pieza),
  foreign key (codigo_categoria) references categoria(codigo_categoria)
);

create table suministro (
  codigo_proveedor varchar(255) not null,
  codigo_pieza varchar(255) not null,
  fecha date,
  cantidad int,
  primary key (codigo_proveedor, codigo_pieza, fecha),
  foreign key (codigo_proveedor) references proveedor(codigo_proveedor),
  foreign key (codigo_pieza) references pieza(codigo_pieza)
);
