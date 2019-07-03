<?php

class Database {
 
    private $dbUser = 'root';
    private $dbPass = '';
    private $dsn = 'mysql:host=localhost;dbname=appcreatuity;charset=utf8';


    /**
      * create connection database
      *
      * @return PDO
      */
      public function dbConnection(): PDO
      {
          try {
              $conn = new PDO($this->dsn, $this->dbUser, $this->dbPass);
              $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
              return $conn;
          } catch (PDOException $e) {

            echo $e->getMessage();
            
          }
         
      }

}