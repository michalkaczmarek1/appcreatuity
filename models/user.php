<?php

class User {

    //properties class
    private $salt = 'sdsads9aud0auda0du';

    private $id_user;
    private $username;
    private $password;

    /**
     * Undocumented function
     *
     * @param string $username
     * @param string $password
     * @return string
     */
    public function register(string $username, string $password, PDO $pdo)
    {

        $this->username = $username;
        $this->password = $this->hashPassword($password);

        $sql = "INSERT INTO users(username, password) VALUES (?,?)";

        $stmt = $pdo->prepare($sql);

        $stmt->execute([$this->username, $this->password]);
        
        // return $sql;
    }

    /**
     * hash password
     *
     * @param string $password
     * @return string
     */
    public function hashPassword(string $password): string
    {

        $hashPassword = md5($password).$this->salt;

        return $hashPassword;
    }

    /**
     * Undocumented function
     *
     * @param string $username
     * @param string $password
     * @param PDO $pdo
     * @return string
     */
    public function login(string $username, string $password, PDO $pdo): string
    {

        $this->username = $username;
        $this->password = $this->hashPassword($password);

        $sql = "SELECT username, password FROM users WHERE username=? and password=?";
        
        $stmt = $pdo->prepare($sql);

        $stmt->execute([$this->username, $this->password]);

        if($stmt->rowCount() > 0){
            return $this->username;
        }
        
        return "";
        // return $sql;
    }


}