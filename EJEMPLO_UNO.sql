/* use sys */
-- SELECT * FROM sys_config

-- //COMANDOS
-- //CREAR BASE DE DATOS

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
	-- ID INT AUTO_INCREMENT,
    PLACA VARCHAR(8),
    MODELO VARCHAR(30),
    MARCA VARCHAR(50),
    COLOR VARCHAR (40),
    CANT_NEUMATICO INT,
    IsDisponible BOOLEAN
);

-- CONSULTAR TABLA
SELECT * FROM autos
-- insertar datos en tabla de forma individual
INSERT INTO autos (PLACA, MODELO, MARCA, COLOR, CANT_NEUMATICO, IsDisponible) 
			VALUES ("ABC-1234", "AVEO", "CHEVROLET", "ROJO", 5, true)

-- insertar datos en tabla de forma grupal            
INSERT INTO autos (PLACA, MODELO, MARCA, COLOR, CANT_NEUMATICO, IsDisponible) 
VALUES ("XYZ-5432", "AVEO", "CHEVROLET", "ROJO", 5, true),
	   ("JKL-1524", "RENAULT MODEL", "RENAULT", "AZUL", 4, false),
	   ("OIP-1523", "KIA MODEL", "KIA", "AMARILLO", 6, true)






