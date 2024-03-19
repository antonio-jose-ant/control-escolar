<?php
    include_once 'user_session.php';
    $userSession = new UserSession();
    $userSession->closeSession();
    echo "<script>window.location.href='../index.php';</script>";
?>