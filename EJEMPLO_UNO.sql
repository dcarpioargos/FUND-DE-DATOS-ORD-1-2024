/* use sys */
-- SELECT * FROM sys_config

-- //COMANDOS
-- //CREAR BASE DE DATOS
-- SYNTAXIS // REGLAS DE ESCRITURA O LOS PASOS A SEGUIR
CREATE DATABASE materia_fdb_2;
-- // definir por defecto db
USE materia_fdb_2;

-- crear tablas
/*CREATE TABLE NOMBRE_TABLA (
	PROPIEDAD TIPO_DATO,
    PROPIEDAD TIPO_DATO,
    PROPIEDAD TIPO_DATO,
	PROPIEDAD TIPO_DATO,
);*/

CREATE TABLE AUTOS(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    PLACA VARCHAR(8) NOT NULL,
    MODELO VARCHAR(30) NOT NULL,
    MARCA VARCHAR(255) NULL,
    COLOR VARCHAR (40) NULL,
    CANT_NEUMATICO INT NULL,
    IsDisponible BOOLEAN NULL
);

CREATE TABLE AUTOS(
  ID INT AUTO_INCREMENT,
     PLACA VARCHAR(8),
     MODELO VARCHAR(30),
     MARCA VARCHAR(50),
     COLOR VARCHAR (40),
     CANT_NEUMATICO INT,
     IsDisponible BOOLEAN
 )	Error Code: 1075. Incorrect table definition; 
 there can be only one auto column and it must be 
 defined as a key	0.000 sec
 
-- CONSULTAR TABLA
SELECT * FROM autos
-- insertar datos en tabla de forma individual
INSERT INTO autos (PLACA, MODELO) 
	VALUES ("ABC-4321", "")
            
"" 
0
NULL
UNDEFINED


-- insertar datos en tabla de forma grupal            
INSERT INTO autos (PLACA, MODELO, MARCA, COLOR) 
VALUES ("XYZ-9999", "AVEO", "CHEVROLET", 125),
	   ("JKL-1524", "RENAULT MODEL", "RENAULT", "AZUL"),
	   ("OIP-1523", "KIA MODEL", "KIA", "AMARILLO")
       
use materia_fdb
-- SELECT * FROM autos--  where ID = 7

-- QUE ES CRUD?
C = CREATE -- CREAR (INSERT)
R = READ - MOSTRAR DATOS (SELECT)
U = UPDATE - ACTUALIZAR LA TABLA
D = DELETE - ELIMINAR 


-- OIP-1523
UPDATE autos
SET COLOR = "ROJITO3", IsDisponible = 0 
WHERE ID > 1 OR MODELO = "AVEO" AND CANT_NEUMATICO = 5; 

SELECT * FROM autos WHERE PLACA = "OIP-1523" AND ID = 7;
DELETE FROM autos WHERE PLACA = "OIP-1523" AND ID = 7;
SELECT * FROM autos




 
 

 





