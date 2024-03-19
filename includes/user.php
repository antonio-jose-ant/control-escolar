<?php
include_once 'db.php';

class User extends DB{
    private $nombre;
    private $username;
    private $tipo_usuario;
    private $RFC;

 
    public function userExists($user, $pass){
        $algoritmo = "sha256";
        $passCifre=hash($algoritmo, $pass);
        $query = $this->connect()->prepare('SELECT * FROM usuarios WHERE username = :user AND password = :pass');
        $query->execute(['user' => $user, 'pass' => $passCifre]);

        if($query->rowCount()){
            return true;
        }else{
            return false;
        }
    }
 
    public function setUser($user){
        $query = $this->connect()->prepare('SELECT * FROM usuarios WHERE username = :user');
        $query->execute(['user' => $user]);      
    }

    
    
}

?>