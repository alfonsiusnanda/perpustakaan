<h1 class="mt-4">Kategori Buku</h1>
<div class="card">
<div class="card-body">   
<div class="row">
    <div class="col-md-12">
        <a href="?page=kategori_tambah" class="btn btn-primary">+ Tambah Data</a>
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0%">
        <tr>
            <th style="text-align:center">No</th>
            <th style="text-align:center">Nama Kategori</th>
            <th style="text-align:center">Aksi</th>
        </tr>
        <?php
        $i = 1;
        $query = mysqli_query($koneksi, "SELECT*FROM kategori");
        while($data = mysqli_fetch_array($query)){
            ?>
            <tr>
                <td style="text-align:center"><?php echo $i++; ?></td>
                <td style="text-align:center"><?php echo $data['kategori']; ?></td>
        <td style="text-align:center">
        <a href="?page=kategori_ubah&&id=<?php echo $data['id_kategori'];?>" class="btn btn-info">Ubah</a>
        <a onclick="return confirm('Apakah anda yakin ingin mengahapus Kategori ini?');" href="?page=kategori_hapus&&id=<?php echo $data['id_kategori'];?>" class="btn btn-danger">Hapus</a>
        </td>
        </tr>
        <?php
        }
        ?>
    </table>
</div>
</div>