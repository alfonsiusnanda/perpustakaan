<?php
    $no = 1;

    if (isset($_POST['filter'])) {
        $dari_tgl = mysqli_real_escape_string($koneksi, $_POST['dari_tgl']);
        $sampai_tgl = mysqli_real_escape_string($koneksi, $_POST['sampai_tgl']);
        $data = mysqli_query($koneksi, "SELECT * FROM peminjaman LEFT JOIN user ON user.id_user = peminjaman.id_user LEFT JOIN buku ON buku.id_buku=peminjaman.id_buku WHERE tanggal_peminjaman BETWEEN '$dari_tgl' AND '$sampai_tgl'");
        
    } else {
        $data = mysqli_query($koneksi, "SELECT * FROM peminjaman LEFT JOIN user ON user.id_user = peminjaman.id_user LEFT JOIN buku ON buku.id_buku=peminjaman.id_buku");
    }
?>

<center>
    <div class="container">
        <h1>Generate Laporan</h1>
        <h3>Laporan peminjaman Buku di perpustakaan Digital</h3>                                    
        <br>
        <form method="POST">
            <table>
                <tr>
                    <td>Dari Tanggal : </td>
                    <td><input type="date" name="dari_tgl" required="required"></td>
                    <td>Hingga Tanggal : </td>
                    <td><input type="date" name="sampai_tgl" required="required"></td>
                    <td><input type="submit" class="btn btn-danger" name="filter" value="Filter" ></td>
                    
                </tr>
            </table>
            
        </form>
        <br>

        <br>
        <div class="col">
            <div class="card">
                <table class="table mb-2">
                    <thead>
                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">ID User</th>
                            <th scope="col">ID Buku</th>
                            <th scope="col">Nama Peminjam</th>
                            <th scope="col">Judul Buku</th>
                            <th scope="col">Tanggal Peminjaman</th>
                            <th scope="col">Tanggal Pengembalian</th>
                            <th scope="col">Status Peminjaman</th>
                        </tr>
                    </thead>
                    <?php
                    while ($tampil = mysqli_fetch_array($data, MYSQLI_ASSOC)) {
                    ?>
                        <tr>
                            <td><?php echo $no++; ?></td>
                            <td><?php echo $tampil['id_user']; ?></td>
                            <td><?php echo $tampil['id_buku']; ?></td>
                            <td><?php echo $tampil['nama']; ?></td>
                            <td><?php echo $tampil['judul']; ?></td>
                            <td><?php echo $tampil['tanggal_peminjaman']; ?></td>
                            <td><?php echo $tampil['tanggal_pengembalian']; ?></td>
                            <td><?php echo $tampil['status_peminjaman']; ?></td>
                        </tr>
                    <?php
                    }
                    ?>
                </table>
            </div>
        </div>
        <div class="col">
                    <p style="line-geight: 1rem;">Mengetahui :</p>
                    <p>Kepala Dinas Perpustakaan Digital</p>
                    <p style="margin-top: 4rem;"><b>Alfonsius Nanda Saputro</p></tr>
    </div>
    <button onclick="cetak()" class="btn btn-success"><i class="fa fa-print"></i>Cetak data</button>
</center>
<script>
    function cetak(){
 window.print();
}
 </script>