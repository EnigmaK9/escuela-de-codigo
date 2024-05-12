

select fabricante.nombre, max(producto.precio),min(producto.precio),avg(producto.precio),count(*) 
from producto 
INNER JOIN fabricante on producto.codigo_fabricante = fabricante.codigo
group by fabricante.codigo having avg(producto,precio) > 200
operaciones
insert into fabricante values (12,"ASUS")