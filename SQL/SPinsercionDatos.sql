--Store Procedure insercion Pacientes
--SELECT * FROM Paciente
--SELECT * FROM Medico
--INSERT INTO Medico VALUES ('Paco', 'Mercio')

EXEC ALTA_Paciente '05914328', 'Francisco', 'Cobos', '19990127', 'calle gala', 'COL', '', 'fcobos@gmail.com','tiene mal caracter'

--SUSTITUIDO CREATE POR ALTER----
ALTER PROC ALTA_Paciente (
			@dni varchar(20),
			@nombre varchar(50),
			@apellido varchar(50),
			@fNacimiento varchar(8),
			@domicilio varchar(50),
			@idPais char(3),
			@telefono varchar (20)= '',
			@email varchar (30),
			@observacion varchar (1000) = ''
			)
as

IF NOT EXISTS (SELECT * FROM Paciente WHERE dni = @dni)-- SI NO EXISTE LO AGREGO
BEGIN
	INSERT INTO Paciente (dni, nombre, apellido, fNacimiento, domicilio, idPais, telefono, email, observacion)
	VALUES(@dni, @nombre, @apellido, @fNacimiento, @domicilio, @idPais, @telefono, @email, @observacion)
	PRINT 'EL PACIENTE SE AGREGO CORRECTAMENTE'
	RETURN
END
ELSE --EL PACIENTE YA EXISTE EN LA TABLA
BEGIN
		PRINT 'EL PACIENTE YA EXISTE EN LA TABLA'
	RETURN
END



--TURNO-----------------------------------------------------

--EXEC ALTA_Turno '20190818 09:15', 12,4, 'El paciente tiene mal humor'

--Store Procedure insertar turnos
--SELECT * FROM Turno
--SELECT * FROM TurnoPaciente
--SELECT * FROM Paciente
--SELECT * FROM Medico
--SELECT * FROM MedicoEspecialidad
--SUSTITUIDO CREATE POR ALTER----

--SELECT * FROM Turno
--SELECT * FROM TurnoPaciente
--SUSTITUIDO CREATE POR ALTER----
ALTER PROC ALTA_Turno (
			@fechaTurno varchar(14), --20200101 12:00 YYYYMMDD HH:MM 
			@idpaciente paciente,
			@idmedico medico, 
			@observacion observacion='')
as

/*
ESTADO = 0 PENDIENTE
ESTADO = 1 REALIZADO
ESTADO = 2 CANCELADO

*/
SET NOCOUNT ON

IF NOT EXISTS (SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno = @fechaTurno)-- SI NO EXISTE LO AGREGO
BEGIN
	INSERT INTO Turno (fechaTurno, estado, observacion)
	VALUES(@fechaTurno, 0, @observacion)

	DECLARE @auxIdturno turno
	SET @auxIdturno = @@IDENTITY

	INSERT INTO TurnoPaciente (idTurno, idPaciente, idMedico)
	VALUES (@auxIdturno, @idpaciente, @idmedico)

	PRINT 'Turno SE AGREGO CORRECTAMENTE'
	RETURN
END
ELSE --EL PACIENTE YA EXISTE EN LA TABLA
BEGIN
		PRINT 'EL Turno YA EXISTE EN LA TABLA'
	RETURN
END

--MEDICO------------------------------------
--SELECT * FROM Paciente
--SELECT * FROM Medico
--SELECT * FROM MedicoEspecialidad
--SELECT * FROM Especialidad
--INSERT INTO Medico VALUES ('Paco', 'Mercio')

--INSERT INTO Especialidad VALUES (  'Internista')

--EXEC ALTA_Medico 'Hilldegard', 'Ovensen', 7,'Bueno'

ALTER PROC ALTA_Medico (
						@nombre varchar(50),
						@apellido varchar (20),
						@idespecialidad int,
						@descripcion varchar (50)
						)
as

SET NOCOUNT ON

IF NOT EXISTS (SELECT TOP 1 idMedico FROM Medico WHERE nombre = @nombre AND apellido = @apellido)-- SI NO EXISTE LO AGREGO
BEGIN
	INSERT INTO Medico (nombre, apellido)
	VALUES(@nombre,  @apellido)

	DECLARE @auxIdmedico int
	SET @auxIdmedico = @@IDENTITY -- el valor inmediato que se acaba de insertar (idMedico)

	INSERT INTO MedicoEspecialidad (idMedico, idEspecialidad, descripcion)
	VALUES (@auxIdmedico, @idespecialidad, @descripcion)

	PRINT 'El medico SE AGREGO CORRECTAMENTE'
	RETURN
END
ELSE --EL Medico YA EXISTE EN LA TABLA, se ejecuta el if de arriba
BEGIN
		PRINT 'EL Medico YA EXISTE EN LA TABLA'
	RETURN
END

--Especialidad------------------------------------
--SELECT * FROM Paciente
--SELECT * FROM Medico
--SELECT * FROM MedicoEspecialidad
--SELECT * FROM Especialidad


--EXEC ALTA_Especialidad 'Pediatria'

CREATE PROC ALTA_Especialidad (
								@especialidad VARCHAR (30)							
								)
as

IF NOT EXISTS (SELECT TOP 1 especialidad FROM especialidad WHERE especialidad = @especialidad)-- SI NO EXISTE LO AGREGO
BEGIN
	INSERT INTO Especialidad(especialidad)
	VALUES(@especialidad)
	PRINT 'LA ESPECIALIDAD SE AGREGO CORRECTAMENTE'
	RETURN
END
ELSE --
BEGIN
		PRINT 'LA ESPECIALIDAD YA EXISTE EN LA TABLA'
	RETURN
END

-- SP_help ALTA_Medico