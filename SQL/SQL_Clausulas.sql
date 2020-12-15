
--SELECT & WHERE & TOP
SELECT * FROM paciente
SELECT TOP 2 * FROM Paciente WHERE apellido = 'Perez' 
SELECT * FROM paciente WHERE nombre = 'Claudio' and apellido = 'Lopez'

--DISTINCT
SELECT DISTINCT (apellido) FROM paciente
SELECT DISTINCT idPaciente, apellido FROM paciente

--GROUP BY
SELECT apellido FROM Paciente  GROUP BY apellido
SELECT apellido FROM Paciente WHERE idPaciente >=5  GROUP BY apellido

-- ORDER BY
SELECT  TOP 3 * FROM Paciente ORDER BY fNacimiento ASC
SELECT TOP 1 * FROM Turno ORDER BY fechaTurno

-- INSERT & DELETE
INSERT INTO Paciente (nombre, apellido, fNacimiento, domicilio, idPais) values ('Juan','Palacios','1985-07-23','piedra buena 1','PER')
DELETE FROM Paciente WHERE nombre = 'Claudio' and apellido = 'Lopez'

--UPDATE
UPDATE Paciente SET observacion = 'Pacientes creados desde UI'
UPDATE Paciente SET observacion = 'Observacion modificada' WHERE idPaciente = 5