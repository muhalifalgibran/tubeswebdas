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
      $op=$this->model->pemesanan();
      if ($op) {
        header('location: /webdastub/view/loginpemesan.html');
      }else {
        ?><script>alert('Harap semua diisi dengan benar');window.history.go(-1)</script><?php
      }
    }
    public function feedback(){
      $fd=$this->model->feedback1();
        if ($fd){
          echo "berhasil";
        }
        else{
          echo "gagal";
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
      $gambar=$this->model->tampilGambar();
      include_once '../view/pratinjau/pratinjau.php';
    }
    public function update(){
      $up = $this->model->updatepemesanan();
      if($up){
      ?><script>alert('Berhasil Upload');window.history.go(-1)</script><?php
      }
    }

    public function lihatPesanan(){
      $sp = $this->model->selectpesanan();
      include_once '../view/admin/tables.php';
    }

    public function lihatDatPenyedia(){
      $ldp=$this->model->ldp();
        include_once '../view/admin/datapenyedia.php';
    }

    public function lihatDatPemesan(){
      $dp=$this->model->dp();
        include_once '../view/admin/datapemesan.php';
    }

    public function bayar(){
      $mod=$this->model->bayarStruk();
      include_once '../view/rinda/strukpembayaran.php';
    }
    function konfirmBayar(){
      $nyo=$this->model->pembayaran();
      include_once '../view/rinda/konfirmPembayaran.php';
    }
    public function inputDataHomestay(){
        $oii=$this->model->deskripsiHomestay();
        if ($oii>0) {
            header("Location: ../view/daftarProperti/dasar.html");
        //session_start();
        }else{
            ?><script>alert('Harap semua diisi dengan benar');window.history.go(-1)</script><?php
        }
    }
    public function loginAdmin(){
      if ($_POST['name']=="admin"&&$_POST['pwd']=="admin") {
        $this->model->tabelPendaftar();
        header('Location: ../view/admin/index.html');
      } else {
        ?><script>alert('Salah username dan password');window.history.go(-1)</script><?php
      }
    }

    public function lunas(){
      $this->model->bayar();
        header('Location: ../view/rinda/terimakasih.html');
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
