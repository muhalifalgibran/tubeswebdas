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

       public function pemesanan(){
         if (!empty($_POST['nama'])) {
           $noidentitas = $_POST['noId'];
           $nama = $_POST['nama'];
           $alamat = $_POST['alamat'];
           $umur = $_POST['umur'];
           $password = $_POST['pwd'];
           $oi=$this->gen->generate_uuid();

           if (strlen($_POST["pwd"]) <= 8) {
              $passwordErr = "harus 8 karakter";
            }
            else{
            return $this->conn->query("INSERT INTO pemesan(id_pemesan,noidentitas,nama,alamat,umur,password)
                   VALUES('$oi', '$noidentitas', '$nama','$alamat','$umur','$password')");
                      header ('location:../view/loginPemesan.html');
            }
         }
       }

      public function pratin(){
        $pratinjau=$_GET['namaProperti'];
        $query=$this->conn->query("SELECT id_homestay,id_deskripsi,rekomendasi, jenisHomestay,nama_properti,aksesibilitas,deskripsi,
                                    hal_sekitar,tanggalCheckin,ranjang, alamat
                                    FROM deskripsi JOIN profil USING(id_profil)
				                            JOIN homestay USING(id_homestay)
                                    WHERE id_deskripsi='$pratinjau'");
                                    return $query;
            while ($row = $query->fetch_assoc()){
              $_SESSION['id_homestay']=$row['id_homestay'];
            }

      }

       public function jumlahLunas(){
         return $this->conn->query("SELECT COUNT(status) lunas FROM TRANSAKSI WHERE status = 'diterima'");
       }

       public function jumlahPending(){
         return $this->conn->query("SELECT COUNT(status) pending FROM TRANSAKSI WHERE status = 'PENDING'");
       }

       public function jumlahDitolak(){

         return $this->conn->query("SELECT COUNT(status) tolak FROM TRANSAKSI WHERE status = 'ditolak'");
       }

       public function jumlahPendapatan(){
         return $this->conn->query("SELECT SUM(e.harga) total
                                      FROM deskripsi e
                                      JOIN profil USING(id_profil)
                                      JOIN homestay USING(id_homestay)
                                      JOIN transaksi USING(id_homestay)
                                      WHERE status='diterima'");
              }

        public function jumlahKamarTersedia(){
          return $this->conn->query("SELECT COUNT(id_homestay) kamar FROM homestay JOIN transaksi USING(id_homestay) WHERE status >any (SELECT status FROM transaksi WHERE status <> 'diterima')");
                          }
      // public function tabelPendaftar(){
      //
      // }


      public function ldp(){
        return $this->conn->query("SELECT * FROM penyedia");
      }

      public function dp(){
        return $this->conn->query("SELECT * FROM pemesan");
      }

      public function bayar(){
        $idtransaksi=$_GET['id'];
        $_SESSION['kdTr']=$idtransaksi;
        $gambar = $_FILES['struk']['name'];
        $tgambar = $_FILES['struk']['tmp_name'];
        $sfoto = $gambar;
        $tfoto = $tgambar;
        $file_upload=1;
        $dir = "../view/rinda/struk/z.".$gambar;
      //  $loc=$dir.$nfoto;
        if($file_upload==1){
            move_uploaded_file($tgambar, $dir);
            $simpan=$this->conn->query("UPDATE transaksi SET gambar='$gambar' WHERE id_transaksi='$idtransaksi'");
            // mysqli_query($conn1,"INSERT INTO gambar(id_gambar, gambar, id_deskripsi)
            //  VALUES ('$pkgambar','$nfoto','$pkdeskripsi')");
          }else{
            echo '<script>alert("Gagal upload");</script>';
          }
      }
      public function bayarStruk(){
        $id=$_GET['id'];
        //$_SESSION['namaPemesan'];
        $_SESSION['kodeBayar']=$this->gen->generate_uuid();
        $yu=$this->conn->query("SELECT id_homestay,id_deskripsi,nama_properti, harga FROM deskripsi
                                JOIN profil USING(id_profil)
                                JOIN homestay USING(id_homestay)
                                where id_deskripsi='$id'");
        return $yu;
      }
      public function pembayaran(){
          $pk=$_GET['id'];
          $harga=$_GET['hrg'];
          $idhomestay=$_SESSION['id_homestay'];
          $idpemesan=$_SESSION['id_pemesan'];
          $this->conn->query("INSERT INTO transaksi(id_transaksi, harga,status, id_pemesan, id_homestay) VALUES ('$pk','$harga','PENDING','$idpemesan','$idhomestay')");

          return $this->conn->query("SELECT id_transaksi FROM transaksi where id_transaksi='$pk'");

      }

      public function tampilGambar(){
        $pratinjau=$_GET['namaProperti'];
        $sql=$this->conn->query("SELECT gambar from gambar
                                WHERE id_deskripsi='$pratinjau'");

        return $sql;
      }

      public function cari(){
        $cari = $_POST['search'];
        return $this->conn->query("SELECT id_deskripsi,nama_properti, deskripsi, harga
                                  FROM deskripsi JOIN profil USING(id_profil)
                                  where kota like '%$cari%' OR nama_properti like '%$cari%'
                                  group by nama_properti");
              }
      public function loginPemesan(){
        $nama=$_POST['nama'];
        $pass=$_POST['password'];
        if (($nama=="" && $pass=="") || $nama=="" || $pass=="" ) {
            header('Location: ../view/loginpemesan.html');
        }
        else {
          $pemesan=$this->conn->query("SELECT nama, password,id_pemesan from pemesan where nama='$nama' and password='$pass'");
            header('Location: ../view/loginpemesan.html');
        }
          $result1=mysqli_num_rows($pemesan);
          $_SESSION['namaPemesan']=$nama;
          while ($row = $pemesan->fetch_assoc()){
            $_SESSION['id_pemesan']=$row['id_pemesan'];

        }
        return $result1;

      }

      public function hapus(){
        $id_penyedia=$_GET['id'];
          $yo=$this->conn->query("SELECT id_homestay,id_profil,id_deskripsi,id_gambar
                              FROM homestay JOIN profil USING(id_homestay)
                              JOIN deskripsi USING(id_profil)
                              JOIN gambar USING(id_deskripsi)
                              WHERE id_penyedia = '$id_penyedia'");
          while($row=$yo->fetch_assoc()){
            $idhomy = $row['id_homestay'];
            $idprof = $row['id_profil'];
            $iddesk = $row['id_deskripsi'];
            $idgamb= $row['id_gambar'];
          }

          $this->conn->query("DELETE FROM homestay where id_homestay = '$idhomy'");
          $this->conn->query("DELETE FROM profil where id_homestay = '$idprof'");
          $this->conn->query("DELETE FROM deskripsi where id_homestay = '$iddesk'");
          $this->conn->query("DELETE FROM gambar where id_homestay = '$idgamb'");
      }

      public function daftarTersedia(){
        $idpenyedia= $_SESSION['id_penyedia'];
        return $this->conn->query("SELECT id_penyedia,id_homestay, nama_properti, e.harga hrg , kota,  tanggalcheckin
                            FROM deskripsi e JOIN profil USING(id_profil)
                            JOIN homestay USING(id_homestay)
                            WHERE id_penyedia = '$idpenyedia'");
      }

      public function selectpesanan(){
          return $this->conn->query("SELECT * FROM transaksi");
      }

      public function updatepemesanan(){
        $id=$_GET['id'];
        $pilih=$_GET['pilih'];

        if($pilih == "terima"){
          return $this->conn->query("UPDATE transaksi SET status = 'diterima' WHERE id_transaksi='$id'");
          echo "string";
        }  if($pilih == "tolak"){
            return $this->conn->query("UPDATE transaksi SET status = 'ditolak' WHERE id_transaksi='$id'");

          }
      }
    public function bukti1(){
      //$id=$_SESSION['kdTr'];
      if(empty($_SESSION['kdTr'])){
        echo "<script>alert('Anda Belum Memesan');window.history.go(-1)</script>";
        //exit();
      }else {
      $id=$_SESSION['kdTr'];
      $pending="pending";
      $gagal="gagal";

        $maju=$this->conn->query("SELECT  status,nama FROM transaksi JOIN pemesan USING(id_pemesan) WHERE status = 'diterima' and id_transaksi='$id' ");
        $maju2=$this->conn->query("SELECT status,nama FROM transaksi JOIN pemesan USING(id_pemesan) WHERE status = 'PENDING' and id_transaksi='$id' ");

        $result1=mysqli_num_rows($maju);
        $result2=mysqli_num_rows($maju2);

      if ($result1>0) {
          return $maju;
      }elseif($result2>0){
          return $pending;
      }else{
          return $gagal;
      }
        }
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
            // mysqli_query($conn1,"INSERT INTO gambar(id_gambar, gambar, id_deskripsi)
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
      if (!empty($_POST['nama']&&$_POST['alamat'])) {
        $nama = $_POST['nama'];
        $alamat= $_POST['alamat'];
        $noId = $_POST['noId'];
        $password = $_POST['pwd'];
        $pk=$this->gen->generate_uuid();

        if (strlen($_POST["pwd"]) <= 8) {
           $passwordErr = "harus 8 karakter";
         }
        else{
          return $op=$this->conn->query("INSERT INTO penyedia(id_penyedia,nama,alamat,no_identitas,password)
              VALUES('$pk', '$nama', '$alamat', '$noId','$password')");
          header ('location:../view/loginpenyedia.html');
        }
      }
    }

    public function feedback1(){
        $sdm=$_POST['panjang'];
      //  $idhome=$_POST['id'];
        $kd=$this->gen->generate_uuid();

          return $fd=$this->conn->query("INSERT INTO feedback(id_feedback,feedback,id_homestay)
              VALUES('$kd','$sdm','')");
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
