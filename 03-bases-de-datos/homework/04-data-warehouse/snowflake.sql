-- creación de la dimensión almacén
create table dimension_almacen (
    almacen_id integer primary key,
    nombre varchar(100),
    direccion varchar(100),
    codigo_postal integer,
    localidad varchar(50),
    provincia varchar(50)
);

-- creación de la dimensión producto
create table dimension_producto (
    producto_id integer primary key,
    nombre varchar(100),
    categoria varchar(50),
    subcategoria varchar(50),
    marca varchar(50),
    precio double precision,
    altura double precision,
    marca_id integer,
    foreign key (marca_id) references dimension_marca(marca_id)
);

-- creación de la dimensión marca
create table dimension_marca (
    marca_id integer primary key,
    nombre_marca varchar(50)
);

-- creación de la dimensión tiempo
create table dimension_tiempo (
    tiempo_id integer primary key,
    fecha date,
    anio integer,
    trimestre varchar(10),
    mes varchar(20),
    semana varchar(20),
    dia_semana varchar(20)
);

-- creación de la dimensión cliente
create table dimension_cliente (
    cliente_id integer primary key,
    nombre varchar(100),
    sexo varchar(10),
    edad integer,
    fecha_registro date
);

-- creación de la tabla de dimensión tipo
create table dimension_tipo (
    tipo_id integer primary key,
    descripcion varchar(100)
);

-- creación de la tabla dimensión promoción
create table dimension_promocion (
    promocion_id integer primary key,
    nombre varchar(100),
    tipo varchar(50),
    costo double precision,
    inicio date,
    fin date,
    tipo_id integer,
    foreign key (tipo_id) references dimension_tipo(tipo_id)
);

-- creación de la tabla de hechos ventas
create table hechos_ventas (
    ventas_id integer primary key,
    producto_id integer,
    almacen_id integer,
    tiempo_id integer,
    cliente_id integer,
    promocion_id integer,
    unidades integer,
    precio double precision,
    foreign key (producto_id) references dimension_producto(producto_id),
    foreign key (almacen_id) references dimension_almacen(almacen_id),
    foreign key (tiempo_id) references dimension_tiempo(tiempo_id),
    foreign key (cliente_id) references dimension_cliente(cliente_id),
    foreign key (promocion_id) references dimension_promocion(promocion_id)
);
