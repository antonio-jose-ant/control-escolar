
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