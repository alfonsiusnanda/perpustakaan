<h1 class="mt-4">Peminjaman Buku</h1>
<div class="card">
<div class="card-body">   
<div class="row">
    <div class="col-md-12">
        <a href="?page=peminjaman_tambah" class="btn btn-primary"><i class="fa fa-plus"></i>Tambah Peminjaman</a>
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <tr>
            <th style="text-align:center">No</th>
            <th style="text-align:center">User</th>
            <th style="text-align:center">Judul</th>
            <th style="text-align:center">Foto</th>
            <th style="text-align:center">Tanggal Peminjaman</th>
            <th style="text-align:center">Tanggal Pengembalian</th>
            <th style="text-align:center">Jumlah Peminjaman</th>
            <th style="text-align:center">Status Peminjaman</th>
        </tr>
        <?php
        $i = 1;
        $query = mysqli_query($koneksi, "SELECT*FROM peminjaman LEFT JOIN user on user.id_user = peminjaman.id_user LEFT JOIN buku on buku.id_buku = peminjaman.id_buku WHERE peminjaman.id_user=" . $_SESSION['user']['id_user']);
        while($data = mysqli_fetch_array($query)){

            ?>
            <tr>
                <td style="text-align:center"><?php echo $i++; ?></td>
                <td style="text-align:center"><?php echo $data['nama']; ?></td>
                <td style="text-align:center"><?php echo $data['judul']; ?></td>
                <td style="text-align:center"><img width="100px" src="assets/buku/<?php echo $data['foto']; ?>"></td>
                <td style="text-align:center"><?php echo $data['tanggal_peminjaman']; ?></td>
                <td style="text-align:center"><?php echo $data['tanggal_pengembalian']; ?></td>
                <td style="text-align:center"><?php echo $data['jumlah_pinjam']; ?></td>
                <td style="text-align:center"><?php echo $data['status_peminjaman']; ?></td>
        </tr>
        <?php
        }
        ?>
      
    </table>
</div>
</div>