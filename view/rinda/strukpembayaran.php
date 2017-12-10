<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My Homestay</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">My Homestay</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
                        <?php while ($row=$mod->fetch_assoc()) { ?>
            <li class="nav-item">
              <a class="nav-link" href="http://localhost/webdastub/controller/controller.php?fungsi=konfirmBayar&id=<?php echo $_SESSION['kodeBayar']?>&hrg=<?php echo $row['harga'] ?>">Konfirmasi Pembayaran>></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <!-- <div class="row"> -->

            <table>
            <tr>
              <td>Nama Pemesan </td>
              <td>:</td>
              <td><?php echo $_SESSION['namaPemesan']; ?></td>
            </tr>
            <tr>
              <td>Kode Pesanan</td>
              <td>:</td>
              <td><?php echo $_SESSION['kodeBayar']; ?></td>
            </tr>

            <tr>
              <td>Pesanan</td>
              <td>:</td>
              <td><?php echo $row['nama_properti']; ?></td>
            </tr>
            <tr>
              <td>Jumlah Bayar </td>
              <td>: </td>
              <td>Rp.<?php echo $row['harga']; ?></td>
            </tr>
            <?php } ?>
            <tr>

              <td>QR CODE  :</td>
              <td><img src="../view/rinda/qrcode.png"></img></td>
            </tr>
            </table>
            <p>Tata cara pembayaran ATM</p>
            <ul>
              <li>Kode BANK abc adalah 001</li>
              <li>Masukkan kode bayar diatas</li>
              <li>Masukkan Nominal Pembayaran</li>
            </ul>

            <b>Silahkan bayar dalam waktu kurang dari 24 jam</b>
            <form class="" action="" method="post">

            </form>
            <!-- <div class="col-lg-4 col-md-6 mb-4">

              <div class="card h-100">
               <div class="card-body">
                  <h4 class="card-title">
                    <a href=""></a>asasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasasas
                  </h4>
                  <h5>sdsdsdsdsdsdsdsd</h5>
                  <p class="card-text"></p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div> -->

          <!-- </div> -->
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; MyHomestay 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
