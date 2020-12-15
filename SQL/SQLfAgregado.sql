
--SELECT & WHERE & TOP
SELECT * FROM paciente
SELECT TOP 2 * FROM Paciente WHERE apellido = 'Perez' 
SELECT * FROM paciente WHERE nombre = 'Claudio' and apellido = 'Lopez'

--Agregado: Max & MIN

SELECT MAX (idPaciente) FROM Paciente
SELECT MIN (idPaciente) FROM Paciente 
SELECT apellido, MIN (idPaciente) FROM Paciente GROUP BY apellido
SELECT apellido, MAX (idPaciente) FROM Paciente GROUP BY apellido

--SUM
SELECT SUM (idPaciente) FROM Paciente
SELECT SUM (idPaciente), apellido FROM Paciente GROUP BY apellido

--AVG
SELECT AVG (idPaciente) FROM Paciente
SELECT AVG (idPaciente) FROM Paciente WHERE apellido = 'albarez' 

-- COUNT
SELECT COUNT (*) FROM Paciente
SELECT COUNT (idPaciente) FROM Paciente
SELECT COUNT (telefono) FROM Paciente
SELECT COUNT (idPaciente) FROM Paciente WHERE apellido = 'Perez' 

--HAVING
SELECT * FROM Turno
SELECT estado FROM Turno GROUP BY estado HAVING estado = 2
SELECT estado FROM Turno GROUP BY estado HAVING COUNT (estado) >= 4