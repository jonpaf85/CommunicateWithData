USE [CentroMedico]
GO
/****** Object:  StoredProcedure [dbo].[S_paciente]    Script Date: 23/05/2020 16:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[S_paciente] (
			@idpaciente int
)
AS --a partir de aqui lo que queramos ejecutar

DECLARE @ordenamiento CHAR(1) = 'A' --ORDENAR ASCENDENTE , D DESCENDENTE
-- SET @ordenamiento = 'A' 
DECLARE @valorOrdenamiento CHAR(1)

SET @valorOrdenamiento = ISNULL(@ordenamiento, 'D')
PRINT @valorOrdenamiento


SELECT nombre, apellido, idPais, observacion FROM Paciente WHERE  idPaciente = @idpaciente