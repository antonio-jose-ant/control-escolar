<?php
    include './crudUser.php';
    $insusuariosCrud=new usuariosCrud;
    $imprimeDatos = $insusuariosCrud->muestraUs()->getUserDa();


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
            echo "<table border='1'>";
            echo "<tr>";
            foreach ($imprimeDatos as $columna => $valores) {
                echo "<th>" . $columna . "</th>";
            }
            echo "<th>Eliminar</th>";
            echo "<th>Mpdificar</th>";
            echo "</tr>";

            $num_filas = count($imprimeDatos['id']); // Suponemos que 'id' es una de las columnas
            for ($i = 0; $i < $num_filas; $i++) {
                echo "<tr>";
                foreach ($imprimeDatos as $columna => $valores) {
                    echo "<td>" . $valores[$i] . "</td>";
                }
                echo "<td><input type='button' value=''></td>
                    <td><input type='button' value=''></td>
                    </tr>";
            }

            echo "</table>";
        ?>
    </div>
</body>
</html>