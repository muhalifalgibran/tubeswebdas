<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <style media="screen">
      img{
        width: 400px;
        height: auto;
      }
    </style>
  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" >Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
              <?php // while ($ini= $result->fetch_assoc()) { ?>

            <?php// } ?>
            <li class="nav-item">
              <a class="nav-link" href="../view/index/carikamar.html">Cari Lagi?</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container">
      <div class="row">

        <div class="col-lg-9">
          <div class="row">
              <div class="container">
              <div class="card h-100">
                <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">

                  <div class="carousel-inner" role="listbox">

                    <div class="carousel-item active">
                      <?php while ($tampil=$gambar->fetch_assoc()) { ?>
                      <img src="../view/daftarProperti/gambar/<?php echo $tampil['gambar'] ?>">
                      <?php } ?>
                    </div>
                  </div>
                </div>
              <?php  while ($ini= $result->fetch_assoc()) { ?>
                <div class="card-body">
                  <h4 class="card-title">
                    <a>Kenyamanan Fasilitas</a>
                  </h4>
                  <p class="card-text"><?php echo $ini['rekomendasi'] ?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >Jenis HomeStay</a>
                  </h4>
                  <p class="card-text"><?php echo $ini['jenisHomestay'] ?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >Nama Properti</a>
                  </h4>
                  <p class="card-text"><?php echo $ini['nama_properti'] ?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >Info Penting</a>
                  </h4>

                  <p class="card-text"><?php echo $ini['aksesibilitas']?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >Deskripsi</a>
                  </h4>
                  <p class="card-text"><?php echo $ini['deskripsi'] ?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >Tempat Menarik Disekitar</a>
                  </h4>

                  <p class="card-text"><?php echo $ini['hal_sekitar'] ?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >Tanggal Check In</a>
                  </h4>

                  <p class="card-text"><?php echo $ini['tanggalCheckin'] ?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >BED</a>
                  </h4>

                  <p class="card-text"><?php echo $ini['ranjang'] ?></p>
                </div>
                <div class="card-body">
                  <h4 class="card-title">
                    <a >Alamat</a>
                  </h4>
                  <p class="card-text"><?php echo $ini['alamat'] ?></p>
                </div>
                      <tr>
                        <td><a href="http://localhost/webdastub/controller/controller.php?fungsi=bayar&id=<?php echo $ini['id_deskripsi']?>" class="btn btn-warning"> LANJUT BAYAR </a></td>
                      </tr>
                </form>
              <?php } ?>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
            </div>

          </div>
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
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
