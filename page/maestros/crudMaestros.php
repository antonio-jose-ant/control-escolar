<?php
    include '../../includes/db.php';
    class maestrosDatos {
        private $userDa;
    
        public function getMaestroDa() {
            return $this->userDa;
        }
        public function __construct() {
            $this->userDa = array(); 
        }
        public function addMaestro($id,$nombre ,$CURP,$RFC) {
            $this->userDa['id'][] = $id;
            $this->userDa['nombre'][] = $nombre;
            $this->userDa['CURP'][] = $CURP;
            $this->userDa['RFC'][] = $RFC;
        }
    }
    
    class maestrosCrud extends DB {
        public function muestraMa() {
            $userDatos = new maestrosDatos(); // Crea una instancia de la clase userDatos
    
            $query = $this->connect()->prepare("SELECT * FROM docente");
            $query->execute();
            $resultado = $query->fetchAll(PDO::FETCH_ASSOC);
    
            if ($query->rowCount() > 0) {
                foreach ($resultado as $row) {
                    // Agrega los datos al objeto userDatos
                    $userDatos->addMaestro($row['id'],$row['nombre'],$row['CURP'],$row['RFC']);
                }
            } else {
                echo "sin datos";
            }
            return $userDatos;
        }
    }    
?>