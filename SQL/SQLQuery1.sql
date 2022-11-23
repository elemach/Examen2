Create database Examen2 --Creación de base de datos para un sistema de ventas--
Use Examen2

Create Table Cajeros
(
Codigo int identity,
Constraint PK_CodigoC Primary Key (Codigo),
Nombre nvarchar(50) not null,
Apellido nvarchar(50) not null
)

Select * from Cajeros

Create Table Productos
(
Codigo int identity,
Constraint PK_CodigoP Primary Key (Codigo),
Nombre nvarchar(100) not null,
Precio float Default 0
)

Select * from Productos

Create Table Maquinas_Registradoras
(
Codigo int identity,
Constraint PK_CodigoM Primary Key (Codigo),
Piso int
)

Select * from Maquinas_Registradoras

Create Table Venta
(
Fecha datetime Default GetDate(),
Codigo_Venta int Primary Key,
Cajero int,
Constraint FK_Cajero Foreign Key(Cajero) References Cajeros(Codigo),
Maquina int,
Constraint FK_Maquina Foreign Key(Maquina) References Maquinas_Registradoras(Codigo),
Producto int
Constraint FK_Producto Foreign Key(Producto) References Productos(Codigo)
)

Select * from Venta

Insert into Cajeros values ('Emanuel', 'Chavarria')
Insert into Cajeros values ('Benjamin', 'Curling')

Insert into Productos values ('Leche', 2000),('Arroz',1500),('Frijoles',1700)

Insert into Maquinas_Registradoras values (1),(2)

Update Cajeros set Nombre='Pablo', Apellido='Lopez' where Codigo=2

Update Productos set Precio=1500 where Codigo=3

Insert into Venta (Codigo_Venta,Cajero,Producto,Maquina) values (1,1,1,1)

Select Cajeros.Nombre, Cajeros.Apellido, Productos.Nombre, Productos.Precio, Maquinas_Registradoras.Piso from Venta inner join Cajeros on Cajeros.Codigo = Venta.Cajero
inner join Productos on Productos.Codigo = Venta.Producto inner join Maquinas_Registradoras on Maquinas_Registradoras.Codigo = Venta.Maquina
