<?php
include "lib/inc.koneksidb.php";
// var_dump("$koneksi");

?>
<html>

<head>
  <title>Tampilan Data Penyakit</title>
</head>

<body>
  <div class="isi"><br>
    <table class="table table-striped table-hover">
      <tr>
        <td colspan="3">
          <h3>DAFTAR PENYAKIT Buah Durian</h3>
        </td>
      </tr>
      <tr>
        <th class="warning" width="80"><b>KODE</b></th>
        <th class="warning"><b>NAMA PENYAKIT</b></th>
        <th class="warning"><b>GEJALA</b></th>
      </tr>

      <?php

      // Menampilkan daftar penyakit
      // $koneksi = mysqli_connect($my['host'], $my['user'], $my['pass'], $my['dbs']);
      $sql = "SELECT * FROM penyakit ORDER BY kd_penyakit";
      $qry = mysqli_query($koneksi, $sql) or die("Query salah : " . mysqli_error());
      $no  = 0;
      while ($data = mysqli_fetch_array($qry)) {
        $no++;
      ?>

        <tr>
          <td><?php echo $data['kd_penyakit']; ?></td>
          <td><?php echo $data['nm_penyakit']; ?></td>
          <td><a class="btn btn-warning raised btn-xs" href="?page=dafgejala&kdsakit=<?php echo $data['kd_penyakit']; ?>"><small>Lihat</small></a></td>
        </tr>

      <?php
      }
      ?>
    </table></br>
  </div>
</body>

</html>