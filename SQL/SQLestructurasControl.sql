--estructuras de control
--IF & EXISTS
DECLARE @idpaciente int
DECLARE @idturno int

SET @idpaciente = 7

IF @idpaciente = 7 
BEGIN
	SET @idturno = 20
	SELECT * FROM Paciente WHERE idPaciente = @idpaciente
	PRINT @idturno

	IF EXISTS (SELECT * FROM Paciente WHERE idPaciente = 2)
		PRINT 'EXISTE'
	ELSE
		PRINT 'NO EXISTE'
END

ELSE 
BEGIN
	SELECT * FROM Paciente WHERE idPaciente = @idpaciente
	SET @idturno = 10
	PRINT @idturno
END

--WHILE
DECLARE @contador int=0

WHILE @contador <= 10
BEGIN
	PRINT cast(@contador as varchar) + ' line'
	SET @contador = @contador +1
END

--CASE
DECLARE @valor int 
DECLARE @resultado char(10) = '' 
SET @valor = 10

SET @resultado =   (CASE  WHEN @valor = 10 THEN 'ROJO'
						  WHEN @valor = 20 THEN 'VERDE'
						  WHEN @valor = 30 THEN 'Azul'
					END)

PRINT @resultado

SELECT *, (CASE WHEN estado =1 THEN 'VERDE'
				WHEN estado =2 THEN 'ROJO'
				WHEN estado =3 THEN 'AZUL'
				WHEN estado =4 THEN 'AMARILLO'
				WHEN estado =5 THEN 'NARANJA'
				WHEN estado =6 THEN 'MORADO'
			ELSE 'GRIS'
			END) as colorTurno FROM Turno

-- RETURN & BREAK
DECLARE @contador int=0

WHILE @contador <= 10
BEGIN
	PRINT cast(@contador as varchar) + ' line'
	SET @contador = @contador +2
	IF @contador >=5
		RETURN --BREAK --brake sale del loop y sigue ejecutando
	PRINT 'HOLA'
END

--TRY CATCH
DECLARE @contador int

BEGIN TRY
	SET @contador = 'TEXTO'
END TRY

BEGIN CATCH
	PRINT 'No es posible asignas texto a variable contador tipo int'
END CATCH



