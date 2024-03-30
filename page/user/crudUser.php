<?php
    include '../../includes/db.php';
    class userDatos {
        private $userDa;
    
        public function getUserDa() {
            return $this->userDa;
        }
        public function __construct() {
            $this->userDa = array(); 
        }
        public function addUser($id,$username ,$tipoUser) {
            $this->userDa['id'][] = $id;
            $this->userDa['username'][] = $username;
            $this->userDa['tipoUser'][] = $tipoUser;
        }
    }
    
    class usuariosCrud extends DB {
        public function muestraUs() {
            $userDatos = new userDatos(); // Crea una instancia de la clase userDatos
    
            $query = $this->connect()->prepare("SELECT * FROM usuarios");
            $query->execute();
            $resultado = $query->fetchAll(PDO::FETCH_ASSOC);
    
            if ($query->rowCount() > 0) {
                foreach ($resultado as $row) {
                    // Agrega los datos al objeto userDatos
                    $userDatos->addUser($row['id'],$row['username'],$row['tipoUser']);
                }
            } else {
                echo "sin datos";
            }
            return $userDatos;
        }
    }    
?>