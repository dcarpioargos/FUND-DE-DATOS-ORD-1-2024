/* use sys */
-- SELECT * FROM sys_config

-- //COMANDOS
-- //CREAR BASE DE DATOS
-- SYNTAXIS // REGLAS DE ESCRITURA O LOS PASOS A SEGUIR
CREATE DATABASE materia_fdb
-- // definir por defecto db
USE materia_fdb

-- crear tablas
/*CREATE TABLE NOMBRE_TABLA (
	PROPIEDAD TIPO_DATO,
    PROPIEDAD TIPO_DATO,
    PROPIEDAD TIPO_DATO,
	PROPIEDAD TIPO_DATO,
);*/

CREATE TABLE AUTOS(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    PLACA VARCHAR(8),
    MODELO VARCHAR(30),
    MARCA VARCHAR(50),
    COLOR VARCHAR (40),
    CANT_NEUMATICO INT,
    IsDisponible BOOLEAN
);

0	11	21:50:16	CREATE TABLE AUTOS(
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
INSERT INTO autos (PLACA, MODELO, MARCA, COLOR, CANT_NEUMATICO, IsDisponible) 
			VALUES ("ABC-1234", "AVEO", "CHEVROLET", "MORADO", "5", "1")

-- insertar datos en tabla de forma grupal            
INSERT INTO autos (PLACA, MODELO, MARCA, COLOR) 
VALUES ("XYZ-9999", "AVEO", "CHEVROLET", 125),
	   ("JKL-1524", "RENAULT MODEL", "RENAULT", "AZUL"),
	   ("OIP-1523", "KIA MODEL", "KIA", "AMARILLO")
       
use materia_fdb
-- SELECT * FROM autos--  where ID = 7

-- OIP-1523
UPDATE autos
SET IsDisponible = false
	-- CANT_NEUMATICO = 4
WHERE ID >= 1 AND CANT_NEUMATICO = 5


 

 





