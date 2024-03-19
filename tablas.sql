create table materias(id int, nombre varchar (255), PRIMARY key (id));
create table grupo(id int, grupo varchar(10),PRIMARY key (id));
create table grado(id int, grado int,PRIMARY key (id));
create table turno (id char (1),turno varchar(20),H_Entada TIME, H_Salida TIME,PRIMARY key (id));

create table usuarios(id int, username varchar(40),password varchar(64),tipoUser varchar(64),unique key (username),primary key (id));
create table docente (id int, nombre varchar(255),PRIMARY key (id));
create table alumno(id int,nombre varchar(255),edad int, id_grado int,	id_grupo int,id_turno char (1),PRIMARY key (id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_grupo) references grupo(id),FOREIGN key (id_turno) references turno(id));
create table materias_asignadas(id_grado int,id_materia int, FOREIGN key (id_grado) references grado(id),FOREIGN key (id_materia) references materias(id));
create table materias_impartidas(id_materia int,id_docente int, id_grado int, id_grupo int, id_turno char (1),FOREIGN key (id_docente) references docente(id), FOREIGN key (id_materia) references materias(id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_grupo) references grupo(id),FOREIGN key (id_turno) references turno(id));
create table ca_bloque1(id_alu int,id_materia int,calificacion  int, id_grado int,FOREIGN key (id_materia) references materias(id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_alu) references alumno(id));

create table ca_bloque2(id_alu int,id_materia int,calificacion  int, id_grado int,FOREIGN key (id_materia) references materias(id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_alu) references alumno(id));
create table ca_bloque3(id_alu int,id_materia int,calificacion  int, id_grado int,FOREIGN key (id_materia) references materias(id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_alu) references alumno(id));
create table ca_bloque4(id_alu int,id_materia int,calificacion  int, id_grado int,FOREIGN key (id_materia) references materias(id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_alu) references alumno(id));
create table ca_bloque5(id_alu int,id_materia int,calificacion  int,id_grado int,FOREIGN key (id_materia) references materias(id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_alu) references alumno(id));
create table asistencias (id_aistencia int,fecha_asistencia date, id_materia int, id_alu  int, asistencia int, primary key (id_aistencia),FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id));
create table trabajos_clase(id_trabajo int, bloque int,id_grado int,id_materia int,id_alu int,id_turno char(1), cal int,fecha date,nombre_t varchar (50),primary key (id_trabajo),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id),FOREIGN key (id_turno) references turno(id));


SELECT (SUM(b1.calificacion) / COUNT(*))+(SUM(b2.calificacion) / COUNT(*)) AS promedio_total FROM ca_bloque1 b1;

SELECT ((SUM(b1.calificacion) / COUNT(*)) + (SUM(b2.calificacion) / COUNT(*)) + (SUM(b3.calificacion) / COUNT(*)) + (SUM(b4.calificacion) / COUNT(*)) + (SUM(b5.calificacion) / COUNT(*)))/5 AS suma_total FROM ca_bloque1 b1 JOIN ca_bloque2 b2 ON b1.id_alu = b2.id_alu JOIN ca_bloque3 b3 ON b1.id_alu = b3.id_alu JOIN ca_bloque4 b4 ON b1.id_alu = b4.id_alu JOIN ca_bloque5 b5 ON b1.id_alu = b5.id_alu ;




SELECT cb1.calificacion, a.nombre AS nombre_alumno FROM ca_bloque1 cb1 JOIN alumno a ON cb1.id_alu = a.id JOIN grado g ON a.id_grado = g.id JOIN grupo gr ON a.id_grupo = gr.id WHERE g.grado = 1 AND gr.grupo = 'a';




SELECT ((SUM(b1.calificacion) / COUNT(*)) + (SUM(b2.calificacion) / COUNT(*)) + (SUM(b3.calificacion) / COUNT(*)) + (SUM(b4.calificacion) / COUNT(*)) + (SUM(b5.calificacion) / COUNT(*))) / 5 AS suma_total FROM ca_bloque1 b1 JOIN ca_bloque2 b2 ON b1.id_alu = b2.id_alu JOIN ca_bloque3 b3 ON b1.id_alu = b3.id_alu JOIN  ca_bloque4 b4 ON b1.id_alu = b4.id_alu JOIN ca_bloque5 b5 ON b1.id_alu = b5.id_alu JOIN alumno a ON b1.id_alu = a.id JOIN grado g ON a.id_grado = g.id JOIN grupo gr ON a.id_grupo = gr.id WHERE g.grado = 1 AND gr.grupo = 1;


/********************************************/
SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 1 
AND 
    a.id_grupo = 1
AND 
    a.id_turno='M';

SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 1 
AND 
    a.id_grupo = 1
AND 
    a.id_turno='B';


SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 1 
AND 
    a.id_grupo = 2
AND 
    a.id_turno='M';

SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 1 
AND 
    a.id_grupo = 2
AND 
    a.id_turno='B';

   /***/
   SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 2 
AND 
    a.id_grupo = 1
AND 
    a.id_turno='M';

SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 2 
AND 
    a.id_grupo = 1
AND 
    a.id_turno='B';


SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 2 
AND 
    a.id_grupo = 2
AND 
    a.id_turno='M';

SELECT (
    (SUM(b1.calificacion) / COUNT(*)) + 
    (SUM(b2.calificacion) / COUNT(*)) + 
    (SUM(b3.calificacion) / COUNT(*)) + 
    (SUM(b4.calificacion) / COUNT(*)) + 
    (SUM(b5.calificacion) / COUNT(*))
) / 5 AS suma_total
FROM 
    escuela.ca_bloque1 b1 
JOIN 
    escuela.ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
JOIN 
    escuela.ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
JOIN 
    escuela.ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
JOIN 
    escuela.ca_bloque5 b5 ON b1.id_alu = b5.id_alu
JOIN
    escuela.alumno a ON b1.id_alu = a.id
WHERE
    a.id_grado = 2 
AND 
    a.id_grupo = 2
AND 
    a.id_turno='B'; 
/********************************************/


SELECT AVG(calificacion) AS calificacion_general
FROM escuela.ca_bloque1
WHERE id_materia IN (
    SELECT id_materia
    FROM escuela.materias_impartidas
    WHERE id_docente = 1
);

SELECT AVG(calificacion) AS calificacion_general
FROM escuela.ca_bloque1
WHERE id_materia IN (
    SELECT id_materia
    FROM escuela.materias_impartidas
    WHERE id_docente = 2
);

SELECT AVG(calificacion) AS calificacion_general
FROM escuela.ca_bloque1
WHERE id_materia IN (
    SELECT id_materia
    FROM escuela.materias_impartidas
    WHERE id_docente = 3
);

SELECT AVG(calificacion) AS calificacion_general
FROM escuela.ca_bloque1
WHERE id_materia IN (
    SELECT id_materia
    FROM escuela.materias_impartidas
    WHERE id_docente = 4
);

SELECT AVG(calificacion) AS calificacion_general
FROM escuela.ca_bloque1
WHERE id_materia IN (
    SELECT id_materia
    FROM escuela.materias_impartidas
    WHERE id_docente = 5
);




insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (1,1,1,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (1,1,1,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (1,1,1,1,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (1,1,1,2,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (3,3,1,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (3,3,1,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (3,3,1,1,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (3,3,1,2,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (2,2,2,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (2,2,2,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (2,2,2,1,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (2,2,2,2,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (4,4,2,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (4,4,2,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (4,4,2,1,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (4,4,2,2,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (5,5,2,1,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (5,5,2,2,'M');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (5,5,2,1,'B');
insert into materias_impartidas (id_materia,id_docente,id_grado,id_grupo,id_turno) values (5,5,2,2,'B');
