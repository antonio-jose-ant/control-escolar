<?php
    include './crudMaestros.php';
    $insusuariosCrud=new maestrosCrud;
    $imprimeDatos = $insusuariosCrud->muestraMa()->getMaestroDa();
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
            echo "<thead class='tableMaestro'><tr>";
            foreach ($imprimeDatos as $columna => $valores) {
                if(strcasecmp($columna,'id')!= 0){
                   echo "<th>" . $columna . "</th>";
                }
            }
            echo "<th>E</th>";
            echo "<th>M</th>";
            echo "<th></th>";
            echo "</tr></thead><tbody class='tableMaestro'>";

            $num_filas = count($imprimeDatos['id']); // Suponemos que 'id' es una de las columnas
            for ($i = 0; $i < $num_filas; $i++) {
                echo "<tr>";
                foreach ($imprimeDatos as $columna => $valores) {
                    if(strcasecmp($columna,'id')!= 0){
                        echo "<td>" . $valores[$i] . "</td>";
                    }
                }
                echo "<td><input type='button' value=''></td>
                        <td><input type='button' value=''></td>
                    </tr>";
            }
            echo "</tbody><tfoot class='tableMaestro'><td>$num_filas</td></tfoot>";
            echo "</table>";
        ?>
    </div>
</body>
</html>