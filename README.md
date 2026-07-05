# Sistema de Cálculo y Consulta de Notas

Proyecto desarrollado en ASP.NET Web Forms (C#) para la Evaluación 4.
-- Recuerde compilar la solución.

## Requisitos Previos
Para ejecutar este proyecto correctamente en Visual Studio, es necesario crear la base de datos y la tabla correspondiente en SQL Server (LocalDB), Si es necesario verificar la ruta
de conexion posteriormente de la creación en el archivo `config\conexion.cs`.
-- Eliminar la carpeta App_Data si da problemas a la hora de crear la base de datos.
## Instrucciones de Instalación y Base de Datos
Ejecute el siguiente script en SQL Server para crear la base de datos `PRUEBA4`, la tabla `Alumno` y agregar datos de prueba:

## SQL
-- 1. Crear la base de datos
CREATE DATABASE PRUEBA4;
GO

USE PRUEBA4;
GO

-- 2. Crear la tabla
CREATE TABLE [dbo].[Alumno] (

    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Rut]      NVARCHAR (12)  NOT NULL,
    [Nombre]   NVARCHAR (100) NOT NULL,
    [Nota1]    DECIMAL (3, 1) NOT NULL,
    [Nota2]    DECIMAL (3, 1) NOT NULL,
    [Nota3]    DECIMAL (3, 1) NOT NULL,
    [Promedio] DECIMAL (3, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
GO

-- 3. Datos de prueba (Opcional)
INSERT INTO Alumno (Rut, Nombre, Nota1, Nota2, Nota3, Promedio) 
VALUES 
('11111111-1', 'Juan Pérez', 5.5, 6.0, 6.5, 6.0),
('22222222-2', 'María González', 4.0, 5.0, 4.5, 4.5);
GO
