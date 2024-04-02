<?php
    class opcionesM{
        private $adminOptions;
        private $profesorOptions;
        private $alumnoOptions;
        private $secretariaOptions;

        private $usuariosCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            'Eliminar' => 'page/user/agregaUser.php',
            'Mostrar' => 'page/user/mostrarUser.php'
        );
        private $maestrosCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            //'Modificar' => 'page/user/modificaUser.php',
            //'Eliminar' => 'page/user/eliminaUser.php',
            'Mostrar' => 'page/maestros/mostrarMaestro.php'
        );
        private $alumnosCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            'Modificar' => 'page/user/modificaUser.php',
            'Eliminar' => 'page/user/eliminaUser.php',
            'Mostrar' => 'page/alumnos/mostrarAlumno.php'
        );
        private $caificacionesCrud = array(
            'Agregar' => 'page/user/agregaUser.php',
            'Modificar' => 'page/user/modificaUser.php',
            'Eliminar' => 'page/user/eliminaUser.php',
            'Mostrar' => 'page/user/mostrarUser.php'
        );
        
        public function __construct() {
            $this->adminOptions = array(
                'Usuarios' => $this->usuariosCrud,
                'Maestros' => $this->maestrosCrud,
                'Alumnos' => $this->alumnosCrud,
                'Calificaciones' => $this->caificacionesCrud
            );
            $this->profesorOptions = array(
                'Maestros' => $this->maestrosCrud,
                'Alumnos' => $this->alumnosCrud,
                'Calificaciones' => $this->caificacionesCrud
            );
            $this->alumnoOptions = array(
                'Alumnos' => $this->alumnosCrud,
                'Calificaciones' => $this->caificacionesCrud
            );
            $this->secretariaOptions = array(
                'Maestros' => $this->maestrosCrud,
                'Alumnos' => $this->alumnosCrud,
                'Calificaciones' => $this->caificacionesCrud
            );
            
        }
        
        public function getAdminOptions() {
            return $this->adminOptions;
        }
        public function getProfesor() {
            return $this->adminOptions;
        }
        public function getAlumno() {
            return $this->adminOptions;
        }
        public function getSecretaria() {
            return $this->adminOptions;
        }
        public function imprimirOpciones($usuaioOPT) {
            foreach ($usuaioOPT as $usuario => $acciones) {
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
                    $this->imprimirOpciones($this->adminOptions);
                    break;
                case 2:
                    $this->imprimirOpciones($this->profesorOptions);
                    break;
                case 3:
                    $this->imprimirOpciones($this->secretariaOptions);
                    break;
                case 4:
                    $this->imprimirOpciones($this->alumnoOptions);
                    break;
                
            }
        }
    }
?>