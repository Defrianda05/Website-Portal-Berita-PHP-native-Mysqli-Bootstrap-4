<?php 

global $connect;

if (isset($_POST['addberita'])) {

	$judul = $_POST['judul'];
	$kategori = $_POST['kategori'];
	$isi = mysqli_real_escape_string($connect, $_POST['isi']);
	$teks = mysqli_real_escape_string($connect, $_POST['teks']);
	date_default_timezone_set("Asia/Jakarta");
	$date = date("Y-m-d H:i:s");
	$updateby = $_SESSION['nama'];
	$terbit = $_POST['terbit'];



	// cek gambar ada atau tidak
	$namaFile = $_FILES['gambar']['name'];
	$ukuranFile = $_FILES['gambar']['size'];
	$error = $_FILES['gambar']['error'];
	$tmpName = $_FILES['gambar']['tmp_name'];
	if ($error === 4) {
		echo "<script>
				alert('Pilih gambar terlebih dahulu');
			  </script>";
		return false;
	}

	// format gambar harus png

	$ekstensiGambarValid = ['png'];
	$ekstensiGambar = explode('.', $namaFile);
	$ekstensiGambar = strtolower(end($ekstensiGambar));
	if (!in_array($ekstensiGambar, $ekstensiGambarValid)) {
		echo "<script>
				alert('Format Gambar harus png');
			  </script>";
		return false;
	}

	// pindah file gambar

	if ($namaFile && $tmpName) {

		$gambarBaru = preg_replace("/[^a-zA-Z0-9]/", "_", $_POST['judul']);

		$locationPhoto = '../photo/'.$gambarBaru;

		$namePhoto = 'photo/'.$gambarBaru.'.png';

		move_uploaded_file($tmpName, $locationPhoto . '.png');
		$gambar = $namePhoto;

	}

		$sql = "INSERT INTO berita VALUES ('', '$judul', '$kategori', '$isi', '$gambar', '$teks' , '$date', '$updateby', '0', 'berita', '$terbit')";

		$result = mysqli_query($connect, $sql);

		echo "<script> 
				alert('Berhasil Menambahkan Berita');
				document.location.href = './?mod=berita';
		 	 </script>";
	

}

if(isset($_GET['act']) && $_GET['act'] == 'edit') {

	$id = $_GET['id'];
	$sql = "SELECT * FROM berita WHERE ID = '$id'";
	$result = mysqli_query($connect, $sql);
	$row = mysqli_fetch_assoc($result);
	$judul = $row['judul'];
	$kategori = $row['kategori'];
	$isi = $row['isi'];
	$gambar = $row['gambar'];
	$teks = $row['teks'];
	$tanggal = $row['tanggal'];
	$updateby = $row['updateby'];
	$terbit = $row['terbit'];


}

if (isset($_POST['editberita'])) {
	
	$id = $_POST['id'];
	$judul = $_POST['judul'];
	$kategori = $_POST['kategori'];
	$isi = $_POST['isi'];
	$teks = $_POST['teks'];
	$tanggal = date("Y-m-d H:i:s");
	$terbit = $_POST['terbit'];

	$sql = "UPDATE berita SET judul = '$judul', kategori = '$kategori', isi = '$isi', teks = '$teks', tanggal = '$tanggal', terbit = '$terbit' WHERE ID = '$id' ";

	$result = mysqli_query($connect, $sql);

	echo "<script> 
			document.location.href = './?mod=berita';
		  </script>";

}

// hapus berita

if (isset($_GET['act']) && $_GET['act'] =='hapus') {
	$id = $_GET['id'];
	$sqlGambar = mysqli_query($connect, "SELECT * FROM berita WHERE ID= '$id'");
	$result = mysqli_fetch_assoc($sqlGambar);
	$gambar = $result['gambar'];
	unlink('../'.$gambar);
	$query = "DELETE FROM berita WHERE ID = '$id'";
	$sql = mysqli_query($connect,$query);
	echo "<script> 
			document.location.href = './?mod=berita';
		  </script>";
}


 ?>



<form class="text-left" action="./?mod=berita" method="POST" enctype="multipart/form-data">
	<fieldset class="border p-2">
		<legend  class="w-auto">Tambah Berita</legend>
		<div class="form-group">
		<input type="hidden" name="id" value="<?php if (isset($_GET['act']) && $_GET['act'] =='edit') { echo $id; } ?>">
			<label>Judul</label>
			<input type="text" name="judul" class="form-control col-6" 
			value="<?php if (isset($_GET['act']) && $_GET['act'] =='edit') { echo $judul; } ?>">

			<label>Kategori</label>
			<br>
			<select class="custom-select col-2" name="kategori">
				<option>Pilih Kategori</option>
				<?php 
					$sql = "SELECT * FROM kategori WHERE terbit = 1 ORDER BY ID DESC";
					$result = mysqli_query($connect, $sql);
					while ($row = mysqli_fetch_assoc($result)) {
						$alias = $row['alias'];
						$kategori1 = $row['kategori'];
						if (isset($_GET['act']) && $_GET['act'] =='edit' && $kategori == $alias) {
						echo "
							<option value='$alias' selected >$kategori1</option>
						";
						} else {
							echo "
							<option value='$alias'>$kategori1</option>
						";
						}
					}
				 ?>
			</select>
			<br>
			<label>Isi Berita</label>
			<br>
			<textarea name="isi" class="form-control summernote"><?php if (isset($_GET['act']) && $_GET['act'] =='edit') { echo $isi; } ?></textarea>
			<br>
			<label>Gambar</label>
			<br>
			<?php 
				if (isset($_GET['act']) && $_GET['act'] =='edit') {
					echo "
					<img src='../$gambar' width='200'>
						  ";
				} else {
					echo "
						<input type='file' name='gambar'>
					";
				}
			 ?>
			<br>
			<br>
			<br>
			<label>Teks</label>
			<br>
			<textarea class="form-control" name="teks" rows="3"><?php if (isset($_GET['act']) && $_GET['act'] =='edit') { echo $teks; } ?></textarea>
			<br>
			<label>Terbitkan</label>
			<br>
			<select class="custom-select col-2" name="terbit">
				<option value="1" <?php if(isset($_GET['act']) && $_GET['act'] =='edit' && $terbit == 1) { echo "selected"; } ?> >Yes</option>
				<option value="0" <?php if(isset($_GET['act']) && $_GET['act'] =='edit' && $terbit == 0) { echo "selected"; } ?>>No</option>
			</select>
			<br>
			<br>
			<button type="submit" class="btn btn-primary"
					name="<?=(isset($id) ? 'editberita' : 'addberita'); ?>">
				<?=(isset($id) ? 'Edit' : 'Tambah'); ?></button>
		</div>
	</fieldset>
</form>

<fieldset class="border p-2">
		<legend  class="w-auto text-left">List Berita</legend>
		<table class="table">
  			<thead>
			    <tr>
			      <th scope="col">No</th>
			      <th scope="col">Judul</th>
			      <th scope="col">Kategori</th>
			      <th scope="col">Tanggal</th>
			      <th scope="col">Aksi</th>
			    </tr>
  			</thead>
		  	<tbody>
		  		<?php 
		  			$no = 1;
		  			$sql = "SELECT * FROM berita ORDER BY ID DESC";
		  			$result = mysqli_query($connect, $sql);
		  		 ?>
		  		 <?php while ($row = mysqli_fetch_assoc($result)) : ?>
		  		<tr>
		  			<td><?= $no; ?></td>
		  			<td><?= $row['judul']; ?></td>
		  			<td><?= $row['kategori']; ?></td>
		  			<td><?= $row['tanggal']; ?></td>
		  			<td><a href="./?mod=berita&act=edit&id=<?= $row['ID']; ?>">Edit</a> | 
		  				<a href="./?mod=berita&act=hapus&id=<?= $row['ID']; ?>">Hapus</a></td>
		  		</tr>
		  		<?php $no++; ?>
		  		<?php endwhile; ?>
		  	</tbody>
		  </table>
</fieldset>		