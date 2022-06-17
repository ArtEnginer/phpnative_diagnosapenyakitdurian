<?php
include "lib/inc.koneksidb.php";

$NOIP = $_SERVER['REMOTE_ADDR'];

# Periksa apabila sudah ditemukan
$sql_cekh = "SELECT * FROM tmp_penyakit 
			 WHERE noip='$NOIP' 
			 GROUP BY kd_penyakit";
$qry_cekh = mysqli_query($koneksi, $sql_cekh);
$hsl_cekh = mysqli_num_rows($qry_cekh);
if ($hsl_cekh == 1) {
	$hsl_data = mysqli_fetch_array($qry_cekh);

	$sql_pasien = "SELECT * FROM tmp_pasien WHERE noip='$NOIP'";
	$qry_pasien = mysqli_query($koneksi, $sql_pasien);
	$hsl_pasien = mysqli_fetch_array($qry_pasien);
	$sql_in = "INSERT INTO analisa_hasil SET
				  nama='$hsl_pasien[nama]',
				  kelamin='$hsl_pasien[kelamin]',
				  alamat='$hsl_pasien[alamat]',
				  pekerjaan='$hsl_pasien[pekerjaan]',
				  kd_penyakit='$hsl_data[kd_penyakit]',
				  noip='$hsl_pasien[noip]',
				  tanggal='$hsl_pasien[tanggal]'";
	mysqli_query($koneksi, $sql_in);

	echo "<meta http-equiv='refresh' content='0; url=index.php?page=hasil'>";
	exit;
}

$sqlcek = "SELECT * FROM tmp_analisa WHERE noip='$NOIP'";
$qrycek = mysqli_query($koneksi, $sqlcek);
$datacek = mysqli_num_rows($qrycek);
if ($datacek >= 1) {
	// Seandainya tmp kosong
	$sqlg = "SELECT gejala.* FROM gejala,tmp_analisa 
			 WHERE gejala.kd_gejala=tmp_analisa.kd_gejala 
			 AND tmp_analisa.noip='$NOIP' 
			 AND NOT tmp_analisa.kd_gejala 
			 	 IN(SELECT kd_gejala 
				 FROM tmp_gejala WHERE noip='$NOIP')
			 ORDER BY gejala.kd_gejala ASC";
	$qryg = mysqli_query($koneksi, $sqlg) or die("Gagal $qryg : " . mysqli_error());
	$datag = mysqli_fetch_array($qryg) or die("Gagal datag : " . mysqli_error());

	$kdgejala = $datag['kd_gejala'];
	$gejala   = $datag['nm_gejala'];

	$gambar_gejala = $datag['gambar_gejala'];
	//echo " ADA BOS ($sqlg)";	
} else {
	// Seandainya tmp kosong
	$sqlg = "SELECT * FROM gejala ORDER BY kd_gejala ASC";
	$qryg = mysqli_query($koneksi, $sqlg);
	$datag = mysqli_fetch_array($qryg);

	$kdgejala = $datag['kd_gejala'];

	$gejala   = $datag['nm_gejala'];

	$gambar_gejala = $datag['gambar_gejala'];
}
?>
<html>

<head>
	<title>Form Utama Penelusuran</title>
</head>

<body>
	<div class="isi">
		<form action="?page=konsulcek" method="post" name="form1" target="_self">
			<table class="table table-striped table-hover"><br>
				<tr>
					<th><b>JAWABLAH PERTANYAAN BERIKUT :</b></th>
				</tr>
				<tr>
					<td width="312">Apakah Buah Durian Anda mengalami<b>
							<?php echo $gejala;
							echo "[ $kdgejala ]"; ?> </b>?



						<input name="TxtKdGejala" type="hidden" value="<?php echo $kdgejala; ?>">



					</td>
				<tr>
					<td>
						<img src="admin/user/<?php echo $gambar_gejala; ?> " class="img-rounded" height="150" width="225" style="border: 2px solid #666666;" />
					</td>
				</tr>
				<tr>
					<td> <input type="radio" name="RbPilih" value="YA" checked>
						Benar (YA)
						<input type="radio" name="RbPilih" value="TIDAK">
						Salah (TIDAK)
					</td>
				</tr>
				<tr>
					<td> <input class="btn btn-success raised" type="submit" name="Submit" value="Jawab"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th><strong>GEJALA YANG TERPILIH YA (BENAR) </strong></th>
				</tr>
				<tr>
					<td>
						<?php
						$sql_gjl = "SELECT gejala.* FROM gejala, tmp_gejala WHERE gejala.kd_gejala=tmp_gejala.kd_gejala 
	  			  AND tmp_gejala.noip='$NOIP' ORDER BY tmp_gejala.kd_gejala";
						$qry_gjl = mysqli_query($koneksi, $sql_gjl) or die("Gagal Query" . mysqli_error());
						$cekAda  = mysqli_num_rows($qry_gjl);
						if ($cekAda == 0) {
							echo "BELUM ADA";
						}

						while ($hsl_gjl = mysqli_fetch_array($qry_gjl)) {
							echo "[ $hsl_gjl[kd_gejala] ] = $hsl_gjl[nm_gejala] <br>";
						}
						?>
					</td>
				</tr>
				<tr>
					<th><strong>PENYAKIT YANG MUNGKIN TERSERANG </strong></th>
				</tr>
				<tr>
					<td>
						<?php
						$sql_pyk = "SELECT penyakit.* FROM penyakit, tmp_penyakit WHERE penyakit.kd_penyakit=tmp_penyakit.kd_penyakit 
	  			  AND tmp_penyakit.noip='$NOIP' GROUP BY tmp_penyakit.kd_penyakit";
						$qry_pyk = mysqli_query($koneksi, $sql_pyk) or die("Gagal Query" . mysqli_error());
						$cekAda2  = mysqli_num_rows($qry_pyk);
						if ($cekAda2 == 0) {
							echo "BELUM ADA";
						}

						while ($hsl_pyk = mysqli_fetch_array($qry_pyk)) {
							echo "[ $hsl_pyk[kd_penyakit] ] = $hsl_pyk[nm_penyakit] <br>";
						}
						?>
					</td>
				</tr>
			</table>
			</br>
		</form>
	</div>
</body>

</html>