﻿CREATE TABLE EstacionServicio(
Id INT PRIMARY KEY,
CapMaxEstacion INT NOT NULL,
Region VARCHAR(50) NOT NULL,
HorarioAtencion VARCHAR(50) NOT NULL,
direccion VARCHAR(50) NOT NULL);

CREATE TABLE PuntoCarga(
Id INT PRIMARY KEY,
CapMaxVehiculos INT NOT NULL,
Tipo VARCHAR (50) NOT NULL,
TerminoVidaUtil DATETIME NOT NULL);