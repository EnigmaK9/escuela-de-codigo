CREATE TABLE Fabricante (
    codigo INT(10) PRIMARY KEY,
    Nombre VARCHAR(100)
);

CREATE TABLE Producto (
    Código INT(10) PRIMARY KEY,
    nombre VARCHAR(100),
    Precio DOUBLE,
    Código_fabricante INT(10),
    FOREIGN KEY (Código_fabricante) REFERENCES Fabricante(codigo)
);
