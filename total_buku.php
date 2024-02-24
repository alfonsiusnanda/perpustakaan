<div class="container" style="margin-top: 2rem;">
<div class="row m-5">
<h3>Daftar Buku</h3>
<?php

  $no =1;
  $data= mysqli_query($koneksi, "SELECT * FROM buku Order by id_buku asc");

  while($d = mysqli_fetch_array($data)){
?>
          <div class="card" style="width: 15rem;">
          <img src="assets/buku/<?php echo $d['foto'];?>" class="card-img-top" alt="...">
          <div class="card-body">
          <h5 class="card-title"><?php echo $d['judul']; ?></h5>
          <h6>Penulis : <?php echo $d['penulis']; ?></h6>
          <h6>Penerbit : <?php echo $d['penerbit']; ?></h6>
          <h6>Tahun terbit : <?php echo $d['tahun_terbit']; ?></h6>
          <h6>Stok : <?php echo $d['stok']; ?></h6>
          
        </div>
      </div>
<?php
}
?>
  <td>
    <a href="?page=home" class= "btn btn-danger">Kembali</a>
  </td>
</div>
</div>