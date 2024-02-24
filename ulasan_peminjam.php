<h1 class="mt-4">Ulasan</h1>
<div class="card">
<div class="card-body">   
<div class="row">
    <div class="col-md-12">
        <a href="?page=ulasan_tambah" class="btn btn-primary">+ Tambah Data</a>
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0%">
        <tr>
            <th style="text-align:center">No</th>
            <th style="text-align:center">User</th>
            <th style="text-align:center">ID Buku</th>
            <th style="text-align:center">Foto</th>
            <th style="text-align:center">Judul Buku</th>
            <th style="text-align:center">Ulasan</th>
            <th style="text-align:center">Rating</th>
            <th style="text-align:center">Aksi</th>
        </tr>
        <?php
        $i = 1;
        $query = mysqli_query($koneksi, "SELECT*FROM ulasan LEFT JOIN user on user.id_user = ulasan.id_user LEFT JOIN buku on buku.id_buku = ulasan.id_buku WHERE ulasan.id_user=" . $_SESSION['user']['id_user']);
        while($data = mysqli_fetch_array($query)){
            ?>
            <tr>
                <td style="text-align:center"><?php echo $i++; ?></td>
                <td style="text-align:center"><?php echo $data['nama']; ?></td>
                <td style="text-align:center"><?php echo $data['id_buku']; ?></td>
                <td style="text-align:center"><img width="100px" src="assets/buku/<?php echo $data['foto']; ?>"></td>
                <td style="text-align:center"><?php echo $data['judul']; ?></td>
                <td style="text-align:center"><?php echo $data['ulasan']; ?></td>
                <td style="text-align:center"><?php echo $data['rating']; ?></td>
        
        <td style="text-align:center">
        <a href="?page=ulasan_ubah&&id=<?php echo $data['id_ulasan'];?>" class="btn btn-info">Ubah</a>
        <a onclick="return confirm('Apakah anda yakin ingin mengahapus Ulasan ini?');" href="?page=ulasan_hapus&&id=<?php echo $data['id_ulasan'];?>" class="btn btn-danger">Hapus</a>
        </td>
        </tr>
        <?php
        }
        ?>
    </table>
</div>
</div>