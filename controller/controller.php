<?php
include_once "C:/xampp/htdocs/webdastub/model/m_main.php";
class controller{
    private $model;
    public function __construct(){
      $this->model = new m_main();
    }
    public function regisPenyedia(){
      $yoo=$this->model->tambahRegis();
      if ($yoo) {
        header('location: /webdastub/view/loginpenyedia.html');
      }else {
        ?><script>alert('Harap semua diisi dengan benar');window.history.go(-1)</script><?php
        //header('location: /webdastub/view/register.html');
      }
      //header ('location: /model/model.php');
    }

    public function index(){
      header('location: view/index/tampilan.html');
    }
    public function loginPesan(){
      $kuy=$this->model->loginPemesan();
      if($kuy){
        header('Location: ../view/index/carikamar.html');
      }else {
          ?><script>alert('Username dan Password tidak sinkron');window.history.go(-1)</script><?php
      }
    }
    public function pemesan(){
      $op=$this->model->pemesan();
      if ($op) {
        header('location: /webdastub/view/loginpemesan.html');
      }else {
        ?><script>alert('Harap semua diisi dengan benar')</script><?php
      }
    }
    public function loginAplikasi(){
      $result=$this->model->login();
      if ($result>0) {
          header("Location: ../view/daftarProperti/dasar.html");
      //session_start();
      }else {
          ?><script>alert('Harap semua diisi dengan benar');window.history.go(-1)</script><?php
      }
      //header ('location: /model/model.php');
    }
    public function cariProperti(){
      $hasil=$this->model->cari();
      if ($hasil) {
        include_once "../view/rinda/index.php";
      }else {
          ?><script>alert('Harap semua diisi dengan benar');window.history.go(-1)</script><?php
      }
    }
    public function pratinjau(){
      $result=$this->model->pratin();
    }
    public function inputDataHomestay(){
        $oii=$this->model->deskripsiHomestay();
        if ($oii>0) {
            header("Location: ../view/daftarProperti/dasar.html");
        //session_start();

        }else {
            ?><script>alert('Harap semua diisi dengan benar');window.history.go(-1)</script><?php
        }
    }
    public function admin(){
      header('Location: ../view/admin/login.html');
    }
}



$controller = new controller();

if(isset($_GET['fungsi'])) {
    $fungsi     = $_GET['fungsi'];
    $controller->$fungsi();
    // $controller->regispenyedia();
}
else{
    $controller->index();
}
