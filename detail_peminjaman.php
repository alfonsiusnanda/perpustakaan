<h1 class="mt-4">Laporan Peminjaman</h1>
<div class="card">
    <div class="card-body">   
    <div class="row">
        <div class="col-md-12">
            <table border="1" cellspacing="0" cellpadding="5" width="100%">
            <tr>
                <th>No</th>
                <th>User</th>
                <th>Buku</th>
                <th>Tanggal Peminjaman</th>
                <th>Tanggal Pengembalian</th>
                <th>Jumlah</th>
                <th>Status Peminjaman</th>
                <th>Aksi</th>
            </tr>
            <?php
            $i = 1;
            $query = mysqli_query($koneksi, "SELECT*FROM peminjaman LEFT JOIN user on user.id_user = peminjaman.id_user LEFT JOIN buku on buku.id_buku = peminjaman.id_buku");
            while($data = mysqli_fetch_array($query)){
                ?>
                <tr>
                    <td><?php echo $i++; ?></td>
                    <td><?php echo $data['nama']; ?></td>
                    <td><?php echo $data['judul']; ?></td>
                    <td><?php echo $data['tanggal_peminjaman']; ?></td>
                    <td><?php echo $data['tanggal_pengembalian']; ?></td>
                    <td><?php echo $data['jumlah_pinjam']; ?></td>
                    <td><?php echo $data['status_peminjaman']; ?></td>
            <td>
            <?php
                if($data['status_peminjaman'] != 'dikembalikan'){
            ?>
               <a href="?page=peminjaman_ubah&&id=<?php echo $data['id_peminjaman'];?>" class="btn btn-success">Kembalikan</a>
            <?php
                }
            ?>
        </td>
        <?php
        }
        ?>
        </tr>
        </table>
    </div>
</div>