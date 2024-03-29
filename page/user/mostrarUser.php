<?php
    include './crudUser.php';
    $usuarioC=new usuariosCrud;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    
        $usDatosM=$usuarioC->muestraUs();
        $resultado=$usDatosM->fetchAll(PDO::FETCH_ASSOC);
        if($usDatosM->rowCount()>0){
            foreach ($resultado as $row){
                echo $row[''];
            }
        }else{
            echo "sin datos";
        }
    ?>
</body>
</html>