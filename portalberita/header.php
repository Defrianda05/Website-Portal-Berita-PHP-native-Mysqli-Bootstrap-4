<?php
include 'inc/koneksi.php';
include 'inc/fungsi.php';
global $connect;
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="<?php echo ambilprofilweb('meta_desc'); ?>">
  <meta name="keywords" content="<?php echo ambilprofilweb('meta_key'); ?>">
  <meta name="author" content="">
  <title><?php echo ambilprofilweb('title_site'); ?></title>
  <!-- Bootstrap core CSS -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link rel="icon" type="image/png" href="icon.png" sizes="196x196" />
  <!-- Custom styles for this template -->
  <link href="assets/blog-home.css" rel="stylesheet">
</head>

<body>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light bg-transparent position-static" style="margin-top: -55px;">
    <div class="container">
      <img class="navbar-brand" src="image/logo.png">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="./">Home</a>
          </li>
          <!-- Ambil Kategori Dari Database -->
          <!-- konfigurasi pagination -->
          <?php 
              $jumlahDataPerhalaman = 3;
              $dataBerita = mysqli_query($connect, "SELECT * FROM berita");
              $jumlahData = mysqli_num_rows($dataBerita);
              $jumlahHalaman = ceil($jumlahData / $jumlahDataPerhalaman);

              if (isset($_GET['page'])) {
                $halamanAktif = $_GET['page'];
              } else {
                $halamanAktif = 1;
              }
              $awalData = ( $jumlahDataPerhalaman * $halamanAktif ) - $jumlahDataPerhalaman;
          ?>
          <?php 
            $query = "SELECT * FROM kategori WHERE terbit = 1 ORDER BY ID ASC LIMIT 0,10";
            $result = mysqli_query($connect, $query);
           ?>
          <?php while ( $row = mysqli_fetch_assoc($result) ) : ?>
          <li class="nav-item">
            <a class="nav-link" href="./?open=cat&id=<?= $row['ID']; ?>"><?= $row['kategori']; ?></a>
          </li>
          <?php endwhile; ?>
        </ul>
      </div>
    </div>
  </nav>