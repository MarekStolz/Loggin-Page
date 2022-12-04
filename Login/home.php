<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['fname']) && isset($_SESSION['type_id'])) {
 ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Home</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <div class="d-flex justify-content-center align-items-center vh-100">
    	
    	<div class="shadow w-450 p-3 text-center">
            <h3 class="display-4 ">Hello,<?php
			

			 $_SESSION['fname']?> your role is <?=$_SESSION['type_id'] ?></h3>
            <a href="logout.php" class="btn btn-warning">Logout</a>
		</div>
    </div>
</body>
</html>

<?php }
else {
	header("Location: login.php");
	exit;
} ?>