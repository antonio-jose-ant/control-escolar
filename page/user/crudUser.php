<?php
    include '../../includes/db.php';
    class usuariosCrud extends DB{
        public function muestraUs(){
            $query = $this->connect()->prepare("SELECT 
            * 
            from usuarios ");
            $query->execute();
            return $query;
        }
    }
?>