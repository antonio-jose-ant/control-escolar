<?php
    if(isset($_SESSION['user'])){ 
?>
<!DOCTYPE html>
<html lang="es"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/style.css">
</head>
<body>
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
                <div class="menu-salir">
                    <a href="includes/logout.php">
                        <span>inicio</span>
                    </a>
                </div>
                <div class="menu-salir">
                    <a href="includes/logout.php">
                        <span>Salir</span>
                    </a>
                </div>
            </nav>
        </header>
        <div class="cont">
            <iframe src="page/inicio.php"></iframe>
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
