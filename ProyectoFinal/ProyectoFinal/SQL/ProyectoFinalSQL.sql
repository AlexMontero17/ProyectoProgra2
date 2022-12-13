Create Database GimnasioProyecto

Use GimnasioProyecto

------------------------------ SE CREA LA TABLA CLIENTES ------------------------------

Create Table Clientes
(
	Codigo Int Identity Primary Key,
	Nombre Nvarchar(100) NOT NULL,
	Apellido Nvarchar(100) NOT NULL,
	Telefono Int,
)

--------------------- SE INSERTA INFORMACION A LA TABLA CLIENTES ----------------------

Insert Into Clientes Values ('Alex','Montero',72939901),('Alejandra','Vega',72975064),('Jose','Castillo',85147962)
Select * From Clientes

--------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LOS CLIENTES ----------

Create Procedure ConsultaClientes
As	
    Begin
		Select * From Clientes
	End

Exec ConsultaClientes

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UN CLIENTE ----------------

Create Procedure BorrarClientes
@Codigo Int
As
	Begin
	   Delete Clientes Where Codigo = @Codigo
	End

Exec BorrarClientes 8

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UN CLIENTE --------------

Alter Procedure IngresarClientes
@Nombre Nvarchar(100) = '',
@Apellido Nvarchar(100) = '',
@Telefono Int = ''
As
	Begin
	   Insert Into Clientes (Nombre,Apellido,Telefono) Values (@Nombre,@Apellido,@Telefono)
	End

Exec IngresarClientes 'Ricardo','Brenes','42567892'

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MODIFICAR UN CLIENTE -------------

Create Procedure ModificarClientes
@Codigo Int,
@Nombre Nvarchar(100),
@Apellido Nvarchar(100),
@Telefono Int 
As
	Begin
	   Update Clientes Set Nombre = @Nombre, Apellido = @Apellido, Telefono = @Telefono Where Codigo = @Codigo
	End

Exec ModificarClientes 9, 'Ricardo', 'Mena', '12345678'



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


------------------------------ SE CREA LA TABLA PRODUCTO ------------------------------

Create Table Producto
(
	Codigo Int Identity Primary Key,
	Nombre Nvarchar(100) NOT NULL,
	Precio Int 
)

--------------------- SE INSERTA INFORMACION A LA TABLA PRODUCTO ----------------------

Insert Into Producto Values ('Camisa', 12000),('Pantaloneta',10000),('Botella',15000)
Select * From Producto

--------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LOS PRODUCTOS ---------

Create Procedure ConsultaProductos
As	
    Begin
		Select * From Producto
	End

Exec ConsultaProductos

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UN PRODUCTO ---------------

Create Procedure BorrarProducto
@Codigo Int
As
	Begin
	   Delete Producto Where Codigo = @Codigo
	End

Exec BorrarProducto 4

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UN PRODUCTO -------------

Create Procedure IngresarProducto
@Nombre Nvarchar(100) = '',
@Precio Int = ''
As
	Begin
	   Insert Into Producto (Nombre,Precio) Values (@Nombre,@Precio)
	End

Exec IngresarProducto 'Gorra','9000'

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MODIFICAR UN PRODUCTO ------------

Create Procedure ModificarProducto
@Codigo Int,
@Nombre Nvarchar(100),
@Precio Int 
As
	Begin
	   Update Producto Set Nombre = @Nombre, Precio = @Precio Where Codigo = @Codigo
	End

Exec ModificarProducto 5, 'Gorra','9500'



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


----------------------------- SE CREA LA TABLA PROVINCIAS -----------------------------

Create Table Provincias
(
	Codigo Int Identity Primary Key,
	Nombre Nvarchar(100) NOT NULL,
)

-------------------- SE INSERTA INFORMACION A LA TABLA PROVINCIAS ---------------------

Insert Into Provincias Values ('San Jose'),('Heredia'),('Alajuela')
Select * From Provincias

--------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LAS PROVINCIAS --------

Create Procedure ConsultaProvincias
As	
    Begin
		Select * From Provincias
	End

Exec ConsultaProvincias

------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UNA PROVINCIA --------------

Alter Procedure BorrarProvincia
@Codigo Int
As
	Begin
	   Delete Provincias Where Codigo = @Codigo
	End

Exec BorrarProvincia 4

------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UNA PROVINCIA ------------

Create Procedure IngresarProvincia
@Nombre Nvarchar(100) = ''
As
	Begin
	   Insert Into Provincias (Nombre) Values (@Nombre)
	End

Exec IngresarProvincia 'Cartago'

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MODIFICAR UNA PROVINCIA ------------

Create Procedure ModificarProvincia
@Codigo Int,
@Nombre Nvarchar(100)
As
	Begin
	   Update Provincias Set Nombre = @Nombre Where Codigo = @Codigo
	End

Exec ModificarProvincia 4, 'Cartagoo'



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


------------------------------- SE CREA LA TABLA CANTON -------------------------------

Create Table Canton
(
	Codigo Int Identity Primary Key,
	Nombre Nvarchar(100) NOT NULL,
	CodigoProvincia Int
	Constraint FK_CodProv Foreign Key (CodigoProvincia) References Provincias(Codigo)
)

---------------------- SE INSERTA INFORMACION A LA TABLA CANTON -----------------------

Insert Into Canton Values ('Tibas',1),('Barva',2),('Guacima',3)
Select * From Canton

----------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LOS CANTONES ---------

Create Procedure ConsultaCanton
As	
    Begin
		Select * From Canton
	End

Exec ConsultaCanton

---------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UN CANTON ----------------

Create Procedure BorrarCanton
@Codigo Int
As
	Begin
	   Delete Canton Where Codigo = @Codigo
	End

Exec BorrarCanton 4

--------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UN CANTON ---------------

Create Procedure IngresarCanton
@Nombre Nvarchar(100) = ''
As
	Begin
	   Insert Into Canton (Nombre) Values (@Nombre)
	End

Exec IngresarCanton 'Moravia'

---------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MODIFICAR UN CANTON --------------

Create Procedure ModificarCanton
@Codigo Int,
@Nombre Nvarchar(100)
As
	Begin
	   Update Canton Set Nombre = @Nombre Where Codigo = @Codigo
	End

Exec ModificarCanton 1, 'Guadalupe'



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


------------------------------- SE CREA LA TABLA DISTRITO -------------------------------

Create Table Distrito
(
	Codigo Int Identity Primary Key,
	Nombre Nvarchar(100) NOT NULL,
	CodigoCanton Int
	Constraint FK_CodCan Foreign Key (CodigoCanton) References Distrito(Codigo)
)

---------------------- SE INSERTA INFORMACION A LA TABLA DISTRITO -----------------------

Insert Into Distrito Values ('El Alto',1),('San Roque',2),('Coco',3)
Select * From Distrito

---------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LOS DISTRITOS ----------

Create Procedure ConsultaDistrito
As	
    Begin
		Select * From Distrito
	End

Exec ConsultaDistrito

---------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UN DISTRITO ----------------

Create Procedure BorrarDistrito
@Codigo Int
As
	Begin
	   Delete Distrito Where Codigo = @Codigo
	End

Exec BorrarDistrito 4

--------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UN DISTRITO ---------------

Create Procedure IngresarDistrito
@Nombre Nvarchar(100) = ''
As
	Begin
	   Insert Into Distrito (Nombre) Values (@Nombre)
	End

Exec IngresarDistrito 'Tejar'

---------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MODIFICAR UN DISTRITO --------------

Create Procedure ModificarDistrito
@Codigo Int,
@Nombre Nvarchar(100)
As
	Begin
	   Update Distrito Set Nombre = @Nombre Where Codigo = @Codigo
	End

Exec ModificarDistrito 3, 'Cacao'



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


------------------------------- SE CREA LA TABLA DIRECCIONES -------------------------------

Create Table Direcciones
(
	Codigo Int Identity Primary Key,
	CodigoCliente Int,
	CodigoProvincia Int,
	CodigoCanton Int,
	CodigoDistrito Int,
	Comentarios Nvarchar(300)
	Constraint FK_CodClient Foreign Key (CodigoCliente) References Clientes(Codigo),
	Constraint FK_CodProvi Foreign Key (CodigoProvincia) References Provincias(Codigo),
	Constraint FK_CodCton Foreign Key (CodigoCanton) References Canton(Codigo),
	Constraint FK_CodDistr Foreign Key (CodigoDistrito) References Distrito(Codigo)
)

---------------------- SE INSERTA INFORMACION A LA TABLA DIRECCIONES -----------------------



---------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODAS LAS DIRECCIONES -----------

Create Procedure ConsultaDirecciones
As	
    Begin
		Select * From Direcciones
	End

Exec ConsultaDirecciones



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


------------------------------- SE CREA LA TABLA MAE_FACTURA -------------------------------

Create Table Mae_Factura
(
	NFactura Int Identity Primary Key,
	Fecha Datetime Default GetDate(),
	CodigoCliente Int,
	Total Int,
	IVTotal Int
	Constraint FK_CodCl Foreign Key (CodigoCliente) References Clientes(Codigo)
)

----------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LAS MAE_FACTURAS -----------

Create Procedure ConsultaMae_Factura
As	
    Begin
		Select * From Mae_Factura
	End

Exec ConsultaMae_Factura

---------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UNA MAE_FACTURA ----------------

Create Procedure BorrarMae_Factura
@NFactura Int
As
	Begin
	   Delete Mae_Factura Where NFactura = @NFactura
	End

Exec BorrarMae_Factura 2

--------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UNA MAE_FACTURA ---------------

Create Procedure IngresarMae_Factura
@CodigoCliente Int,
@Total Int,
@IVTotal Int
As
	Begin
	Declare @Fecha Datetime
	Set @Fecha = GETDATE()
	   Insert Into Mae_Factura (Fecha,CodigoCliente,Total,IVTotal) Values (@Fecha, @CodigoCliente,@Total,@IVTotal)
	End

Exec IngresarMae_Factura 1, 20000, 2200 -- CodigoCliente, Total. IVTotal

---------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MODIFICAR UNA MAE_FACTURA --------------

Alter Procedure ModificarMae_Factura
@NFactura Int,
@CodigoCliente Int,
@Total Int,
@IVTotal Int
As
	Begin
	Declare @Fecha Datetime
	Set @Fecha = GETDATE()
	   Update Mae_Factura Set CodigoCliente = @CodigoCliente, Total = @Total, IVTotal = @IVTotal Where nFactura = @NFactura
	End

Exec ModificarMae_Factura 1, 1, 15000, 2200 -- CodigoCliente, Total, IVTotal


--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


------------------------------- SE CREA LA TABLA DET_FACTURA -------------------------------

Create Table Det_Factura
(
	CodigoFactura Int Identity Primary Key,
	DetNFactura Int,
	CodigoProducto Int,
	Cantidad Int,
	PrecioUnitario Int,
	IV Int
	Constraint FK_DNF Foreign Key (DetNFactura) References Mae_Factura(NFactura),
	Constraint FK_CodProdu Foreign Key (CodigoProducto) References Producto(Codigo),
	--Constraint FK_PreUnit Foreign Key (PrecioUnitario) References Producto(Precio)
)

------------ SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LAS DET_FACTURAS -------------

Create Procedure ConsultaDet_Factura
As	
    Begin
		Select * From Det_Factura
	End

Exec ConsultaDet_Factura

----------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UNA DET_FACTURA ------------------

Create Procedure BorrarDet_Factura
@CodigoFactura Int
As
	Begin
	   Delete Det_Factura Where CodigoFactura = @CodigoFactura
	End

Exec BorrarDet_Factura 2

---------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UNA DET_FACTURA -----------------

Alter Procedure IngresarDet_Factura
@NFactura Int,
@CodigoProducto Int,
@Cantidad Int,
@PrecioUnitario Int,
@IV Int
As
	Begin
	   Insert Into Det_Factura (DetNFactura,CodigoProducto,Cantidad,PrecioUnitario,IV) Values (@NFactura, @CodigoProducto,@Cantidad,@PrecioUnitario,@IV)
	End

Exec IngresarDet_Factura 1, 1, 3,1000,100



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**


----------------------------- SE CREA LA TABLA USUARIOS -----------------------------

Create Table Mae_Usuarios
(
	Email Varchar(30),
	Clave Varchar(30),
	Nombre Varchar(50) UNIQUE, -- Con unique nadie puede llamarse igual--
	Tipo Nvarchar(100),
	Constraint PK_Email Primary Key(Email) -- Llave primaria--
)

-------------------- SE INSERTA INFORMACION A LA TABLA USUARIOS ---------------------

Insert Into Mae_Usuarios Values ('Alexmt17@','1717','Alex','Admin'),('AleVega29@','1012','Ale','Regular')
Select * From Mae_Usuarios

--------- SE CREA PROCEDIMIENTO ALMACENADO PARA CONSULTAR TODOS LOS USUARIOS --------

Create Procedure ConsultaUsuarios
As
    Begin
	   Select * From Mae_Usuarios
	End

Exec ConsultaUsuarios

------------- SE CREA PROCEDIMIENTO ALMACENADO PARA BORRAR UN USUARIO --------------

Create Procedure BorrarUsuarios
@Email Varchar (30)
   As
    Begin
	   Delete Mae_Usuarios Where Email = @Email
	End

Exec BorrarUsuarios 'Rafi89@'

------------- SE CREA PROCEDIMIENTO ALMACENADO PARA INGRESAR UN USUARIO ------------

Create Procedure IngresarUsuarios
@Email Varchar (30),
@Clave Varchar(30) = ' ',
@Nombre Varchar (50) = ' ',
@Tipo Varchar (255) = 'Regular'
   As
    Begin
	   Insert Into Mae_Usuarios (Email,Clave,Nombre,Tipo) Values (@Email,@Clave,@Nombre,@Tipo)
	End

Exec IngresarUsuarios 'Rafi89@','123','Fafael'

-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MODIFICAR UN USUARIO ------------

Create Procedure ActualizarUsuarios
@Email Varchar (30),
@Clave Varchar(30),
@Nombre Varchar (50),
@Tipo Varchar (255)
   As
    Begin
	   Update Mae_Usuarios Set Clave = @Clave, Nombre = @Nombre, Tipo = @Tipo Where Email = @Email
	End

Exec ActualizarUsuarios 'Tony19@','456','Robert','Admin' --Cambia la info que esta en el usuario con el correo Tony19


-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MOSTRAR INFO DE USUARIO ESPECIFICO ------------


Create Procedure ConsultaUsuarioFiltroCorreo -- Muestra info de solo un usuario
@Email varchar (30)
   as
    begin
	   select*from Mae_Usuarios where Email = @Email
	end

exec ConsultaUsuarioFiltroCorreo'Tony19@' -- Escojo el correo al que quiero mostrar


-------------- SE CREA PROCEDIMIENTO ALMACENADO PARA MOSTRAR INFO SI LA CONTRASEÑA Y USUARIO SON CORRECTOS ------------

Create Procedure ValidarUsuario -- Muestra info de solo un usuario si la contra y el correo son correctos
@Email varchar (30),
@Clave varchar(30)
   as
    begin
	   select*from Mae_Usuarios where Email = @Email and Clave = @Clave
	end

exec ValidarUsuario'Tony19@','456' -- Si la contraseña no es correcta no muestra info



--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--
**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**--**



------------------------------------ BORRAR TABLAS ------------------------------------
Drop Table Clientes
Drop Table Producto
Drop Table Provincias
Drop Table Canton
Drop Table Distrito
Drop Table Usuarios

------------------------------ PROCEDIMIENTOS ALMACENADOS -----------------------------
Exec ConsultaClientes
Exec IngresarClientes 'Ricardo','Brenes','42567892'
Exec BorrarClientes 8
Exec ModificarClientes 9, 'Ricardo', 'Mena', '12345678'

Exec ConsultaProductos
Exec IngresarProducto 'Gorra','9000'
Exec BorrarProducto 4
Exec ModificarProducto 5, 'Gorra','9500'

Exec ConsultaProvincias
Exec IngresarProvincia 'Cartago'
Exec BorrarProvincia 4
Exec ModificarProvincia 4, 'Cartagoo'

Exec ConsultaCanton
Exec IngresarCanton 'Moravia'
Exec BorrarCanton 4
Exec ModificarCanton 1, 'Guadalupe'

Exec ConsultaDistrito
Exec IngresarDistrito 'Tejar'
Exec BorrarDistrito 4
Exec ModificarDistrito 3, 'Cacao'

Exec ConsultaDirecciones

Exec ConsultaMae_Factura
Exec IngresarMae_Factura 2, 30000, 2200
Exec BorrarMae_Factura 2
Exec ModificarMae_Factura 1, 1, 15000, 2200

Exec ConsultaDet_Factura
Exec IngresarDet_Factura 1, 1, 3,1000,100
Exec BorrarDet_Factura 2

Exec ConsultaUsuarios
Exec IngresarUsuarios 'Rafi89@','123','Rafael'
Exec BorrarUsuarios 'Rafi89@'
Exec ActualizarUsuarios 'Tony19@','456','Robert','Admin'