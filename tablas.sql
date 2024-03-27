create table materias(id int, nombre varchar (255), PRIMARY key (id));
create table grupo(id int, grupo varchar(10),PRIMARY key (id));
create table grado(id int,PRIMARY key (id));
create table turno (id char (1),turno varchar(20),H_Entada TIME, H_Salida TIME,PRIMARY key (id));

create table usuarios(id int, username varchar(40),password varchar(64),tipoUser varchar(64),unique key (username),primary key (id));
create table docente (id int, nombre varchar(255),CURP varchar(18),RFC varchar(18),PRIMARY key (id));
create table alumno(id int,nombre varchar(255),edad int, id_grado int,	id_grupo int,id_turno char (1),CURP varchar(18), PRIMARY key (id),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_grupo) references grupo(id),FOREIGN key (id_turno) references turno(id));
create table materias_asignadas(id_grado int,id_materia int, FOREIGN key (id_grado) references grado(id),FOREIGN key (id_materia) references materias(id));

create table materias_impartidas(id_materia int,id_docente int, id_grupo int, id_turno char (1),FOREIGN key (id_docente) references docente(id), FOREIGN key (id_materia) references materias(id),FOREIGN key (id_grupo) references grupo(id),FOREIGN key (id_turno) references turno(id));

create table ca_bloque1(id_alu int,id_materia int,calificacion  int, FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id));
create table ca_bloque2(id_alu int,id_materia int,calificacion  int, FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id));
create table ca_bloque3(id_alu int,id_materia int,calificacion  int, FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id));
create table ca_bloque4(id_alu int,id_materia int,calificacion  int, FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id));
create table ca_bloque5(id_alu int,id_materia int,calificacion  int, FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id));

create table asistencias (id_aistencia int,fecha_asistencia date, id_materia int, id_alu  int, asistencia int, primary key (id_aistencia),FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id));

create table trabajos_clase(id_trabajo int, bloque int,id_grado int,id_materia int,id_alu int,id_turno char(1), cal int,fecha date,nombre_t varchar (50),primary key (id_trabajo),FOREIGN key (id_grado) references grado(id),FOREIGN key (id_materia) references materias(id),FOREIGN key (id_alu) references alumno(id),FOREIGN key (id_turno) references turno(id));
create table trabajos_registrados()

/*alumnos*/
-- Alumnos para el primer grado (5 alumnos para cada grupo)





