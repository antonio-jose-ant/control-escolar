<?php
include_once '../includes/db.php';
    class consultaas extends DB{ 
        public function arrayDatos ($contenido){        
            if ($contenido->rowCount() > 0) {
                $row = $contenido->fetch(PDO::FETCH_ASSOC);
                foreach ($row as $column => $value) {
                    $arrayInfotitle []=$column;
                }
                do {
                    foreach ($row as $value) {
                        $arrayInfo []=$value;
                    }
                } while ($row = $contenido->fetch(PDO::FETCH_ASSOC));
            } else {

            }
            $infoCompleta []=array('title'=>$arrayInfotitle,'contenido'=>$arrayInfo);
            return  $infoCompleta;
        }

        public function imprime ($contenido){
            if ($contenido->rowCount() > 0) {
                echo '<table>';
                echo '<tr>';
                $row = $contenido->fetch(PDO::FETCH_ASSOC);
                foreach ($row as $column => $value) {
                    echo '<th>' . htmlspecialchars($column) . '</th>';
                }
                echo '</tr>';
                do {
                    echo '<tr>';
                    foreach ($row as $value) {
                        
                        echo '<td>' . htmlspecialchars($value) . '</td>';
                    }
                    echo '</tr>';
                } while ($row = $contenido->fetch(PDO::FETCH_ASSOC));

                echo '</table>';
            } else {
                echo 'No se encontraron resultados en la tabla ' ;
            }
        } 
        
        public function calCompletoTurno($table,$turno){
            $query = $this->connect()->prepare("SELECT 
            c.calificacion,
            a.id AS id_alumno,
            a.nombre AS nombre_alumno,
            m.nombre AS nombre_materia,
            a.id_grado,
            a.id_grupo,
            a.id_turno
            FROM 
                ".$table." c
            JOIN 
                alumno a ON c.id_alu = a.id
            JOIN
                materias m ON c.id_materia = m.id
            WHERE 
                a.id_turno = '".$turno."'");
            $query->execute();
            $this->imprime($query);
        }
        public function aluHorarioCurso($turno){
            $query = $this->connect()->prepare("SELECT 
            id AS id_alumno, 
            nombre AS nombre_alumno,
            id_grado, 
            id_grupo
            FROM 
                alumno
            WHERE 
                id_turno = '".$turno."'");
            $query->execute();
            $this->imprime($query);

        }
        public function calAluBloque($idalu,$bloque) {
            $query = $this->connect()->prepare("SELECT DISTINCT
            a.nombre AS Nombre_alumno, 
            m.nombre AS nombre_materia, 
            c.calificacion, 
            g.grado, 
            gr.grupo,
            d.nombre AS nombre_profesor
            FROM 
                ".$bloque." c
            JOIN 
                alumno a ON c.id_alu = a.id
            JOIN 
                materias m ON c.id_materia = m.id
            JOIN 
                grado g ON a.id_grado = g.id
            JOIN 
                grupo gr ON a.id_grupo = gr.id
            JOIN 
                materias_impartidas mi ON m.id = mi.id_materia AND g.id = mi.id_grado AND gr.id = mi.id_grupo
            JOIN 
                docente d ON mi.id_docente = d.id
            WHERE a.id = ".$idalu );
            $query->execute();
            return $this->arrayDatos($query);
        }

        public function claseImpartida($idProfesor) {
            $query = $this->connect()->prepare("SELECT 
            a.id AS id_alumno,
            a.nombre AS nombre_alumno,
            m.nombre AS nombre_materia
            FROM 
                alumno a
            JOIN 
                materias_impartidas mi ON a.id_grado = mi.id_grado AND a.id_grupo = mi.id_grupo
            JOIN 
                docente d ON mi.id_docente = d.id
            JOIN 
                materias m ON mi.id_materia = m.id
            WHERE 
            d.id = ".$idProfesor);
            $query->execute();
            $this->imprime($query);
        }

    }
    
?>