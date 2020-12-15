--Store Procedure

CREATE PROC S_paciente (
			@idpaciente int
)
AS --a partir de aqui lo que queramos ejecutar

SELECT * FROM Paciente WHERE  idPaciente = @idpaciente

GO -- por si quieres poner otro store procedure




