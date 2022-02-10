CREATE DATABASE Frunacol;

create table if not exists proveedor

(
nit int(5) primary key unique not null,
nombre varchar (45) not null,
direccion varchar (45) not null,
telefono int (10) not null,
producto varchar (45) not null

);


create table if not exists remision_entrada

(
id int(10) unique not null,
fecha_ingreso varchar (45) not null,
nit_proveedor int(5) not null,
codigo_articulos int (10) not null,
cantidad_articulos int (10) not null,
foto blob not null 

);


create table if not exists proveedor_entrada

(
nit_proveedor int(5) not null,
id_remision_entrada int(10) unique not null,
ultima_actualizacion timestamp,

constraint fk_Nit_Proveedor
foreign key (nit_proveedor)
references proveedor (nit),

constraint fk_TipoDocCLIENTE
foreign key (idTipoDoc)
references TipoDoc (idTipoDoc)

);
