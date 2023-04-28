create database ferreteria;
use ferreteria;

create table marca(id_marca integer not null,
nombre varchar(20),
primary key (id_marca));

create table tipo_herramienta(id_tipo_herramienta integer not null,
herramienta varchar(20),
primary key (id_tipo_herramienta));

create table colaboradores(id_colaboradores integer not null,
nombre varchar(20),
direccion varchar(20),
puesto varchar(20),
telefono integer,
primary key(id_colaboradores));

create table zona(id_zona integer not null,
direccion varchar(20),
primary key(id_zona));

create table departamento(id_departamento integer not null,
direccion varchar(20),
primary key(id_departamento));

create table ciudad(id_ciudad integer not null,
direccion varchar(20),
primary key(id_ciudad));

create table colonia(id_colonia integer not null,
direccion varchar(20),
primary key(id_colonia));

create table municipio(id_municipio integer not null,
direccion varchar(20),
primary key(id_municipio));

create table clientes(id_clientes integer not null,
nombre varchar(20),
telefono integer,
edad integer,
id_zona integer,
id_departamento integer,
id_ciudad integer,
id_colonia integer,
id_municipio integer,
foreign key (id_zona) references zona(id_zona),
foreign key (id_departamento) references departamento(id_departamento),
foreign key (id_ciudad) references ciudad(id_ciudad),
foreign key (id_colonia) references colonia(id_colonia),
foreign key (id_municipio) references municipio(id_municipio),
primary key (id_clientes));

create table inventario( id_inventario integer not null,
nombre varchar(20),
descripcion varchar(50),
stock integer,
costo integer,
precio integer,
cantidad integer,
id_marca integer,
id_tipo_herramienta integer,
primary key (id_inventario),
foreign key (id_marca) references marca(id_marca),
foreign key (id_tipo_herramienta) references tipo_herramienta (id_tipo_herramienta));

create table factura( id_factura integer not null,
id_cliente integer,
id_inventario integer,
id_colaboradores integer,
fecha date,
total integer,
foreign key (id_cliente) references clientes(id_clientes),
foreign key (id_inventario) references inventario(id_inventario),
foreign key (id_colaboradores) references colaboradores(id_colaboradores),
primary key (id_factura));

create table asignar_puestos( id_asignar_puestos integer not null,
puesto varchar(20),
id_colaboradores integer,
foreign key (id_colaboradores) references colaboradores(id_colaboradores));

insert into marca(id_marca,nombre)
values(1,'Truper');
insert into marca(id_marca,nombre)
values(2,'Phillips');
insert into marca(id_marca,nombre)
values(3,'Makita');
insert into marca(id_marca,nombre)
values(4,'DeWalt');
insert into marca(id_marca,nombre)
values(5,'Bosch');

insert into tipo_herramienta(id_tipo_herramienta,herramienta)
values(1,'Martillo');
insert into tipo_herramienta(id_tipo_herramienta,herramienta)
values(2,'Destornillador');
insert into tipo_herramienta(id_tipo_herramienta,herramienta)
values(3,'Serrucho');
insert into tipo_herramienta(id_tipo_herramienta,herramienta)
values(4,'Alicate');
insert into tipo_herramienta(id_tipo_herramienta,herramienta)
values(5,'Metro');

insert into colaboradores(id_colaboradores,nombre,direccion,puesto,telefono)
values(1,'Esteban','7calle 16-87','vendedor','56483598');
insert into colaboradores(id_colaboradores,nombre,direccion,puesto,telefono)
values(2,'Marcos','9calle 23-12','cajero','64985468');
insert into colaboradores(id_colaboradores,nombre,direccion,puesto,telefono)
values(3,'Julian','10calle 32-56','repartidor','31652316');
insert into colaboradores(id_colaboradores,nombre,direccion,puesto,telefono)
values(4,'Maria','6calle 25-54','vendedor','64821359');
insert into colaboradores(id_colaboradores,nombre,direccion,puesto,telefono)
values(5,'Roberto','2calle 34-64','conserje','31658423');

insert into zona(id_zona,direccion)
values(1,'zona3');
insert into zona(id_zona,direccion)
values(2,'zona6');
insert into zona(id_zona,direccion)
values(3,'zona10');
insert into zona(id_zona,direccion)
values(4,'zona1');
insert into zona(id_zona,direccion)
values(5,'zona5');

insert into departamento(id_departamento,direccion)
values(1,'Alta Verapaz');
insert into departamento(id_departamento,direccion)
values(2,'Baja Verapaz');
insert into departamento(id_departamento,direccion)
values(3,'Chimaltenago');
insert into departamento(id_departamento,direccion)
values(4,'Chiquimula');
insert into departamento(id_departamento,direccion)
values(5,'Guatemala');

insert into ciudad(id_ciudad,direccion)
values(1,'Guatemala');
insert into ciudad(id_ciudad,direccion)
values(2,'Guatemala');
insert into ciudad(id_ciudad,direccion)
values(3,'Guatemala');
insert into ciudad(id_ciudad,direccion)
values(4,'Guatemala');
insert into ciudad(id_ciudad,direccion)
values(5,'Guatemala');

insert into colonia(id_colonia,direccion)
values(1,'Quetzal');
insert into colonia(id_colonia,direccion)
values(2,'Modelo I');
insert into colonia(id_colonia,direccion)
values(3,'Popular');
insert into colonia(id_colonia,direccion)
values(4,'Entre rios');
insert into colonia(id_colonia,direccion)
values(5,'La independencia');

insert into municipio(id_municipio,direccion)
values(1,'Amatitlán');
insert into municipio(id_municipio,direccion)
values(2,'Chinautla');
insert into municipio(id_municipio,direccion)
values(3,'Mixco');
insert into municipio(id_municipio,direccion)
values(4,'Palencia');
insert into municipio(id_municipio,direccion)
values(5,'San José del Golfo');

insert into clientes(id_clientes,nombre,telefono,edad,id_zona,id_departamento,id_ciudad,id_colonia,id_municipio)
values(1,'Jorge','34856485','23',2,4,1,5,3);
insert into clientes(id_clientes,nombre,telefono,edad,id_zona,id_departamento,id_ciudad,id_colonia,id_municipio)
values(2,'Andres','34985612','31',1,4,2,5,3);
insert into clientes(id_clientes,nombre,telefono,edad,id_zona,id_departamento,id_ciudad,id_colonia,id_municipio)
values(3,'Raul','65894521','19',2,3,5,1,4);
insert into clientes(id_clientes,nombre,telefono,edad,id_zona,id_departamento,id_ciudad,id_colonia,id_municipio)
values(4,'Alan','44175021','22',5,4,2,1,3);
insert into clientes(id_clientes,nombre,telefono,edad,id_zona,id_departamento,id_ciudad,id_colonia,id_municipio)
values(5,'Pablo','47008816','34',1,5,2,4,3);

insert into inventario(id_inventario,id_tipo_herramienta,id_marca,nombre,descripcion,stock,costo,precio,cantidad)
values(1,1,5,'Martillo','sirve para martillar','53','25','34','2');
insert into inventario(id_inventario,id_tipo_herramienta,id_marca,nombre,descripcion,stock,costo,precio,cantidad)
values(2,3,1,'Serrucho','sirve para cortar madera','25','45','51','16');
insert into inventario(id_inventario,id_tipo_herramienta,id_marca,nombre,descripcion,stock,costo,precio,cantidad)
values(3,4,3,'alicate','sirve para prensar materiales','34','23','34','15');
insert into inventario(id_inventario,id_tipo_herramienta,id_marca,nombre,descripcion,stock,costo,precio,cantidad)
values(4,2,2,'Destornillador','sirve para quitar tornillos','59','50','64','5');
insert into inventario(id_inventario,id_tipo_herramienta,id_marca,nombre,descripcion,stock,costo,precio,cantidad)
values(5,5,4,'Metro','sirve para medir','14','23','15','64');

insert into factura( id_factura,id_cliente,id_inventario,id_colaboradores,fecha,total)
values(1,2,3,4,10/08/2021,'59');
insert into factura( id_factura,id_cliente,id_inventario,id_colaboradores,fecha,total)
values(2,5,4,2,03/08/2021,'96');
insert into factura( id_factura,id_cliente,id_inventario,id_colaboradores,fecha,total)
values(3,3,2,1,15/08/2021,'57');
insert into factura( id_factura,id_cliente,id_inventario,id_colaboradores,fecha,total)
values(4,1,5,2,02/08/2021,'114');
insert into factura( id_factura,id_cliente,id_inventario,id_colaboradores,fecha,total)
values(5,5,1,2,09/08/2021,'38');

insert into asignar_puestos( id_asignar_puestos,puesto,id_colaboradores)
values(1,'vendedor',1);
insert into asignar_puestos( id_asignar_puestos,puesto,id_colaboradores)
values(2,'vendedor',4);
insert into asignar_puestos( id_asignar_puestos,puesto,id_colaboradores)
values(3,'cajero',2);
insert into asignar_puestos( id_asignar_puestos,puesto,id_colaboradores)
values(4,'repartidor',3);
insert into asignar_puestos( id_asignar_puestos,puesto,id_colaboradores)
values(5,'conserje',5);

select * from clientes;
select nombre from inventario;
select count(nombre) as conteo_marca from marca;
select count(nombre) as conteo_clien_zona from clientes where id_zona=1;
select count(nombre) as conteo_clien_depart from clientes where id_departamento=5;
select sum(stock) as suma_total_herram from inventario;
select sum(stock) as suma_total_herram_marca from inventario where id_marca=3;
select sum(stock) as suma_total_herram_tipo from inventario where id_tipo_herramienta=5;
select count(fecha) as conteo_factura_fecha from factura where fecha between 01/08/2021 and 20/08/2021;
select sum(total) as suma_vendida_fecha from factura where fecha between 01/08/2021 and 20/08/2021;
select clientes.nombre as nombre_cliente_factura from clientes,factura where factura.id_cliente=2 and factura.id_cliente=id_clientes;
select marca.nombre as marca_herramienta,tipo_herramienta.herramienta as tipo_herramienta  from inventario,marca,tipo_herramienta where marca.id_marca=3 and marca.id_marca=inventario.id_marca and inventario.id_tipo_herramienta=tipo_herramienta.id_tipo_herramienta;
select marca.nombre as marca_herramienta,tipo_herramienta.herramienta as tipo_herramienta from inventario,marca,tipo_herramienta where marca.nombre='Truper' and marca.id_marca=inventario.id_marca and inventario.id_tipo_herramienta=tipo_herramienta.id_tipo_herramienta