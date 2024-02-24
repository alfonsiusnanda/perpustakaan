<h1 class="mt-4">Ulasan</h1>
<div class="card">
<div class="card-body">   
<div class="row">
    <div class="col-md-12">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0%">
        <tr>
            <th style="text-align:center">No</th>
            <th style="text-align:center">User</th>
            <th style="text-align:center">ID Buku</th>
            <th style="text-align:center">Foto</th>
            <th style="text-align:center">Judul Buku</th>
            <th style="text-align:center">Ulasan</th>
            <th style="text-align:center">Rating</th>
        </tr>
        <?php
        $i = 1;
        $query = mysqli_query($koneksi, "SELECT*FROM ulasan LEFT JOIN user on user.id_user = ulasan.id_user LEFT JOIN buku on buku.id_buku = ulasan.id_buku");
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
        
        
        </tr>
        <?php
        }
        ?>
    </table>
    <td>
    <a href="?page=home" class= "btn btn-danger">Kembali</a>
    </td>
</div>
</div>