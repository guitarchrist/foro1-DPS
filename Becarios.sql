-- Crear la base de datos "becarios" si no existe
CREATE DATABASE becarios;

-- Usar la base de datos "becarios"
USE becarios;

-- Crear la tabla Alumnos
CREATE TABLE Alumnos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    DUI VARCHAR(15)
);

-- Crear la tabla Materias
CREATE TABLE Materias (
    ID INT PRIMARY KEY,
    NombreMateria VARCHAR(100)
);

-- Crear la tabla Notas
CREATE TABLE Notas (
    ID INT PRIMARY KEY,
    ID_Alumno INT,
    ID_Materia INT,
    Nota DECIMAL(4, 2),
    Fecha DATE,
    FOREIGN KEY (ID_Alumno) REFERENCES Alumnos(ID),
    FOREIGN KEY (ID_Materia) REFERENCES Materias(ID)
);
