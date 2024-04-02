<?php
    include './crudUser.php';
    $crudAgr=new usuariosCrud;
    $accion=$_POST['action'];
    realizaUser($accion);
    function realizaUser($realiza){
        $crudAgr=new usuariosCrud;
        session_start();
        if (!empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['tipoUser'])) {   
            $crudAgr->guardaUse($_POST['username'],$_POST['password'],$_POST['tipoUser']);
        } else {
            $_SESSION['Susername']=$_POST['username'];
            $_SESSION['Spassword']=$_POST['password'];
            $_SESSION['StipoUser']=$_POST['tipoUser'];
            echo "<script>window.location.href = 'agregaUser.php';</script>";
        }
    }
?>