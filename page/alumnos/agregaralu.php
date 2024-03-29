<?php
    include '../../includes/db.php';
    include '../imprimeDa.php';
    $imprecion=new imprimeD;
    class usuariosCrud extends DB{
        public function muestra(){
            $query = $this->connect()->prepare("SELECT 
            username, tipoUser 
            from usuarios ");
            $query->execute();
        }
    }
?>


