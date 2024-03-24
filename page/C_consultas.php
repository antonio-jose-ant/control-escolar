<?php
include_once '../includes/db.php';
    class consultaas extends DB{ 
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
        

        public function aluHorarioCurso($turno){
            $query = $this->connect()->prepare("SELECT 
            id, nombre, id_grado,id_grado 
            from alumno 
            WHERE  id_turno='".$turno."'");
            $query->execute();
            $this->imprime($query);

        }


        public function pGenrlGupo($grado,$grupo,$turno){
            $query = $this->connect()->prepare("SELECT (
                (SUM(b1.calificacion) / COUNT(*)) + 
                (SUM(b2.calificacion) / COUNT(*)) + 
                (SUM(b3.calificacion) / COUNT(*)) + 
                (SUM(b4.calificacion) / COUNT(*)) + 
                (SUM(b5.calificacion) / COUNT(*))
            ) / 5 AS suma_total
            FROM 
                ca_bloque1 b1 
            JOIN 
                ca_bloque2 b2 ON b1.id_alu = b2.id_alu 
            JOIN 
                ca_bloque3 b3 ON b1.id_alu = b3.id_alu 
            JOIN 
                ca_bloque4 b4 ON b1.id_alu = b4.id_alu 
            JOIN 
                ca_bloque5 b5 ON b1.id_alu = b5.id_alu
            JOIN
                alumno a ON b1.id_alu = a.id
            WHERE
                a.id_grado = $grado 
            AND 
                a.id_grupo = $grupo 
            AND 
                a.id_turno='$turno'");
            $query->execute();
            $this->imprime($query);
        }
        public function promedioPorfesor($idProfesor){
            $query =$this->connect()->prepare("SELECT 
            AVG(calificacion) AS calificacion_general
            FROM ca_bloque1
            WHERE id_materia IN (
                SELECT id_materia
                FROM materias_impartidas
                WHERE id_docente = ".$idProfesor."
            );");
            $query->execute();
            $this->imprime($query);
        }

    }
    
?>