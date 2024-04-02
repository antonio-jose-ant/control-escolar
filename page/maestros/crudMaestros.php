<?php
    include '../../includes/db.php';
    class maestrosDatos {
        private $maesroDa;
    
        public function getMaestroDa() {
            return $this->maesroDa;
        }
        public function __construct() {
            $this->maesroDa = array(); 
        }
        public function addMaestro($id,$nombre ,$CURP,$RFC) {
            $this->maesroDa['id'][] = $id;
            $this->maesroDa['nombre'][] = $nombre;
            $this->maesroDa['CURP'][] = $CURP;
            $this->maesroDa['RFC'][] = $RFC;
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