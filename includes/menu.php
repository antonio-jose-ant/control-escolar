<?php
    class opcionesM{
        private $usuariosCrud = array(
            'Agregar' => '../page/user/agregaUser.php',
            'Modificar' => '../page/user/modificaUser.php',
            'Eliminar' => '../page/user/eliminaUser.php',
            'Mostrar' => '../page/user/mostrarUser.php'
        );
        
        private $adminOptions;
        
        public function __construct() {
            $this->adminOptions = array('usuarios' => $this->usuariosCrud);
        }
        
        public function getAdminOptions() {
            return $this->adminOptions;
        }
        public function imprimirOpciones() {
            foreach ($this->adminOptions as $usuario => $acciones) {
                echo "<p>$usuario</p><div>";
                foreach ($acciones as $accion => $url) {
                    echo "<a href='$url'>$accion</a>";
                }
                echo "</div>";
            }
        }
        public function opcionesIM ($tipo){
            switch ($tipo) {
                case 1:
                    $this->imprimirOpciones();
                    break;
                case 2:
                    echo "secretearia";
                    break;
                case 3:
                    echo "orientador";
                    break;
                case 4:
                    echo "profesor";
                    break;
                case 5:
                    echo "alumno";
                    break;
            }
        }
    }
?>