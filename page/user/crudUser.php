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
        private function ultimoID(){
            $query = $this->connect()->prepare("SELECT id FROM usuarios ORDER BY id DESC LIMIT 1;");
            $query->execute();
            $resultado = $query->fetchAll(PDO::FETCH_ASSOC);
            if ($query->rowCount() > 0) {
                $idFinal = $resultado[0]['id']; // Accede al primer resultado de $resultado
            } else {
                echo "sin datos";
            }
            return $idFinal+1;
        }
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
        public function guardaUse($username, $password, $tipoUser){
            $ultimoID = $this->ultimoID(); 
            try {
                $algoritmo = "sha256";
                $pdo = $this->connect();
                $hashed_password=hash($algoritmo, $password);
                $query = "INSERT INTO usuarios (id,username, password, tipoUser) VALUES ($ultimoID,:username, :password, :tipoUser)";
                
                $statement = $pdo->prepare($query);
                $statement->bindParam(':username', $username, PDO::PARAM_STR);
                $statement->bindParam(':password', $hashed_password, PDO::PARAM_STR);
                $statement->bindParam(':tipoUser', $tipoUser, PDO::PARAM_STR);
                
                $statement->execute();
                echo "Usuario agregado correctamente.";
            } catch(PDOException $e) {
                echo "Error al agregar usuario: " . $e->getMessage();
            }
        }
    }    

?>