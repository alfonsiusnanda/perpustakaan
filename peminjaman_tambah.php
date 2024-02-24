<h1 class="mt-4">Peminjaman Buku</h1>
<div class="card">
    <div class="card-body">
    <div class="row">
    <div class="col-md-12">
        <form method="post">
            <?php
            if(isset($_POST['submit'])) {
                $id_buku = $_POST['id_buku'];
                $id_user = $_SESSION['user']['id_user'];
                $tanggal_peminjaman = date('Y-m-d');
                $tanggal_pengembalian = date('Y-m-d', strtotime($tanggal_peminjaman.'+1day'));
                $jumlah_pinjam = $_POST['jumlah_pinjam'];
                $status_peminjaman = $_POST['status_peminjaman'];
                $query = mysqli_query($koneksi, "INSERT INTO peminjaman(id_buku,id_user,tanggal_peminjaman,tanggal_pengembalian,jumlah_pinjam,status_peminjaman) values('$id_buku','$id_user','$tanggal_peminjaman','$tanggal_pengembalian','$jumlah_pinjam','$status_peminjaman')");

                if($query) {
                    echo '<script>alert("Tambah data berhasil."); location.href="?page=peminjaman";</script>';
                }else{
                    echo '<script>alert("Tambah data gagal.");</script>';
                }
            }
            ?>
            <div class="row mb-3">
            <div class="col-md-2,5">Buku</div>
                <div class="col-md-12">
                    <select name="id_buku" class="form-control">
                        <?php
                            $buk = mysqli_query($koneksi,"SELECT*FROM buku");
                            while($buku = mysqli_fetch_array($buk)){
                                ?>
                                <option value="<?php echo $buku['id_buku']; ?>"><?php echo $buku['judul']; ?></option>
                                <?php    
                            }
                        ?>
                        </select>
                        </div>
                        </div>
            <div class="row mb-3">
                <div class="col-md-2,5">Jumlah Peminjaman</div>
                <div class="col-md-12">
                <input type="number" class="form-control" name="jumlah_pinjam" min="1" max="2" value="1">   
            </div>
            </div>
            
            <div class="row mb-4">
                <div class="col-md-2,5">Status Peminjaman</div>
                <div class="col-md-12">
                <select name="status_peminjaman" class="form-control">
                    <option value="dipinjam">Dipinjam</option>
                    
                </select>
            </div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
            <button type="submit" class="btn  btn-primary" name="submit" value="submit">Simpan</button>
            <button type="reset" class="btn  btn-secondary">Reset</button>
        <a href="?page=peminjaman" class= "btn btn-danger">Kembali</a>
    </form>           
</div>
</div>
</div>