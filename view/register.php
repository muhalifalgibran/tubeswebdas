<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
<div class="container1">
  <h2 align="center">REGISTER PENYEDIA</h2>
  <form action="/action_page.php" method="post">
    <div class="form-group">
      <label for="email">Nama:</label>
      <input type="email" class="form-control" id="email" placeholder="Nama" name="nama">
    </div>
    <div class="form-group">
      <label for="pwd">Alamat:</label>
      <input type="text" class="form-control" id="pwd" placeholder="Alamat" name="alamat">
    </div>
    <div class="form-group">
      <label for="email">No Identitas(KTP/SIM):</label>
      <input type="email" class="form-control" id="email" placeholder="No identitas Anda" name="nama">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <button type="submit" class="btn btn-warning">Submit</button>
  </form>
  </div>

</body>
</html>
