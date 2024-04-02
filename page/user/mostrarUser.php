<?php
    include './crudUser.php';
    $insusuariosCrud=new usuariosCrud;
    $imprimeDatos = $insusuariosCrud->muestraUs()->getUserDa();
    $usuariosTipoM=array(1=>'Administrador',2=>'Profesor',3=>'Secretaria',4=>'Alumno');
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
            echo "<table border='1' class='table'>";
            echo "<thead class='tableUsuario'><tr>";
            foreach ($imprimeDatos as $columna => $valores) {
                if($columna!=='id'){
                    echo "<th>" . $columna . "</th>";
                }
            }
            echo "<th>E</th>";
            echo "<th>M</th>";
            echo "<th></th>";
            echo "</tr></thead><tbody class='tableUsuario'>";

            $num_filas = count($imprimeDatos['id']); // Suponemos que 'id' es una de las columnas
            for ($i = 0; $i < $num_filas; $i++) {
                echo "<tr>";
                foreach ($imprimeDatos as $columna => $valores) {
                    if($columna!=='id'){
                        if($columna==='tipoUser'){
                            echo "<td>" . $usuariosTipoM[$valores[$i]] . "</td>";
                        }else{
                            echo "<td>" . $valores[$i] . "</td>";
                        }
                    }
                }
                echo "<td><input type='button' value=''></td>
                    <td><input type='button' value=''></td>
                    </tr>";
            }

            echo "</tbody><tfoot class='tableUsuario'><td>$num_filas</td></tfoot>";
            echo "</table>";
        ?>
    </div>
</body>
</html>