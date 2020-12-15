
INSERT INTO TurnoEstado VALUES(0, 'Pendiente')
INSERT INTO TurnoEstado VALUES(1, 'Realizado')
INSERT INTO TurnoEstado VALUES(2, 'Cancelado')
INSERT INTO TurnoEstado VALUES(3, 'En Espera')
INSERT INTO TurnoEstado VALUES(4, 'Enfadado')
INSERT INTO TurnoEstado VALUES(5, 'Borracho')
INSERT INTO TurnoEstado VALUES(6, 'Herido de Bala')

-- INSERT & DELETE
INSERT INTO Paciente (nombre, apellido, fNacimiento, domicilio, idPais) values ('Juan','Palacios','1985-07-23','piedra buena 1','PER')
DELETE FROM Paciente WHERE nombre = 'Claudio' and apellido = 'Lopez'

INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',3, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',6, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',6, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',1, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',0, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',2, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',6, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',3, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',1, 'obs')

INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',1, 'obs')
INSERT INTO Turno (fechaTurno, estado, observacion) values ('20190101 12:00',1, 'obs')

INSERT INTO Paciente (nombre, apellido, fNacimiento, domicilio, idPais) values ('Juan', 'Perez', '20000214', 'C calabozo', 'ESP')