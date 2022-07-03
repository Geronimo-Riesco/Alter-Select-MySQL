use LABORATORIO;

show tables;

/* ----------  Tabla Clientes_Neptuno ------------ */

ALTER TABLE Clientes_Neptuno
MODIFY COLUMN IDCliente varchar(5) primary key;

ALTER TABLE Clientes_Neptuno
MODIFY COLUMN NombreCompania varchar(100) not null;

ALTER TABLE Clientes_Neptuno
MODIFY COLUMN Pais varchar(15) not null;

select * from Clientes_Neptuno;

select NombreCompania, Ciudad, Pais from Clientes_Neptuno;

select NombreCompania, Ciudad, Pais from Clientes_Neptuno;
select NombreCompania, Ciudad, Pais from Clientes_Neptuno order by Pais;

select NombreCompania, Ciudad, Pais from Clientes_Neptuno;
select distinct NombreCompania, Ciudad, Pais from Clientes_Neptuno order by Ciudad;

select NombreCompania, Ciudad, Pais from Clientes_Neptuno;
select NombreCompania, Ciudad, Pais from Clientes_Neptuno order by Pais limit 10;

select NombreCompania, Ciudad, Pais from Clientes_Neptuno;
select NombreCompania, Ciudad, Pais from Clientes_Neptuno order by Pais limit 11,15;

select * from Clientes_Neptuno where Pais = 'Argentina';

select * from Clientes_Neptuno where Pais =! 'Argentina';

select * from Clientes_Neptuno
where Pais in ('Uruguay','Venezuela', 'Brasil', 'Argentina', 'Mexico') 
order by Pais, Ciudad; 

select * from Clientes_Neptuno where IDCliente like 'C%';

select * from Clientes_Neptuno where Ciudad like 'B%' and length(Ciudad) = 5;

/* ----------  Tabla Contactos ------------ */

ALTER TABLE Clientes RENAME Contactos;

/* ----------  Tabla Clientes ------------ */

ALTER TABLE Clientes
MODIFY COLUMN COD_CLIENTE varchar(7) primary key;

ALTER TABLE Clientes
MODIFY COLUMN Empresa varchar(100) not null;

ALTER TABLE Clientes
MODIFY COLUMN CIUDAD varchar(25) not null;

ALTER TABLE Clientes
MODIFY COLUMN TELEFONO int unsigned;

ALTER TABLE Clientes
MODIFY COLUMN RESPONSABLE varchar(30);

ALTER TABLE Pedidos
MODIFY COLUMN NUMERO_PEDIDO int unsigned primary key;

ALTER TABLE Pedidos
MODIFY COLUMN CODIGO_CLIENTE varchar(7) not null;

ALTER TABLE Pedidos
MODIFY COLUMN FECHA_PEDIDO date not null;

ALTER TABLE Pedidos
MODIFY COLUMN FORMA_PAGO enum('APLAZADO','CONTADO', 'TARJETA');

ALTER TABLE Pedidos
MODIFY COLUMN ENVIADO enum('SI','NO');

/* ----------  Tabla Productos ------------ */  

ALTER TABLE Productos
MODIFY COLUMN Cod_Producto int primary key;

ALTER TABLE Productos
MODIFY COLUMN SECCION varchar(20) not null;

ALTER TABLE Productos
MODIFY COLUMN NOMBRE varchar(40) not null;

ALTER TABLE Productos
MODIFY COLUMN IMPORTADO enum('VERDADERO','FALSO');

ALTER TABLE Productos
MODIFY COLUMN ORIGEN varchar(25) not null;

ALTER TABLE Productos
MODIFY COLUMN DIA int unsigned not null,
MODIFY COLUMN MES int unsigned not null,
MODIFY COLUMN ANO int unsigned not null;

/* ----------  Tabla Nacimiento------------ */  

describe nacimientos;

select * from nacimientos;

select * from nacimientos where SEMANAS < 20 order by SEMANAS;

select * from nacimientos 
where SEXO = 'Femenino' and 
      NACIONALIDAD = 'Extranjera' and 
      ESTADO_CIVIL_MADRE = 'Soltera' and
      EDAD_MADRE > 40;

select * from nacimientos where HIJOS_VIVOS > 10;

select * from nacimientos where SEMANAS between 20 and 25 order by SEMANAS;

select * from nacimientos
where COMUNA in(1101, 3201,5605, 8108, 9204, 13120, 15202) 
order by COMUNA;

select * from nacimientos where NACIONALIDAD = 'Extranjera';

select * from nacimientos where EDAD_MADRE < 18 order by EDAD_MADRE;

select * from nacimientos where EDAD_MADRE = EDAD_PADRE;

select * from nacimientos where EDAD_MADRE = 40 OR EDAD_MADRE < EDAD_PADRE;



