<?php
include "model.php";
include "uuidtes.php";
session_start();
class m_main extends model{
  private $gen;
  private $rekom;
  private $main;
    public function __construct(){
      parent::__construct();
      $this->gen = new unik();

    }

    public function deskripsiHomestay(){
      if (isset($_POST['lanjut1'])) {
        $_SESSION['tipe_properti']=$_POST['tipe_properti'];
        $_SESSION['jumlah_kamar']=$_POST['jmlKmr'];
        $_SESSION['jumlah_kamar_mandi']=$_POST['kmrMandi'];
        $_SESSION['ranjang']=$_POST['ranjang'];
        // $tipe_properti=$_POST['tipe_properti'];
        // $jumlah_kamar=$_POST['jmlKmr'];
        // $jumlah_kamar_mandi=$_POST['kmrMandi'];
        // $ranjang=$_POST['ranjang'];
        header('location: ../view/daftarProperti/lokasi.html');
      }if(isset($_POST['lanjut2'])){
        $_SESSION['alamat']=$_POST['alamat'];
        $_SESSION['kota']=$_POST['kota'];
        // $alamat=$_POST['alamat'];
        // $kota=$_POST['kota'];
        header('location: ../view/daftarProperti/deskripsi.html');
      }if(isset($_POST['lanjut3'])){
        $_SESSION['nama_properti']=$_POST['nama_properti'];
        $_SESSION['harga_properti']=$_POST['harga'];
        $_SESSION['deskripsi']=$_POST['deskPro'];
        $_SESSION['hal_sekitar']=$_POST['hal_sekitar'];
        $_SESSION['checkin']=$_POST['checkin'];
        // $nama_properti=$_POST['nama_properti'];
        // $harga_properti=$_POST['harga'];
        // $deskripsi=$_POST['deskPro'];
        // $hal_sekitar=$_POST['hal_sekitar'];
        header('location: ../view/daftarProperti/fasilitas.html');
      }if(isset($_POST['lanjut4'])){
        for ($i=0; $i<count($_POST['rekomendasi']); $i++){
          $rek=$_POST['rekomendasi'][$i].",";
          $this->rekom.=$rek;
        }
        echo $this->rekom;
    //  $_SESSION['rekomendasi']=explode(',',$this->rekom);

        $akses=$_POST['aksesibilitas'];

        $pkprofil=$this->gen->generate_uuid();
        $pkdeskripsi=$this->gen->generate_uuid();
        $pkhomestay=$this->gen->generate_uuid();

        $tipe_properti=$_SESSION['tipe_properti'];
        $jumlah_kamar=$_SESSION['jumlah_kamar'];
        $jumlah_kamar_mandi=$_SESSION['jumlah_kamar_mandi'];
        $ranjang=$_SESSION['ranjang'];

        $alamat=$_SESSION['alamat'];
        $kota=$_SESSION['kota'];

        $id=$_SESSION['id_penyedia'];

        $nama_properti=$_SESSION['nama_properti'];
        $harga_properti=$_SESSION['harga_properti'];
        $deskripsi=$_SESSION['deskripsi'];
        $hal_sekitar=$_SESSION['hal_sekitar'];
        $checkin=$_SESSION['checkin'];
        //echo $_SESSION['nama_properti'];
        //echo $tipe_properti;
        $gambar = $_FILES['foto']['name'];
	      $sgambar = $_FILES['foto']['size'];
	      $tgambar = $_FILES['foto']['tmp_name'];
	      //$you=$conn;

        $homestay=$this->conn->query("INSERT INTO homestay (id_homestay, jenisHomestay, id_penyedia)
         VALUES('$pkhomestay', '$tipe_properti','$id')");
        $profil=$this->conn->query("INSERT INTO profil(id_profil, ranjang, kamar_mandi, alamat, kota, id_homestay)
         VALUES ('$pkprofil','$ranjang','$jumlah_kamar_mandi','$alamat','$kota','$pkhomestay')");
        $deskripsitab=$this->conn->query("INSERT INTO deskripsi(id_deskripsi, nama_properti, harga, deskripsi,
           hal_sekitar, rekomendasi, aksesibilitas, id_profil,tanggalcheckin)
        VALUES ('$pkdeskripsi','$nama_properti','$harga_properti','$deskripsi','$hal_sekitar','$this->rekom','$akses','$pkprofil','$checkin')");

        $this->main = new m_main();

         for($i=0;$i<count($gambar);$i++){
            $pkgambar=$this->gen->generate_uuid();
  	         $this->main->upload($gambar[$i],$sgambar[$i],$tgambar[$i],$pkgambar,$pkdeskripsi);
           }
         }
       }

       public function pemesan(){
         $noidentitas = $_POST['noId'];
         $nama = $_POST['nama'];
         $alamat = $_POST['alamat'];
         $umur = $_POST['umur'];
         $password = $_POST['pwd'];
         $oi=$this->gen->generate_uuid();

         $bah=$this->conn->query("INSERT INTO pemesan(id_pemesan,noidentitas,nama,alamat,umur,password)
             VALUES('$oi', '$noidentitas', '$nama','$alamat','$umur','$password')");
        return $bah;
      }

      public function pratin(){
        $pratinjau=$_GET['namaProperti'];
        $query=$this->conn->query("SELECT rekomendasi, jenisHomestay,nama_properti,aksesibilitas,deskripsi,
                                    hal_sekitar,tanggalCheckin,ranjang, alamat
                                    FROM deskripsi JOIN profil USING(id_profil)
				                            JOIN homestay USING(id_homestay)
                                    WHERE id_deskripsi='$pratinjau'");
      }

      public function cari(){
        $cari = $_POST['search'];
        return $this->conn->query("SELECT id_deskripsi,nama_properti, deskripsi, harga
                                  FROM deskripsi JOIN profil USING(id_profil)
                                  where kota like '%$cari%'
                                  group by nama_properti");
              }
      public function loginPemesan(){
        $nama=$_POST['nama'];
        $pass=$_POST['password'];
        if (($nama=="" && $pass=="") || $nama=="" || $pass=="" ) {
            header('Location: ../view/loginpemesan.html');
        } else {
          $pemesan=$this->conn->query("SELECT nama, password,id_pemesan from pemesan where nama='$nama' and password='$pass'");
          $result1=mysqli_num_rows($pemesan);
          while ($row = $pemesan->fetch_assoc()) {
            $_SESSION['id_pemesan']=$row['id_pemesan'];
          }
        }
        return $result1;
      }

    public function upload($nfoto,$sfoto,$tfoto,$pkgambar,$pkdeskripsi){
      //$url = $error; // url di mana akan di kembalikan jika gagal upload

      if(isset($nfoto)){

        $sfoto = $sfoto;
        $tfoto = $tfoto;
        $file_upload=1;
        $dir = "../view/daftarProperti/gambar/".$nfoto;
      //  $loc=$dir.$nfoto;

        if($file_upload==1){
            move_uploaded_file($tfoto, $dir);
            $simpan=$this->conn->query("INSERT INTO gambar(id_gambar, gambar, id_deskripsi)
             VALUES ('$pkgambar','$nfoto','$pkdeskripsi')");
            // mysqli_query($conn1,"INSERT INTO `gambar`(`id_gambar`, `gambar`, `id_deskripsi`)
            //  VALUES ('$pkgambar','$nfoto','$pkdeskripsi')");
          }else{
            echo '<script>alert("Gagal upload");</script>';
          }
        }else{
          echo '<script>alert("File tidak ada");</script>';
        }
      }
    //nfoto = nama foto, sfoto=size foto,tfoto = temporary foto, dir = folder penyimpanan gambar

    public function tambahRegis(){
      if (!empty($_POST['nama'])) {
        $nama = $_POST['nama'];
        $alamat= $_POST['alamat'];
        $noId = $_POST['noId'];
        $password = $_POST['pwd'];
        $pk=$this->gen->generate_uuid();

        return $op=$this->conn->query("INSERT INTO penyedia(id_penyedia,nama,alamat,no_identitas,password)
            VALUES('$pk', '$nama', '$alamat', '$noId','$password')");
      }

    }

    public function login(){
      $nama=$_POST['nama'];
      $pass=$_POST['password'];
      $penyedia=$this->conn->query("SELECT nama, password,id_penyedia from penyedia where nama='$nama' and password='$pass'");
      $result=mysqli_num_rows($penyedia);
      session_start();
      while ($row = $penyedia->fetch_assoc()) {
        $_SESSION['id_penyedia']=$row['id_penyedia'];
      }

      return $result;

    }

}
 ?>
