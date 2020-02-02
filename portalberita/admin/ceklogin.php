<?php
include '../inc/fungsi.php';

session_start();

if (isset($_SESSION["login"]) ) {
	header("Location: index.php");
	exit;
}


include("../inc/koneksi.php");

if (isset($_POST['submit'])) {
	
	global $connect;

	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql = "SELECT * FROM administrator WHERE username = '$username'";

	$result = mysqli_query($connect, $sql);
	
	// cek username
	if (mysqli_num_rows($result) === 1 ) {
		// cek password
		$row = mysqli_fetch_assoc($result);
		if ($row["password"] === $password AND $row["username"] === $username) {
			// set session
			$_SESSION["login"] = true;
			$_SESSION["nama"] = $row["Nama"];
			header("Location: index.php");
			exit;
		}
	} else {
    echo "<script> 
          alert('Username Dan Password Salah');
          </script>";
          // document.location.href = './?mod=berita';
  }
}
?>

<!DOCTYPE html>
<html>

<head>
  <title>Login</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="../assets/style.css">
  <link rel="icon" type="image/png" href="../icon.png" sizes="196x196" />
</head>

<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Login</h5>
            <form class="form-signin" action="" method="POST">
              <div class="form-label-group">
                <input type="text" id="inputUsername" class="form-control" name="username" placeholder="Username" required autofocus>
                <label for="inputUsername">Username</label>
              </div>
              <div class="form-label-group">
                <input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>
              <div class="custom-control custom-checkbox mb-1 mt-1">
              </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" name="submit">Sign in</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>

</html>