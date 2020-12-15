--Operadores logicos
SELECT * FROM paciente
SELECT * FROM turno
-- AND
SELECT * FROM paciente WHERE apellido = 'Perez' and idPaciente = 4
SELECT * FROM paciente WHERE apellido = 'Perez' and observacion = 'Observacion modificada'

--OR
SELECT * FROM paciente WHERE apellido = 'Perez' or idPaciente = 4 or idPaciente = 6
SELECT * FROM paciente WHERE apellido = 'Perez' and (idPaciente = 4 or idPaciente = 2)

--IN
SELECT * FROM turno WHERE estado IN (2,1,6)
SELECT * FROM paciente WHERE Apellido IN ('Perez', 'Palacios')

--LIKE
SELECT * FROM paciente WHERE nombre LIKE 'Robe%' 
SELECT * FROM paciente WHERE nombre LIKE 'Robe%' or nombre LIKE 'Ju%'

--NOT
SELECT * FROM paciente WHERE nombre NOT LIKE 'Robe%' 
SELECT * FROM turno WHERE estado NOT IN (2,1,6)
SELECT * FROM paciente WHERE Apellido NOT IN ('Perez', 'Palacios')

--BETWEEN
SELECT * FROM turno WHERE fechaTurno BETWEEN  '20170102 11:00:00' AND  '20200502'
SELECT * FROM turno WHERE estado BETWEEN  0 AND  2

--Combinacion de operadores logicos
SELECT * FROM paciente WHERE apellido = 'Perez' and (idPaciente = 4 or idPaciente = 2)
SELECT * FROM paciente WHERE apellido = 'Perez' and (idPais = 'PER' or idPais = 'ESP')
SELECT * FROM paciente WHERE nombre LIKE 'Robe%' or nombre LIKE 'Ju%'