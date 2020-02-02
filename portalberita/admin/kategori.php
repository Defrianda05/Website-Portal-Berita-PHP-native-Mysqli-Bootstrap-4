<?php 

global $connect;

if (isset($_POST['tambahkategori'])) {
	
	$kategori = $_POST['kategori'];
	$alias = $_POST['alias'];
	$terbit = $_POST['terbit'];

	$sql = "INSERT INTO kategori VALUES ('', '$kategori', '$alias', '$terbit')";

	$result = mysqli_query($connect, $sql);

}

if (isset($_POST['editkategori'])) {

	$id = $_POST['id'];
	$kategori = $_POST['kategori'];
	$alias = $_POST['alias'];
	$terbit = $_POST['terbit'];
	
	$sql = "UPDATE kategori SET kategori = '$kategori', alias = '$alias', terbit = '$terbit' WHERE ID = '$id' ";
	$result = mysqli_query($connect, $sql);

	echo "<script> 
			document.location.href = './?mod=kategori';
		  </script>";

}


if (isset($_GET['act']) && $_GET['act'] == 'edit') {
	
	$id = $_GET['id'];
	$sql = "SELECT * FROM kategori WHERE ID = '$id' ";
	$result = mysqli_query($connect, $sql);
	$row = mysqli_fetch_assoc($result);
	$kategori = $row['kategori'];
	$alias = $row['alias'];
	$terbit = $row['terbit'];

}

if (isset($_GET['act']) && $_GET['act'] == 'hapus') {
	
	$id = $_GET['id'];

	$sql = "DELETE FROM kategori WHERE ID = '$id' ";
	$result = mysqli_query($connect, $sql);

	echo "<script> 
			alert('Kategori Berhasil Di Hapus'); 
			document.location.href = './?mod=kategori';
		  </script>";

}


 ?>



<form class="text-left" action="./?mod=kategori" method="POST">
	<fieldset class="border p-2">
		<legend  class="w-auto">Tambah Kategori</legend>
		<div class="form-group">
		<input type="hidden" name="id" value="<?php if (isset($_GET['act']) && $_GET['act'] =='edit') { echo $id; } ?>">
		<label>Nama Kategori</label>
    	<input type="text" name="kategori" class="form-control col-6" 
    	value="<?php if (isset($_GET['act']) && $_GET['act'] =='edit') { echo $kategori; } ?>" required>
    	<label>Alias</label>
    	<input type="text" name="alias" class="form-control col-6" 
    	value="<?php if (isset($_GET['act']) && $_GET['act'] =='edit') { echo $alias; } ?>" required>
    	<label>Tampilkan</label> 
    	<br>
    	<select class="custom-select col-1" name="terbit">
  			<option value="1" 
  			<?php if (isset($_GET['act']) && $_GET['act'] =='edit' && $terbit == 1) { echo 'selected'; } ?>>
  				Yes
  			</option>
  			<option value="0"
  			<?php if (isset($_GET['act']) && $_GET['act'] =='edit' && $terbit == 0) { echo 'selected'; } ?>>
  			No
  			</option>
		</select> 
		<br>
		<br>
		<button type="submit" class="btn btn-primary"
				name="<?=(isset($id) ? 'editkategori' : 'tambahkategori')?>">
		<?=(isset($id) ? 'EDIT' : 'TAMBAH')?>
		</button>
		</div>
	</fieldset>
</form>

<br>

<fieldset class="border p-2">
		<legend  class="w-auto text-left">List Kategori</legend>
		<div class="form-group">
			<table class="table">
  				<thead>
				    <tr>
				      <th scope="col" class="text-left">Nama Kategori</th>
				      <th scope="col">Alias</th>
				      <th scope="col">Aksi</th>
				    </tr>
  				</thead>
  				<?php 
  				$sql = "SELECT * FROM kategori  ORDER BY ID DESC";
  				$result = mysqli_query($connect, $sql);
  				 ?>
  				<?php while($row = mysqli_fetch_assoc($result)) : ?>
				<tbody>
				    <tr>
				      <td class="text-left"><?= $row['kategori']; ?></td>
				      <td><?= $row['alias']; ?></td>
				      <td>
				      	<a href="./?mod=kategori&act=edit&id=<?= $row['ID']; ?>">EDIT</a> |
				      	<a href="./?mod=kategori&act=hapus&id=<?= $row['ID']; ?>">HAPUS</a>
				      </td>
				    </tr>
				<?php endwhile; ?>
				</tbody>
			</table>
		</div>
</fieldset>
