-- creación de la dimensión almacén
create table dimensión_almacén (
    idalmacén integer primary key,
    nombre varchar(100),
    dirección varchar(100),
    c_p integer,
    localidad varchar(50),
    provincia varchar(50)
);

-- creación de la dimensión producto
create table dimensión_producto (
    idproducto integer primary key,
    nombre varchar(100),
    categoría varchar(50),
    subcategoría varchar(50),
    marca varchar(50),
    precio double,
    altura double
);

-- creación de la dimensión marca
create table dimensión_marca (
    idmarca integer primary key,
    marca varchar(50),
    nombremarca varchar(50)
);

-- creación de la dimensión tiempo
create table dimensión_tiempo (
    idtiempo integer primary key,
    fecha date,
    año integer,
    trimestre varchar(10),
    mes varchar(20),
    semana varchar(20),
    diasemana varchar(20)
);

-- creación de la dimensión cliente
create table dimensión_cliente (
    idcliente integer primary key,
    nombre varchar(100),
    sexo varchar(10),
    edad integer,
    fecha_registro date
);

-- creación de la tabla de hechos ventas
create table hechos_ventas (
    idventas integer primary key,
    idproducto integer,
    idtiempo integer,
    idcliente integer,
    cantidad integer,
    precio double,
    foreign key (idproducto) references dimensión_producto(idproducto),
    foreign key (idtiempo) references dimensión_tiempo(idtiempo),
    foreign key (idcliente) references dimensión_cliente(idcliente)
);
