<h1 class="mt-4">Kategori Buku</h1>
<div class="card">
<div class="card-body">   
<div class="row">
    <div class="col-md-12">

    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0%">
        <tr>
            <th style="text-align:center">No</th>
            <th style="text-align:center">Nama Kategori</th>

        </tr>
        <?php
        $i = 1;
        $query = mysqli_query($koneksi, "SELECT*FROM kategori");
        while($data = mysqli_fetch_array($query)){
            ?>
            <tr>
                <td style="text-align:center"><?php echo $i++; ?></td>
                <td style="text-align:center"><?php echo $data['kategori']; ?></td>
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