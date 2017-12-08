<?php
include "model.php";
include "uuidtes.php"
class m_main extends model{
    public __construct(){
      parent::__construct();
      $gen = new unik();
    }

    public function tambahRegis(){
      $nama = $_POST['nama'];
      $alamat= $_POST['alamat'];
      $noId = $_POST['noId'];
      $password = $_POST['pwd'];
      $pk=$gen->generate_uuid();
      $this->conn->query("INSERT INTO penyedia('$pk', '$nama', '$alamat', '$noId','$password')");
    }
}
 ?>
