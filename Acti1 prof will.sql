CREATE DATABASE EmpresaEmpleados;
USE EmpresaEmpleados;

CREATE TABLE tbEmpleado(
   idEmpleado INT PRIMARY KEY,
   nombre VARCHAR(100),
   apellido VARCHAR(100),
   cargo VARCHAR(50),
   salario DECIMAL(10,2),
   fechaInicio DATE
);

CREATE TABLE tbDepartamento(
   idDepartamento INT PRIMARY KEY,
   nombre VARCHAR(50)
);

CREATE TABLE tbProyecto(
   idProyecto INT PRIMARY KEY,
   nombre VARCHAR(50),
   fechaInicio DATE,
   fechaFin DATE
);

CREATE TABLE tbAsignacion(
   idAsignacion INT PRIMARY KEY,
   idEmpleado INT,
   idDepartamento INT,
   idProyecto INT,
   FOREIGN KEY (idEmpleado) REFERENCES tbEmpleado(idEmpleado),
   FOREIGN KEY (idDepartamento) REFERENCES tbDepartamento(idDepartamento),
   FOREIGN KEY (idProyecto) REFERENCES tbProyecto(idProyecto)
);