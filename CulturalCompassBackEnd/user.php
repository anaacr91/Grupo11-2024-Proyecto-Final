<?php
include_once 'db.php';

class User extends DB{

    function user_register($username, $password){
        $current_date = date('Y-m-d H:i:s');
        $query = $this->connect()->prepare('INSERT INTO user (username, password, created_at) VALUES (?, ?, ?)');
        $query->execute([$username, $password, $current_date]);
        echo 'hola';
        return $query;
    }

    function check_user($username, $password){
        $query = $this->connect()->prepare('SELECT * FROM user WHERE username = ? AND password = ?');
        $query->execute([$username, $password]);
        return $query;
    }

    
}
?>