<?php
class model{
    protected $conn;

    public function __construct(){
      $server         = "localhost";
      $username       = "root";
      $pass           = "";
      $db             = "b5_21137411_myhomestay";
      $this->conn = new mysqli($server, $username, $pass, $db);
    }
}
 ?>
