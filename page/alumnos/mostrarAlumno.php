<?php
    include './crudAlumnos.php';
    $insusuariosCrud=new alumnoCrud;
    $imprimeDatos = $insusuariosCrud->muestraAlu()->getAlumnoDa();
    $grupo=array(1=>'A',2=>'B',3=>'C');
    $turno=array('M'=>'Maturino','T'=>'Vespertino');
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../assets/css/style.css">
    <title>Document</title>
</head>
<body>
    <div class="contenido">
        
        <?php
            echo "<table border='1' class='table'> ";
            echo "<thead class='tableAlumno'><tr>";
            echo "<th>Nombre</th>";
            echo "<th>Edad</th>";
            echo "<th>Grado</th>";
            echo "<th>Grupo</th>";
            echo "<th>Turno</th>";
            echo "<th>Curp</th>";
            echo "<th>E</th>";
            echo "<th>M</th>";
            echo "<th></th>";
            echo "</tr></thead><tbody class='tableAlumno'>";

            $num_filas = count($imprimeDatos['id']); // Suponemos que 'id' es una de las columnas
            for ($i = 0; $i < $num_filas; $i++) {
                echo "<tr>";
                foreach ($imprimeDatos as $columna => $valores) {
                    if($columna!=='id'){
                        if ($columna==='id_grupo'){
                            echo "<td>" . $grupo[$valores[$i]] . "</td>";
                        }
                        if($columna==='id_turno'){
                            echo "<td>" . $turno[$valores[$i]] . "</td>";
                        }
                        if($columna!=='id_grupo' && $columna!=='id_turno'){
                            echo "<td>" . $valores[$i] . "</td>";
                        }
                    }
                }
                echo "<td><input type='button' value=''></td>
                        <td><input type='button' value=''></td>
                    </tr>";
            }
            echo "</tbody><tfoot class='tableAlumno'><td>$num_filas</td></tfoot>";
            echo "</table>";
        ?>
    </div>
</body>
</html>