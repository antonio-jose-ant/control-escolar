<?php
    session_start();
    include './C_consultas.php';
    if(isset($_SESSION['user'])){
    $consult=new consultaas();
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
        //$consult->aluHorarioCurso('M');
        //$consult->promedioPorfesor(1);
        $consult->pGenrlGupo(1,1,'M');
        //$consultaas->calAluBloque(50,'ca_bloque1');
        //$consult->claseImpartida(12);
        //$calificaciones->parcialAlu(50,'ca_bloque1');
    ?>  
</body>
</html>
<?php 
    }else{
        //echo "login"; 
        echo "<script>window.location.href='../index.php';</script>";
    }
?>