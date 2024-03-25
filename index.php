<?php
include_once 'includes/user.php';
include_once 'includes/user_session.php';
$userSession = new UserSession();
$user = new User();
if(isset($_SESSION['user'])){ 
    //echo "hay sesion";
    $user->setUser($userSession->getCurrentUser());
    include_once 'vistas/home.php';
}else if(isset($_POST['username']) && isset($_POST['password'])){
    $userForm = $_POST['username'];
    $passForm = $_POST['password'];
    if($user->userExists($userForm, $passForm)){
        //echo "Existe el usuario";
        $userSession->setCurrentUser($userForm);
        include_once 'vistas/home.php';

    }else{
        //echo "No existe el usuario";
        $errorLogin = " Nombre de usuario y/o password incorrecto ";
        include_once 'vistas/login.php';
    }
}else{   
    //echo "este es  un comentario de prueba "; 
    include_once 'vistas/login.php';
}
?>