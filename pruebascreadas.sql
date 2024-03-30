/*materias*/

INSERT INTO materias (id, nombre) VALUES
(1, 'Matemáticas'),
(2, 'Lenguaje y Literatura'),
(3, 'Ciencias Naturales'),
(4, 'Historia'),
(5, 'Geografía'),
(6, 'Educación Física'),
(7, 'Arte'),
(8, 'Música'),
(9, 'Inglés'),
(10, 'Computación'),
(11, 'Física'),
(12, 'Química'),
(13, 'Biología'),
(14, 'Economía'),
(15, 'Filosofía');

/*materias fin */


/*maestro */
INSERT INTO docente (id, nombre,CURP,RFC)
VALUES 
    (1, 'Maestro1','CURPPRUEBA1','RFCPRUEBA1'),
    (2, 'Maestro2','CURPPRUEBA2','RFCPRUEBA2'),
    (3, 'Maestro3','CURPPRUEBA3','RFCPRUEBA3'),
    (4, 'Maestro4','CURPPRUEBA4','RFCPRUEBA4'),
    (5, 'Maestro5','CURPPRUEBA5','RFCPRUEBA5'),
    (6, 'Maestro6','CURPPRUEBA6','RFCPRUEBA6'),
    (7, 'Maestro7','CURPPRUEBA7','RFCPRUEBA7'),
    (8, 'Maestro8','CURPPRUEBA8','RFCPRUEBA8'),
    (9, 'Maestro9','CURPPRUEBA9','RFCPRUEBA9'),
    (10, 'Maestro10','CURPPRUEBA10','RFCPRUEBA10'),
    (11, 'Maestro11','CURPPRUEBA11','RFCPRUEBA11'),
    (12, 'Maestro12','CURPPRUEBA12','RFCPRUEBA12'),
    (13, 'Maestro13','CURPPRUEBA13','RFCPRUEBA13'),
    (14, 'Maestro14','CURPPRUEBA14','RFCPRUEBA14'),
    (15, 'Maestro15','CURPPRUEBA15','RFCPRUEBA15');

/*maestro fin*/
/*grado y grupo 1*/

INSERT INTO grado (id, grado) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insertar 3 grupos
INSERT INTO grupo (id, grupo) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');


/*grado y grupo fin*/
/*horario */
-- Insertar turno de la mañana
INSERT INTO turno (id, turno, H_Entada, H_Salida) VALUES
('M', 'Mañana', '07:00:00', '14:00:00');

-- Insertar turno de la tarde
INSERT INTO turno (id, turno, H_Entada, H_Salida) VALUES
('T', 'Tarde', '14:00:00', '21:00:00');

/*horario fin*/
/*materias asignadas*/

-- Para el grado 1
INSERT INTO materias_asignadas (id_grado, id_materia)
VALUES
    (1, 1),  -- Asigna la materia con ID 1 al grado 1
    (1, 2),  -- Asigna la materia con ID 2 al grado 1
    (1, 3),  -- Asigna la materia con ID 3 al grado 1
    (1, 4),  -- Asigna la materia con ID 4 al grado 1
    (1, 5);  -- Asigna la materia con ID 5 al grado 1

-- Para el grado 2
INSERT INTO materias_asignadas (id_grado, id_materia)
VALUES
    (2, 6),  -- Asigna la materia con ID 6 al grado 2
    (2, 7),  -- Asigna la materia con ID 7 al grado 2
    (2, 8),  -- Asigna la materia con ID 8 al grado 2
    (2, 9),  -- Asigna la materia con ID 9 al grado 2
    (2, 10); -- Asigna la materia con ID 10 al grado 2

-- Para el grado 3
INSERT INTO materias_asignadas (id_grado, id_materia)
VALUES
    (3, 11), -- Asigna la materia con ID 11 al grado 3
    (3, 12), -- Asigna la materia con ID 12 al grado 3
    (3, 13), -- Asigna la materia con ID 13 al grado 3
    (3, 14), -- Asigna la materia con ID 14 al grado 3
    (3, 15); -- Asigna la materia con ID 15 al grado 3
/*materias asignadas fin */

/*materias aignadas*/


insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (1,1,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (1,1,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (1,1,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (1,1,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (1,1,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (1,1,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (2,2,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (2,2,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (2,2,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (2,2,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (2,2,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (2,2,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (3,3,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (3,3,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (3,3,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (3,3,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (3,3,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (3,3,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (4,4,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (4,4,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (4,4,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (4,4,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (4,4,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (4,4,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (5,5,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (5,5,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (5,5,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (5,5,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (5,5,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (5,5,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (6,6,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (6,6,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (6,6,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (6,6,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (6,6,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (6,6,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (7,7,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (7,7,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (7,7,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (7,7,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (7,7,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (7,7,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (8,8,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (8,8,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (8,8,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (8,8,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (8,8,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (8,8,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (9,9,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (9,9,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (9,9,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (9,9,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (9,9,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (9,9,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (10,10,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (10,10,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (10,10,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (10,10,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (10,10,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (10,10,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (11,11,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (11,11,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (11,11,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (11,11,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (11,11,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (11,11,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (12,12,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (12,12,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (12,12,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (12,12,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (12,12,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (12,12,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (13,13,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (13,13,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (13,13,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (13,13,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (13,13,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (13,13,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (14,14,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (14,14,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (14,14,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (14,14,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (14,14,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (14,14,3,'T');

insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (15,15,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (15,15,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (15,15,3,'M');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (15,15,1,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (15,15,2,'T');
insert into materias_impartidas (id_materia,id_docente,id_grupo,id_turno) values (15,15,3,'T');

INSERT INTO alumno (id,nombre, edad, id_grado, id_grupo, id_turno, CURP)
VALUES
    (1,'Alumno1 Grado1', 10, 1, 1, 'M', 'CURP001'),
    (2,'Alumno2 Grado1', 10, 1, 1, 'M', 'CURP002'),
    (3,'Alumno3 Grado1', 10, 1, 1, 'M', 'CURP003'),
    (4,'Alumno4 Grado1', 10, 1, 1, 'M', 'CURP004'),
    (5,'Alumno5 Grado1', 10, 1, 1, 'M', 'CURP005'),
    (6,'Alumno6 Grado1', 10, 1, 2, 'M', 'CURP006'),
    (7,'Alumno7 Grado1', 10, 1, 2, 'M', 'CURP007'),
    (8,'Alumno8 Grado1', 10, 1, 2, 'M', 'CURP008'),
    (9,'Alumno9 Grado1', 10, 1, 2, 'M', 'CURP009'),
    (10,'Alumno10 Grado1', 10, 1, 2, 'M', 'CURP010'),
    (11,'Alumno11 Grado1', 10, 1, 3, 'M', 'CURP011'),
    (12,'Alumno12 Grado1', 10, 1, 3, 'M', 'CURP012'),
    (13,'Alumno13 Grado1', 10, 1, 3, 'M', 'CURP013'),
    (14,'Alumno14 Grado1', 10, 1, 3, 'M', 'CURP014'),
    (15,'Alumno15 Grado1', 10, 1, 3, 'M', 'CURP015'),
    (16,'Alumno1 Grado2', 11, 2, 1, 'M', 'CURP016'),
    (17,'Alumno2 Grado2', 11, 2, 1, 'M', 'CURP017'),
    (18,'Alumno3 Grado2', 11, 2, 1, 'M', 'CURP018'),
    (19,'Alumno4 Grado2', 11, 2, 1, 'M', 'CURP019'),
    (20,'Alumno5 Grado2', 11, 2, 1, 'M', 'CURP020'),
    (21,'Alumno6 Grado2', 11, 2, 2, 'M', 'CURP021'),
    (22,'Alumno7 Grado2', 11, 2, 2, 'M', 'CURP022'),
    (23,'Alumno8 Grado2', 11, 2, 2, 'M', 'CURP023'),
    (24,'Alumno9 Grado2', 11, 2, 2, 'M', 'CURP024'),
    (25,'Alumno10 Grado2', 11, 2, 2, 'M', 'CURP025'),
    (26,'Alumno11 Grado2', 11, 2, 3, 'M', 'CURP026'),
    (27,'Alumno12 Grado2', 11, 2, 3, 'M', 'CURP027'),
    (28,'Alumno13 Grado2', 11, 2, 3, 'M', 'CURP028'),
    (29,'Alumno14 Grado2', 11, 2, 3, 'M', 'CURP029'),
    (30,'Alumno15 Grado2', 11, 2, 3, 'M', 'CURP030'),
    (31,'Alumno1 Grado3', 12, 3, 1, 'M', 'CURP031'),
    (32,'Alumno2 Grado3', 12, 3, 1, 'M', 'CURP032'),
    (33,'Alumno3 Grado3', 12, 3, 1, 'M', 'CURP033'),
    (34,'Alumno4 Grado3', 12, 3, 1, 'M', 'CURP034'),
    (35,'Alumno5 Grado3', 12, 3, 1, 'M', 'CURP035'),
    (36,'Alumno6 Grado3', 12, 3, 2, 'M', 'CURP036'),
    (37,'Alumno7 Grado3', 12, 3, 2, 'M', 'CURP037'),
    (38,'Alumno8 Grado3', 12, 3, 2, 'M', 'CURP038'),
    (39,'Alumno9 Grado3', 12, 3, 2, 'M', 'CURP039'),
    (40,'Alumno10 Grado3', 12, 3, 2, 'M', 'CURP040'),
    (41,'Alumno11 Grado3', 12, 3, 3, 'M', 'CURP041'),
    (42,'Alumno12 Grado3', 12, 3, 3, 'M', 'CURP042'),
    (43,'Alumno13 Grado3', 12, 3, 3, 'M', 'CURP043'),
    (44,'Alumno14 Grado3', 12, 3, 3, 'M', 'CURP044'),
    (45,'Alumno15 Grado3', 12, 3, 3, 'M', 'CURP045');

INSERT INTO alumno (id,nombre, edad, id_grado, id_grupo, id_turno, CURP)
VALUES
    (46,'Alumno1 Grado1', 10, 1, 1, 'T', 'CURP046'),
    (47,'Alumno2 Grado1', 10, 1, 1, 'T', 'CURP047'),
    (48,'Alumno3 Grado1', 10, 1, 1, 'T', 'CURP048'),
    (49,'Alumno4 Grado1', 10, 1, 1, 'T', 'CURP049'),
    (50,'Alumno5 Grado1', 10, 1, 1, 'T', 'CURP050'),
    (51,'Alumno6 Grado1', 10, 1, 2, 'T', 'CURP051'),
    (52,'Alumno7 Grado1', 10, 1, 2, 'T', 'CURP052'),
    (53,'Alumno8 Grado1', 10, 1, 2, 'T', 'CURP053'),
    (54,'Alumno9 Grado1', 10, 1, 2, 'T', 'CURP054'),
    (55,'Alumno10 Grado1', 10, 1, 2, 'T', 'CURP055'),
    (56,'Alumno11 Grado1', 10, 1, 3, 'T', 'CURP056'),
    (57,'Alumno12 Grado1', 10, 1, 3, 'T', 'CURP057'),
    (58,'Alumno13 Grado1', 10, 1, 3, 'T', 'CURP058'),
    (59,'Alumno14 Grado1', 10, 1, 3, 'T', 'CURP059'),
    (60,'Alumno15 Grado1', 10, 1, 3, 'T', 'CURP060'),
    (61,'Alumno1 Grado2', 11, 2, 1, 'T', 'CURP061'),
    (62,'Alumno2 Grado2', 11, 2, 1, 'T', 'CURP062'),
    (63,'Alumno3 Grado2', 11, 2, 1, 'T', 'CURP063'),
    (64,'Alumno4 Grado2', 11, 2, 1, 'T', 'CURP064'),
    (65,'Alumno5 Grado2', 11, 2, 1, 'T', 'CURP065'),
    (66,'Alumno6 Grado2', 11, 2, 2, 'T', 'CURP066'),
    (67,'Alumno7 Grado2', 11, 2, 2, 'T', 'CURP067'),
    (68,'Alumno8 Grado2', 11, 2, 2, 'T', 'CURP068'),
    (69,'Alumno9 Grado2', 11, 2, 2, 'T', 'CURP069'),
    (70,'Alumno10 Grado2', 11, 2, 2, 'T', 'CURP070'),
    (71,'Alumno11 Grado2', 11, 2, 3, 'T', 'CURP071'),
    (72,'Alumno12 Grado2', 11, 2, 3, 'T', 'CURP072'),
    (73,'Alumno13 Grado2', 11, 2, 3, 'T', 'CURP073'),
    (74,'Alumno14 Grado2', 11, 2, 3, 'T', 'CURP074'),
    (75,'Alumno15 Grado2', 11, 2, 3, 'T', 'CURP075'),
    (76,'Alumno1 Grado3', 12, 3, 1, 'T', 'CURP076'),
    (77,'Alumno2 Grado3', 12, 3, 1, 'T', 'CURP077'),
    (78,'Alumno3 Grado3', 12, 3, 1, 'T', 'CURP078'),
    (79,'Alumno4 Grado3', 12, 3, 1, 'T', 'CURP079'),
    (80,'Alumno5 Grado3', 12, 3, 1, 'T', 'CURP080'),
    (81,'Alumno6 Grado3', 12, 3, 2, 'T', 'CURP081'),
    (82,'Alumno7 Grado3', 12, 3, 2, 'T', 'CURP082'),
    (83,'Alumno8 Grado3', 12, 3, 2, 'T', 'CURP083'),
    (84,'Alumno9 Grado3', 12, 3, 2, 'T', 'CURP084'),
    (85,'Alumno10 Grado3', 12, 3, 2, 'T', 'CURP085'),
    (86,'Alumno11 Grado3', 12, 3, 3, 'T', 'CURP086'),
    (87,'Alumno12 Grado3', 12, 3, 3, 'T', 'CURP087'),
    (88,'Alumno13 Grado3', 12, 3, 3, 'T', 'CURP088'),
    (89,'Alumno14 Grado3', 12, 3, 3, 'T', 'CURP089'),
    (90,'Alumno15 Grado3', 12, 3, 3, 'T', 'CURP090');
/*alumnos*/

insert into ca_bloque1 (id_alu,id_materia,calificacion) VALUES 
(1,1,ROUND(RAND() * 100)),
(1,2,ROUND(RAND() * 100)),
(1,3,ROUND(RAND() * 100)),
(1,4,ROUND(RAND() * 100)),
(1,5,ROUND(RAND() * 100)),
(2,1,ROUND(RAND() * 100)),
(2,2,ROUND(RAND() * 100)),
(2,3,ROUND(RAND() * 100)),
(2,4,ROUND(RAND() * 100)),
(2,5,ROUND(RAND() * 100)),
(3,1,ROUND(RAND() * 100)),
(3,2,ROUND(RAND() * 100)),
(3,3,ROUND(RAND() * 100)),
(3,4,ROUND(RAND() * 100)),
(3,5,ROUND(RAND() * 100)),
(5,1,ROUND(RAND() * 100)),
(5,2,ROUND(RAND() * 100)),
(5,3,ROUND(RAND() * 100)),
(5,4,ROUND(RAND() * 100)),
(5,5,ROUND(RAND() * 100)),
(6,1,ROUND(RAND() * 100)),
(6,2,ROUND(RAND() * 100)),
(6,3,ROUND(RAND() * 100)),
(6,4,ROUND(RAND() * 100)),
(6,5,ROUND(RAND() * 100)),
(7,1,ROUND(RAND() * 100)),
(7,2,ROUND(RAND() * 100)),
(7,3,ROUND(RAND() * 100)),
(7,4,ROUND(RAND() * 100)),
(7,5,ROUND(RAND() * 100)),
(8,1,ROUND(RAND() * 100)),
(8,2,ROUND(RAND() * 100)),
(8,3,ROUND(RAND() * 100)),
(8,4,ROUND(RAND() * 100)),
(8,5,ROUND(RAND() * 100)),
(9,1,ROUND(RAND() * 100)),
(9,2,ROUND(RAND() * 100)),
(9,3,ROUND(RAND() * 100)),
(9,4,ROUND(RAND() * 100)),
(9,5,ROUND(RAND() * 100)),
(10,1,ROUND(RAND() * 100)),
(10,2,ROUND(RAND() * 100)),
(10,3,ROUND(RAND() * 100)),
(10,4,ROUND(RAND() * 100)),
(10,5,ROUND(RAND() * 100)),
(11,1,ROUND(RAND() * 100)),
(11,2,ROUND(RAND() * 100)),
(11,3,ROUND(RAND() * 100)),
(11,4,ROUND(RAND() * 100)),
(11,5,ROUND(RAND() * 100)),
(12,1,ROUND(RAND() * 100)),
(12,2,ROUND(RAND() * 100)),
(12,3,ROUND(RAND() * 100)),
(12,4,ROUND(RAND() * 100)),
(12,5,ROUND(RAND() * 100)),
(13,1,ROUND(RAND() * 100)),
(13,2,ROUND(RAND() * 100)),
(13,3,ROUND(RAND() * 100)),
(13,4,ROUND(RAND() * 100)),
(13,5,ROUND(RAND() * 100)),
(14,1,ROUND(RAND() * 100)),
(14,2,ROUND(RAND() * 100)),
(14,3,ROUND(RAND() * 100)),
(14,4,ROUND(RAND() * 100)),
(14,5,ROUND(RAND() * 100)),
(15,1,ROUND(RAND() * 100)),
(15,2,ROUND(RAND() * 100)),
(15,3,ROUND(RAND() * 100)),
(15,4,ROUND(RAND() * 100)),
(15,5,ROUND(RAND() * 100)),
(16, 6, ROUND(RAND() * 100)),
(16, 7, ROUND(RAND() * 100)),
(16, 8, ROUND(RAND() * 100)),
(16, 9, ROUND(RAND() * 100)),
(16, 10, ROUND(RAND() * 100)),

(17, 6, ROUND(RAND() * 100)),
(17, 7, ROUND(RAND() * 100)),
(17, 8, ROUND(RAND() * 100)),
(17, 9, ROUND(RAND() * 100)),
(17, 10, ROUND(RAND() * 100)),

(18, 6, ROUND(RAND() * 100)),
(18, 7, ROUND(RAND() * 100)),
(18, 8, ROUND(RAND() * 100)),
(18, 9, ROUND(RAND() * 100)),
(18, 10, ROUND(RAND() * 100)),

(19, 6, ROUND(RAND() * 100)),
(19, 7, ROUND(RAND() * 100)),
(19, 8, ROUND(RAND() * 100)),
(19, 9, ROUND(RAND() * 100)),
(19, 10, ROUND(RAND() * 100)),

(20, 6, ROUND(RAND() * 100)),
(20, 7, ROUND(RAND() * 100)),
(20, 8, ROUND(RAND() * 100)),
(20, 9, ROUND(RAND() * 100)),
(20, 10, ROUND(RAND() * 100)),

(21, 6, ROUND(RAND() * 100)),
(21, 7, ROUND(RAND() * 100)),
(21, 8, ROUND(RAND() * 100)),
(21, 9, ROUND(RAND() * 100)),
(21, 10, ROUND(RAND() * 100)),

(22, 6, ROUND(RAND() * 100)),
(22, 7, ROUND(RAND() * 100)),
(22, 8, ROUND(RAND() * 100)),
(22, 9, ROUND(RAND() * 100)),
(22, 10, ROUND(RAND() * 100)),

(23, 6, ROUND(RAND() * 100)),
(23, 7, ROUND(RAND() * 100)),
(23, 8, ROUND(RAND() * 100)),
(23, 9, ROUND(RAND() * 100)),
(23, 10, ROUND(RAND() * 100)),

(24, 6, ROUND(RAND() * 100)),
(24, 7, ROUND(RAND() * 100)),
(24, 8, ROUND(RAND() * 100)),
(24, 9, ROUND(RAND() * 100)),
(24, 10, ROUND(RAND() * 100)),

(25, 6, ROUND(RAND() * 100)),
(25, 7, ROUND(RAND() * 100)),
(25, 8, ROUND(RAND() * 100)),
(25, 9, ROUND(RAND() * 100)),
(25, 10, ROUND(RAND() * 100)),

(26, 6, ROUND(RAND() * 100)),
(26, 7, ROUND(RAND() * 100)),
(26, 8, ROUND(RAND() * 100)),
(26, 9, ROUND(RAND() * 100)),
(26, 10, ROUND(RAND() * 100)),

(27, 6, ROUND(RAND() * 100)),
(27, 7, ROUND(RAND() * 100)),
(27, 8, ROUND(RAND() * 100)),
(27, 9, ROUND(RAND() * 100)),
(27, 10, ROUND(RAND() * 100)),

(28, 6, ROUND(RAND() * 100)),
(28, 7, ROUND(RAND() * 100)),
(28, 8, ROUND(RAND() * 100)),
(28, 9, ROUND(RAND() * 100)),
(28, 10, ROUND(RAND() * 100)),

(29, 6, ROUND(RAND() * 100)),
(29, 7, ROUND(RAND() * 100)),
(29, 8, ROUND(RAND() * 100)),
(29, 9, ROUND(RAND() * 100)),
(29, 10, ROUND(RAND() * 100)),

(30, 6, ROUND(RAND() * 100)),
(30, 7, ROUND(RAND() * 100)),
(30, 8, ROUND(RAND() * 100)),
(30, 9, ROUND(RAND() * 100)),
(30, 10, ROUND(RAND() * 100)),

(31, 11, ROUND(RAND() * 100)),
(31, 12, ROUND(RAND() * 100)),
(31, 13, ROUND(RAND() * 100)),
(31, 14, ROUND(RAND() * 100)),
(31, 15, ROUND(RAND() * 100)),

(32, 11, ROUND(RAND() * 100)),
(32, 12, ROUND(RAND() * 100)),
(32, 13, ROUND(RAND() * 100)),
(32, 14, ROUND(RAND() * 100)),
(32, 15, ROUND(RAND() * 100)),

(33, 11, ROUND(RAND() * 100)),
(33, 12, ROUND(RAND() * 100)),
(33, 13, ROUND(RAND() * 100)),
(33, 14, ROUND(RAND() * 100)),
(33, 15, ROUND(RAND() * 100)),

(34, 11, ROUND(RAND() * 100)),
(34, 12, ROUND(RAND() * 100)),
(34, 13, ROUND(RAND() * 100)),
(34, 14, ROUND(RAND() * 100)),
(34, 15, ROUND(RAND() * 100)),

(35, 11, ROUND(RAND() * 100)),
(35, 12, ROUND(RAND() * 100)),
(35, 13, ROUND(RAND() * 100)),
(35, 14, ROUND(RAND() * 100)),
(35, 15, ROUND(RAND() * 100)),

(36, 11, ROUND(RAND() * 100)),
(36, 12, ROUND(RAND() * 100)),
(36, 13, ROUND(RAND() * 100)),
(36, 14, ROUND(RAND() * 100)),
(36, 15, ROUND(RAND() * 100)),

(37, 11, ROUND(RAND() * 100)),
(37, 12, ROUND(RAND() * 100)),
(37, 13, ROUND(RAND() * 100)),
(37, 14, ROUND(RAND() * 100)),
(37, 15, ROUND(RAND() * 100)),

(38, 11, ROUND(RAND() * 100)),
(38, 12, ROUND(RAND() * 100)),
(38, 13, ROUND(RAND() * 100)),
(38, 14, ROUND(RAND() * 100)),
(38, 15, ROUND(RAND() * 100)),

(39, 11, ROUND(RAND() * 100)),
(39, 12, ROUND(RAND() * 100)),
(39, 13, ROUND(RAND() * 100)),
(39, 14, ROUND(RAND() * 100)),
(39, 15, ROUND(RAND() * 100)),

(40, 11, ROUND(RAND() * 100)),
(40, 12, ROUND(RAND() * 100)),
(40, 13, ROUND(RAND() * 100)),
(40, 14, ROUND(RAND() * 100)),
(40, 15, ROUND(RAND() * 100)),

(41, 11, ROUND(RAND() * 100)),
(41, 12, ROUND(RAND() * 100)),
(41, 13, ROUND(RAND() * 100)),
(41, 14, ROUND(RAND() * 100)),
(41, 15, ROUND(RAND() * 100)),

(42, 11, ROUND(RAND() * 100)),
(42, 12, ROUND(RAND() * 100)),
(42, 13, ROUND(RAND() * 100)),
(42, 14, ROUND(RAND() * 100)),
(42, 15, ROUND(RAND() * 100)),

(43, 11, ROUND(RAND() * 100)),
(43, 12, ROUND(RAND() * 100)),
(43, 13, ROUND(RAND() * 100)),
(43, 14, ROUND(RAND() * 100)),
(43, 15, ROUND(RAND() * 100)),

(44, 11, ROUND(RAND() * 100)),
(44, 12, ROUND(RAND() * 100)),
(44, 13, ROUND(RAND() * 100)),
(44, 14, ROUND(RAND() * 100)),
(44, 15, ROUND(RAND() * 100)),

(45, 11, ROUND(RAND() * 100)),
(45, 12, ROUND(RAND() * 100)),
(45, 13, ROUND(RAND() * 100)),
(45, 14, ROUND(RAND() * 100)),
(45, 15, ROUND(RAND() * 100)),

(46, 1, ROUND(RAND() * 100)),
(46, 2, ROUND(RAND() * 100)),
(46, 3, ROUND(RAND() * 100)),
(46, 4, ROUND(RAND() * 100)),
(46, 5, ROUND(RAND() * 100)),

(47, 1, ROUND(RAND() * 100)),
(47, 2, ROUND(RAND() * 100)),
(47, 3, ROUND(RAND() * 100)),
(47, 4, ROUND(RAND() * 100)),
(47, 5, ROUND(RAND() * 100)),

(48, 1, ROUND(RAND() * 100)),
(48, 2, ROUND(RAND() * 100)),
(48, 3, ROUND(RAND() * 100)),
(48, 4, ROUND(RAND() * 100)),
(48, 5, ROUND(RAND() * 100)),

(49, 1, ROUND(RAND() * 100)),
(49, 2, ROUND(RAND() * 100)),
(49, 3, ROUND(RAND() * 100)),
(49, 4, ROUND(RAND() * 100)),
(49, 5, ROUND(RAND() * 100)),

(50, 1, ROUND(RAND() * 100)),
(50, 2, ROUND(RAND() * 100)),
(50, 3, ROUND(RAND() * 100)),
(50, 4, ROUND(RAND() * 100)),
(50, 5, ROUND(RAND() * 100)),

(51, 1, ROUND(RAND() * 100)),
(51, 2, ROUND(RAND() * 100)),
(51, 3, ROUND(RAND() * 100)),
(51, 4, ROUND(RAND() * 100)),
(51, 5, ROUND(RAND() * 100)),

(52, 1, ROUND(RAND() * 100)),
(52, 2, ROUND(RAND() * 100)),
(52, 3, ROUND(RAND() * 100)),
(52, 4, ROUND(RAND() * 100)),
(52, 5, ROUND(RAND() * 100)),

(53, 1, ROUND(RAND() * 100)),
(53, 2, ROUND(RAND() * 100)),
(53, 3, ROUND(RAND() * 100)),
(53, 4, ROUND(RAND() * 100)),
(53, 5, ROUND(RAND() * 100)),

(54, 1, ROUND(RAND() * 100)),
(54, 2, ROUND(RAND() * 100)),
(54, 3, ROUND(RAND() * 100)),
(54, 4, ROUND(RAND() * 100)),
(54, 5, ROUND(RAND() * 100)),

(55, 1, ROUND(RAND() * 100)),
(55, 2, ROUND(RAND() * 100)),
(55, 3, ROUND(RAND() * 100)),
(55, 4, ROUND(RAND() * 100)),
(55, 5, ROUND(RAND() * 100)),

(56, 1, ROUND(RAND() * 100)),
(56, 2, ROUND(RAND() * 100)),
(56, 3, ROUND(RAND() * 100)),
(56, 4, ROUND(RAND() * 100)),
(56, 5, ROUND(RAND() * 100)),

(57, 1, ROUND(RAND() * 100)),
(57, 2, ROUND(RAND() * 100)),
(57, 3, ROUND(RAND() * 100)),
(57, 4, ROUND(RAND() * 100)),
(57, 5, ROUND(RAND() * 100)),

(58, 1, ROUND(RAND() * 100)),
(58, 2, ROUND(RAND() * 100)),
(58, 3, ROUND(RAND() * 100)),
(58, 4, ROUND(RAND() * 100)),
(58, 5, ROUND(RAND() * 100)),

(59, 1, ROUND(RAND() * 100)),
(59, 2, ROUND(RAND() * 100)),
(59, 3, ROUND(RAND() * 100)),
(59, 4, ROUND(RAND() * 100)),
(59, 5, ROUND(RAND() * 100)),

(60, 1, ROUND(RAND() * 100)),
(60, 2, ROUND(RAND() * 100)),
(60, 3, ROUND(RAND() * 100)),
(60, 4, ROUND(RAND() * 100)),
(60, 5, ROUND(RAND() * 100)),

(61, 6, ROUND(RAND() * 100)),
(61, 7, ROUND(RAND() * 100)),
(61, 8, ROUND(RAND() * 100)),
(61, 9, ROUND(RAND() * 100)),
(61, 10, ROUND(RAND() * 100)),

(62, 6, ROUND(RAND() * 100)),
(62, 7, ROUND(RAND() * 100)),
(62, 8, ROUND(RAND() * 100)),
(62, 9, ROUND(RAND() * 100)),
(62, 10, ROUND(RAND() * 100)),

(63, 6, ROUND(RAND() * 100)),
(63, 7, ROUND(RAND() * 100)),
(63, 8, ROUND(RAND() * 100)),
(63, 9, ROUND(RAND() * 100)),
(63, 10, ROUND(RAND() * 100)),

(64, 6, ROUND(RAND() * 100)),
(64, 7, ROUND(RAND() * 100)),
(64, 8, ROUND(RAND() * 100)),
(64, 9, ROUND(RAND() * 100)),
(64, 10, ROUND(RAND() * 100)),

(65, 6, ROUND(RAND() * 100)),
(65, 7, ROUND(RAND() * 100)),
(65, 8, ROUND(RAND() * 100)),
(65, 9, ROUND(RAND() * 100)),
(65, 10, ROUND(RAND() * 100)),

(66, 6, ROUND(RAND() * 100)),
(66, 7, ROUND(RAND() * 100)),
(66, 8, ROUND(RAND() * 100)),
(66, 9, ROUND(RAND() * 100)),
(66, 10, ROUND(RAND() * 100)),

(67, 6, ROUND(RAND() * 100)),
(67, 7, ROUND(RAND() * 100)),
(67, 8, ROUND(RAND() * 100)),
(67, 9, ROUND(RAND() * 100)),
(67, 10, ROUND(RAND() * 100)),

(68, 6, ROUND(RAND() * 100)),
(68, 7, ROUND(RAND() * 100)),
(68, 8, ROUND(RAND() * 100)),
(68, 9, ROUND(RAND() * 100)),
(68, 10, ROUND(RAND() * 100)),

(69, 6, ROUND(RAND() * 100)),
(69, 7, ROUND(RAND() * 100)),
(69, 8, ROUND(RAND() * 100)),
(69, 9, ROUND(RAND() * 100)),
(69, 10, ROUND(RAND() * 100)),

(70, 6, ROUND(RAND() * 100)),
(70, 7, ROUND(RAND() * 100)),
(70, 8, ROUND(RAND() * 100)),
(70, 9, ROUND(RAND() * 100)),
(70, 10, ROUND(RAND() * 100)),

(71, 6, ROUND(RAND() * 100)),
(71, 7, ROUND(RAND() * 100)),
(71, 8, ROUND(RAND() * 100)),
(71, 9, ROUND(RAND() * 100)),
(71, 10, ROUND(RAND() * 100)),

(72, 6, ROUND(RAND() * 100)),
(72, 7, ROUND(RAND() * 100)),
(72, 8, ROUND(RAND() * 100)),
(72, 9, ROUND(RAND() * 100)),
(72, 10, ROUND(RAND() * 100)),

(73, 6, ROUND(RAND() * 100)),
(73, 7, ROUND(RAND() * 100)),
(73, 8, ROUND(RAND() * 100)),
(73, 9, ROUND(RAND() * 100)),
(73, 10, ROUND(RAND() * 100)),

(74, 6, ROUND(RAND() * 100)),
(74, 7, ROUND(RAND() * 100)),
(74, 8, ROUND(RAND() * 100)),
(74, 9, ROUND(RAND() * 100)),
(74, 10, ROUND(RAND() * 100)),

(75, 6, ROUND(RAND() * 100)),
(75, 7, ROUND(RAND() * 100)),
(75, 8, ROUND(RAND() * 100)),
(75, 9, ROUND(RAND() * 100)),
(75, 10, ROUND(RAND() * 100)),

(76, 11, ROUND(RAND() * 100)),
(76, 12, ROUND(RAND() * 100)),
(76, 13, ROUND(RAND() * 100)),
(76, 14, ROUND(RAND() * 100)),
(76, 15, ROUND(RAND() * 100)),

(77, 11, ROUND(RAND() * 100)),
(77, 12, ROUND(RAND() * 100)),
(77, 13, ROUND(RAND() * 100)),
(77, 14, ROUND(RAND() * 100)),
(77, 15, ROUND(RAND() * 100)),

(78, 11, ROUND(RAND() * 100)),
(78, 12, ROUND(RAND() * 100)),
(78, 13, ROUND(RAND() * 100)),
(78, 14, ROUND(RAND() * 100)),
(78, 15, ROUND(RAND() * 100)),

(79, 11, ROUND(RAND() * 100)),
(79, 12, ROUND(RAND() * 100)),
(79, 13, ROUND(RAND() * 100)),
(79, 14, ROUND(RAND() * 100)),
(79, 15, ROUND(RAND() * 100)),

(80, 11, ROUND(RAND() * 100)),
(80, 12, ROUND(RAND() * 100)),
(80, 13, ROUND(RAND() * 100)),
(80, 14, ROUND(RAND() * 100)),
(80, 15, ROUND(RAND() * 100)),

(81, 11, ROUND(RAND() * 100)),
(81, 12, ROUND(RAND() * 100)),
(81, 13, ROUND(RAND() * 100)),
(81, 14, ROUND(RAND() * 100)),
(81, 15, ROUND(RAND() * 100)),

(82, 11, ROUND(RAND() * 100)),
(82, 12, ROUND(RAND() * 100)),
(82, 13, ROUND(RAND() * 100)),
(82, 14, ROUND(RAND() * 100)),
(82, 15, ROUND(RAND() * 100)),

(83, 11, ROUND(RAND() * 100)),
(83, 12, ROUND(RAND() * 100)),
(83, 13, ROUND(RAND() * 100)),
(83, 14, ROUND(RAND() * 100)),
(83, 15, ROUND(RAND() * 100)),

(84, 11, ROUND(RAND() * 100)),
(84, 12, ROUND(RAND() * 100)),
(84, 13, ROUND(RAND() * 100)),
(84, 14, ROUND(RAND() * 100)),
(84, 15, ROUND(RAND() * 100)),

(85, 11, ROUND(RAND() * 100)),
(85, 12, ROUND(RAND() * 100)),
(85, 13, ROUND(RAND() * 100)),
(85, 14, ROUND(RAND() * 100)),
(85, 15, ROUND(RAND() * 100)),

(86, 11, ROUND(RAND() * 100)),
(86, 12, ROUND(RAND() * 100)),
(86, 13, ROUND(RAND() * 100)),
(86, 14, ROUND(RAND() * 100)),
(86, 15, ROUND(RAND() * 100)),

(87, 11, ROUND(RAND() * 100)),
(87, 12, ROUND(RAND() * 100)),
(87, 13, ROUND(RAND() * 100)),
(87, 14, ROUND(RAND() * 100)),
(87, 15, ROUND(RAND() * 100)),

(88, 11, ROUND(RAND() * 100)),
(88, 12, ROUND(RAND() * 100)),
(88, 13, ROUND(RAND() * 100)),
(88, 14, ROUND(RAND() * 100)),
(88, 15, ROUND(RAND() * 100)),

(89, 11, ROUND(RAND() * 100)),
(89, 12, ROUND(RAND() * 100)),
(89, 13, ROUND(RAND() * 100)),
(89, 14, ROUND(RAND() * 100)),
(89, 15, ROUND(RAND() * 100)),

(90, 11, ROUND(RAND() * 100)),
(90, 12, ROUND(RAND() * 100)),
(90, 13, ROUND(RAND() * 100)),
(90, 14, ROUND(RAND() * 100)),
(90, 15, ROUND(RAND() * 100));

