ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '12345';
CREATE DATABASE Colegio;
USE Colegio;
CREATE TABLE Alumno(
	matricula INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    grupo VARCHAR(100)
);
CREATE TABLE Examen(
	idExamen INT NOT NULL PRIMARY KEY,
    noPreguntas INT NOT NULL,
    fecha DATE NOT NULL
);
CREATE TABLE Practica(
	idPractica INT NOT NULL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    dificultad INT NOT NULL,
    tipo VARCHAR(45) 
);
CREATE TABLE Profesor(
	idProfesor INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL
);
SHOW TABLES;
CREATE TABLE Alumno_Examen(
    matricula INT NOT NULL,
    idExamen INT NOT NULL,
    nota DOUBLE NOT NULL,
	FOREIGN KEY(matricula) REFERENCES Alumno(matricula),
    FOREIGN KEY(idExamen) REFERENCES Examen(idExamen)
);
CREATE TABLE Alumno_Practica(
    matricula INT NOT NULL,
    idPractica INT NOT NULL,
    nota DOUBLE NOT NULL,
    fecha DATE NOT NULL,
	FOREIGN KEY(matricula) REFERENCES Alumno(matricula),
    FOREIGN KEY(idPractica) REFERENCES Practica(idPractica)
);
CREATE TABLE Profesor_Practica(
    idProfesor INT NOT NULL,
    idPractica INT NOT NULL,
    fecha DATE NOT NULL,
	FOREIGN KEY(idProfesor) REFERENCES Profesor(idProfesor),
    FOREIGN KEY(idPractica) REFERENCES Practica(idPractica)
);
INSERT INTO Alumno(matricula, nombre, apellido, grupo) VALUES
('43534','Luis','Juarez','3B');
INSERT INTO Examen(idExamen, noPreguntas, fecha) VALUES
('4','30','2021/02/02');
INSERT INTO Profesor(idProfesor, nombre, apellido) VALUES
('0904','Oliver','Sierra');
INSERT INTO Practica(idPractica, titulo, dificultad, tipo) VALUES
('20','Compuestos','10','Individual');
INSERT INTO Alumno_Examen(matricula, idExamen, nota) VALUES
('43534','4','75');
INSERT INTO Alumno_Practica(matricula, idPractica, nota, fecha) VALUES
('43534','20','100','2021/03/03');
INSERT INTO Profesor_Practica(idProfesor, idPractica, fecha) VALUES
('0904','20','2021/03/03');