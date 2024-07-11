--DROP DATABASE SOFTWARE
--GO
-----CREACIÓN DE LA BASE DE DATOS-----------------------
---ARCHIVO PRINCIPAL PRIMARY---------
CREATE DATABASE SOFTWARE
ON PRIMARY (
name =  'software_pri',
filename = 'C:\DATA\CORPORACION\SISTEMA\EDGE\software.mdf', 
size = 10MB, 
maxsize = unlimited
), ----------------- ARCHIVOS SECUNDARIOS---------
 (
name = 'software_sec',
filename = 'C:\DATA\CORPORACION\SISTEMA\EDGE\software.ndf', 
size = 10MB, 
maxsize = unlimited
),
 (
name = 'software_sec2',
filename = 'C:\DATA\CORPORACION\SISTEMA\EDGE\software_2.ndf', 
size = 10MB, 
maxsize = unlimited
),
 (
name = 'software_sec3',
filename = 'C:\DATA\CORPORACION\SISTEMA\EDGE\software_3.ndf', 
size = 10MB, 
maxsize = unlimited

)------------ARCHIVO DE TRANSACCIONES LOG---------
log on(
name = 'software_log',
filename= 'C:\DATA\CORPORACION\SISTEMA\EDGE\software.ldf', 
size = 7MB, 
maxsize = 20MB, 
filegrowth= 10%
)
GO
----------------------CREACION DE SCHEMAS--------------------------
USE SOFTWARE
GO
CREATE SCHEMA TECNICORED AUTHORIZATION DBO
GO
USE SOFTWARE
GO
CREATE SCHEMA INGENIERORED AUTHORIZATION DBO
GO
USE SOFTWARE
GO
CREATE SCHEMA SOFTWAREDESARROLLO AUTHORIZATION DBO
GO
USE SOFTWARE
GO
CREATE SCHEMA LOGISTA AUTHORIZATION DBO
GO
USE SOFTWARE
GO
CREATE SCHEMA VENTA AUTHORIZATION DBO
GO

------------------------------------

SELECT * FROM sys.schemas
	where principal_id=1
	go

-----------------------------------------

------------------- CREACIÓN  DE  5 TABLAS CON 5 CAMPOS-----------

USE SOFTWARE
CREATE TABLE USUARIO(
---definir campos 
idUsuario int not null, 
nomUsuario varchar(20),
apellUsuario varchar(20),
edadUsuario varchar(3),
correoUsuario varchar (50)
)

USE SOFTWARE
CREATE TABLE APLICACION_ESCRITORIO (
---definir campos 
idAplicacion int not null, 
nomAplicacion varchar(30),
lenguajeAplicacion varchar(20),
developerAplicacion varchar (50),
finesAplicacion varchar (30)
)
USE SOFTWARE
CREATE TABLE APP_MOVIL(
---definir campos 
idApp int not null, 
nomApp varchar(30),
lenguajeApp varchar(20),
developerApp varchar (50),
finesApp varchar (30)
)
USE SOFTWARE
CREATE TABLE SOFTWARE_LIBRE(
---definir campos 
añoCreacion int not null, 
nomSoftLibre varchar(30),
developerSoftLibre varchar(40),
lengSoftLibre varchar (50),
finSoftLibre varchar (50)
)
USE SOFTWARE
CREATE TABLE SOFTWARE_EMPRESA(
---definir campos 
rucEmpresa int not null, 
idCeoEmpresa int not null,
nomEmpresa varchar(20),
finEmpresa varchar (50),
añoEmpresa int not null
)

SELECT * FROM [dbo].[USUARIO]
-------------------------INSERCIONES DE 10 REGISTROS--------------------------
USE SOFTWARE
INSERT INTO [dbo].[USUARIO] VALUES (10,'Pedro','Cáceres','20','pedro_ca@gmail.com' ),
(11,'Perla','Jairo','20','perlita_jai@gmail.com'),
(12,'Zoyla','Fuentes','21','virgo_14@gmail.com'),
(13,'Emilio','León','76','emilioleon@gmail.com'),
(14,'Susana','Elena','30','db_z@gmail.com'),
(15,'Susan','Montero','24','montero@gmail.com'),
(16,'Fernando','Soto','21','soto@gmail.com'),
(17,'Hugo','Solís','56','solis_hugo@gmail.com'),
(18,'Maricielo','Salinas','35','edit_salinas@gmail.com'),
(19,'Renato','Pareja','40','ren_par@gmail.com')

SELECT * FROM [dbo].[USUARIO]

USE SOFTWARE
INSERT INTO [dbo].[APLICACION_ESCRITORIO] VALUES (101,'DryS','C#','Susana León','educativos'),
(112,'Supers','C#','Roxana Quispe','educativos'),
(123,'Inters','C#','Susana Ortega','educativos'),
(133,'getTable','Java','Paz Soto','comerciales'),
(143,'OlPatron','C#','Emilia Cruz','educativos'),
(155,'ColeDis','Java','Eva Montes','educativos'),
(161,'SmartOld','C++','Carlos Aldair','comerciales'),
(172,'Ref','C#','Jairo Montero','educativos'),
(183,'DatosCole','C#','Carlos Aldair','educativos'),
(194,'EduMed','C#','Melina Ortega','educativos')

SELECT * FROM [dbo].[APLICACION_ESCRITORIO]
----------------
USE SOFTWARE
INSERT INTO [dbo].[APP_MOVIL] VALUES (1011,'StorPluk','Java','Susana León','educativos'),
(1121,'RitsSup','Swift','Roxana Quispe','educativos'),
(1231,'Rinc','Swift','Susana Ortega','educativos'),
(1331,'setAfr','Java','Paz Soto','comerciales'),
(1431,'Kair','Python','Emilia Cruz','educativos'),
(1551,'Siren','Java','Eva Montes','gastronomia'),
(1611,'Return','Python','Carlos Aldair','comerciales'),
(1721,'Folk','kotlin','Jairo Montero','educativos'),
(1831,'DatGur','kotlin','Carlos Aldair','educativos'),
(1941,'CanguroPlus','kotlin' ,'Melina Ortega','educativos')

SELECT * FROM [dbo].[APP_MOVIL]
-------------------------------------

USE SOFTWARE
INSERT INTO [dbo].[SOFTWARE_EMPRESA] VALUES (1222101154,300,'TELEX MAX','lucro',2003),
(1992112134,301,'ERNS SOFTWARE','lucro',2000),
(1312319864,302,'SAST','lucro', 2001),
(1413319875,303,'PYPYUL','lucro', 2002),
(1514312345,304,'NASS','lucro',2005),
(1615511095,305,'WERMAX','lucro', 2001),
(1716112095,306,'UWMIN','lucro', 2000),
(1817213425,307,'ASDILP','lucro', 1998),
(1918313465,308,'BUYTR','lucro',2022),
(1223119455,309,'KJU' ,'lucro',2022)

SELECT * FROM [dbo].[SOFTWARE_EMPRESA]
-------------------------------------------------

USE SOFTWARE
INSERT INTO [dbo].[SOFTWARE_LIBRE] VALUES (2001,'AVS','Roxana Quispe', 'Swift','educativo'),
(2002,'RTCL','Susana Ortega', 'Swift','educativo'),
(2004,'TRANSALE','Paz Soto', 'Java','voice analysis'),
(2010,'SUSTEX','Emilia Cruz','Python', 'educativo'),
(2003,'SIRTEC','Eva Montes', 'Java','voice analysis'),
(2009,'RE_TORNADO', 'Carlos Aldair', 'Python','voice analysis'),
(2020,'FAZJIL','Jairo Montero', 'kotlin','educativo'),
(2011,'HEMS','Carlos Aldair', 'kotlin','educativo'),
(2019,'PIUT', 'Melina Ortega', 'kotlin','educativo'),
(2021,'TERSEW', 'Roberto Landauri', 'kotlin','educativo')

SELECT * FROM [dbo].[SOFTWARE_LIBRE]
SELECT * FROM[dbo].[SOFTWARE_EMPRESA]
SELECT * FROM[dbo].[APP_MOVIL]
SELECT * FROM[dbo].[APLICACION_ESCRITORIO]
SELECT * FROM[dbo].[USUARIO]


sp_helpdb SOFTWARE
go

--Las tablas creadas son cinco: [dbo].[APLICACION_ESCRITORIO], [dbo].[APP_MOVIL], [dbo].[SOFTWARE_EMPRESA], [dbo].[SOFTWARE_LIBRE]  y[dbo].[USUARIO].
--Las cuales tienen 5 campos cada una. Se ha realizado 10 inserts por cada tabla calnculándose en total 50 valores. 
