<?php
    include './C_consultas.php';
     class calificaciones {
        function finalesAlu ($idA){

        }    
        function parcialAlu ($idA,$parcia){
            $cont=1;
            $consultaas=new consultaas();
            $alummo=$consultaas->calAluBloque($idA,$parcia);
            $calTotal=1;
            echo "<table>";
            foreach ($alummo as $info) {
                $title = $info['title'];
                $contenido = $info['contenido'];
                echo "<tr>";
                    echo "<th>Alumno</th>
                        <th>Materia</th>
                        <th>Calificacion</th>
                        <th>Grado</th>
                        <th>Grupo</th>
                        <th>Docente</th>";
                echo "</tr>";
                // Acceso a $arrayInfo
                echo "<tr>";
                foreach ($contenido as $elemento) {
                    echo $elemento[3];
                    /*if(count($title)<($cont)){
                        $cont=1;
                        echo "</tr>";
                        echo "<tr>";
                        echo "<td>". $elemento ."</td>";
                    }
                    else{
                        echo "<td>". $elemento ."</td>";
                    }*/
                    $cont++;                    
                }
            }
            echo "</table>";
        }    
        function materia ($idA){

        }
    }
?>