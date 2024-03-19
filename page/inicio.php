<?php
    session_start();
    include './F_calificacion.php';
    if(isset($_SESSION['user'])){
    $calificaciones=new calificaciones();
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
        //$consultaas->calCompletoTurno('ca_bloque3','M');
        //$consultaas->aluHorarioCurso('V');
        //$consultaas->calAluBloque(50,'ca_bloque1');
        //$consultaas->claseImpartida(15);
        $calificaciones->parcialAlu(50,'ca_bloque1');
    ?>  
</body>
</html>
<?php 
    }else{
        //echo "login"; 
        echo "<script>window.location.href='../index.php';</script>";
    }
?>