<?php
    include '../../includes/db.php';
    class alumnoDatos {
        private $alumnoDa;
        public function getAlumnoDa() {
            return $this->alumnoDa;
        }
        public function __construct() {
            $this->alumnoDa = array(); 
        }
        public function addMaestro($id,$nombre,$edad,$id_grado,$id_grupo,$id_turno,$CURP) {
            $this->alumnoDa['id'][] = $id;
            $this->alumnoDa['nombre'][] = $nombre;
            $this->alumnoDa['edad'][] = $edad;
            $this->alumnoDa['id_grado'][] = $id_grado;
            $this->alumnoDa['id_grupo'][] = $id_grupo;
            $this->alumnoDa['id_turno'][] = $id_turno;
            $this->alumnoDa['CURP'][] = $CURP;
        }
    }
    
    class alumnoCrud extends DB {
        public function muestraAlu() {
            $alumnoDatos = new alumnoDatos(); // Crea una instancia de la clase userDatos
    
            $query = $this->connect()->prepare("SELECT * FROM alumno");
            $query->execute();
            $resultado = $query->fetchAll(PDO::FETCH_ASSOC);
    
            if ($query->rowCount() > 0) {
                foreach ($resultado as $row) {
                    // Agrega los datos al objeto userDatos
                    $alumnoDatos->addMaestro($row['id'],$row['nombre'],$row['edad'],$row['id_grado'],$row['id_grupo'],$row['id_turno'],$row['CURP']);
                }
            } else {
                echo "sin datos";
            }
            return $alumnoDatos;
        }
    }    
?>