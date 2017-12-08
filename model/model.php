<?php
class model{
    protected $conn;
    
    public function __construct(){
      $server         = "localhost";
      $username       = "root";
      $pass           = "";
      $db             = "tubwebdas";
      $this->conn = new mysqli($server, $username, $pass, $db);
    }
}
 ?>
