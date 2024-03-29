<?php
    class opcionesM{
        private $usuariosCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            'Mostrar' => 'page/user/mostrarUser.php'
        );
        private $maestrosCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            'Modificar' => 'page/user/modificaUser.php',
            'Eliminar' => 'page/user/eliminaUser.php',
            'Mostrar' => 'page/user/mostrarUser.php'
        );
        private $profesoresCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            'Modificar' => 'page/user/modificaUser.php',
            'Eliminar' => 'page/user/eliminaUser.php',
            'Mostrar' => 'page/user/mostrarUser.php'
        );
        private $caificacionesCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            'Modificar' => 'page/user/modificaUser.php',
            'Eliminar' => 'page/user/eliminaUser.php',
            'Mostrar' => 'page/user/mostrarUser.php'
        );
        private $adminOptions;
        
        public function __construct() {
            $this->adminOptions = array(
                'usuarios' => $this->usuariosCrud,
                'maestros' => $this->maestrosCrud,
                'profesores' => $this->profesoresCrud,
                'calificaciones' => $this->caificacionesCrud
            );
        }
        
        public function getAdminOptions() {
            return $this->adminOptions;
        }
        public function imprimirOpciones() {
            foreach ($this->adminOptions as $usuario => $acciones) {
                echo "<li><p>$usuario</p><div>";
                foreach ($acciones as $accion => $url) {
                    echo "<a onclick=\"changueContentH('#divContentNav','$url')\">$accion</a>";
                }
                echo "</div></li>";
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