<?php
    if(isset($_SESSION['user'])){ 
    $tpUser=$user->setUser($_SESSION['user']);
?>
<!DOCTYPE html>
<html lang="es"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
    <script src="../assets/js/jquery-3.6.0.min.js"></script>
    <script src="../assets/js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <script>        
        function changueContentH(div,url){ 
            $(div).attr("src",url);
        }
    </script>
    <div id="menu-container" class="menu-contenedor"> 
        <header class="menu">
            <div class="harmburger" id="harmburger">
                <div></div>
                <div></div>
                <div></div>
            </div> 
            <nav class="nav-menu">
                <div>
                    <p>¡Bienvenido! </p>
                </div>
                <div>
                    <ul>
                        <?php
                            $resultado=$menuF->opcionesIM($tpUser['tipoUser']);
                            echo $resultado;
                        ?>
                    </ul>
                </div>
                <div class="menu-salir">
                    <a href="includes/logout.php">
                        <span>Salir</span>
                    </a>
                </div>
                
            </nav>
        </header>
        <div class="cont">
            <iframe src="page/inicio.php" id="divContentNav"></iframe>
        </div>
    </div>
</body>
</html>
    
</body>
</html>
<?php
}else{
    echo "<script>window.location.href='../index.php';</script>";
}
?>
