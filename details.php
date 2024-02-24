<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detail Buku</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>
    <div class="container" style="margin-top: 5rem;">
        <div class="card">
            <div class="row">
            <?php
                include "koneksi.php";
                if(isset($_GET['id_buku'])){
                    $id = $_GET['id_buku'];
                }else{
                    die("Eror, Data Tidak Ditemukan");
                }
            $query = mysqli_query($koneksi, "SELECT*FROM buku WHERE id_buku=$id");
                $data = mysqli_fetch_array($query);
                ?>  
                <div class="col text-center" style="margin-top: 1rem;">
                <img src="assets/buku/<?php echo $data['foto'];?>" height="450">
                </div>
                <div class="col" style="margin-top: 1rem;">
                <h2>Detail Buku</h2>
                <hr>
                <table>
                    <tr>
                        <td><h5>ID Buku</h5></td>
                        <td><h5>: <?php echo $data['id_buku']; ?></h5></td>
                    </tr>
                    <tr>
                        <td><h5>Judul Buku</h5></td>
                        <td><h5>: <?php echo $data['judul']; ?></h5></td>
                    </tr>
                    <tr>
                        <td><h5>Penulis Buku</h5></td>
                        <td><h5>: <?php echo $data['penulis']; ?></h5></td>
                    </tr>
                    <tr>
                        <td><h5>Penerbit Buku</h5></td>
                        <td><h5>: <?php echo $data['penerbit']; ?></h5></td>
                    </tr>
                    <tr>
                        <td><h5>Tahun Terbit</h5></td>
                        <td><h5>: <?php echo $data['tahun_terbit']; ?></h5></td>
                    </tr>
                    <tr>
                        <td><h5>Stok</h5></td>
                        <td><h5>: <?php echo $data['stok']; ?></h5></td>
                    </tr>
                    <p><tr>
                        <td><h5>Deskripsi</h5></td>
                        <td><h5> : <?php echo $data['deskripsi']; ?></h5></td>
                    </tr></p>
                
                </table>
                <hr>
            </div>
            </div>
            <a href="index.php" class="btn btn-danger">Kembali</a>
        </div>
        
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>