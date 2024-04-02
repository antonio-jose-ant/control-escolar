<?php
    session_start();
    include '../../includes/user.php';
    $user = new User();
    $tpUser=$user->setUser($_SESSION['user']);
    if(isset($_SESSION['user']) && $tpUser['tipoUser']==1){ 

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="contenido">
        <form action="./agrUser.php" method="post">
            <input type="text" name="username" value="<?php echo isset($_SESSION['Susername']) ? $_SESSION['Susername'] : ''; ?>" placeholder="nombre de usuario">
            <input type="text" name="password" value="<?php echo isset($_SESSION['Spassword']) ? $_SESSION['Spassword'] : ''; ?>" placeholder="Contrasena">
            <select name="tipoUser" id="">
                <option value="">--selecciona--</option>
                <option value="1" <?php echo (isset($_SESSION['StipoUser']) && $_SESSION['StipoUser'] == '1') ? 'selected' : '' ?>>Administrador</option>
                <option value="3" <?php echo (isset($_SESSION['StipoUser']) && $_SESSION['StipoUser'] == '3') ? 'selected' : '' ?>>Profesor</option>
                <option value="2" <?php echo (isset($_SESSION['StipoUser']) && $_SESSION['StipoUser'] == '2') ? 'selected' : '' ?>>Secretaria</option>
                <option value="4" <?php echo (isset($_SESSION['StipoUser']) && $_SESSION['StipoUser'] == '4') ? 'selected' : '' ?>>Alumno</option>
            </select>
            <input type="submit" value="Guardar" name="action">
        </form>
    </div>
</body>
</html>
<?php
    }else{
        echo "<script>window.location='../inicio.php';</script>";
    } 
?>