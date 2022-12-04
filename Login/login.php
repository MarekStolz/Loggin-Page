<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>
<body>
    <div class="main">
    	
    	<form class="singup" action="Conn/login.php" method="post">

    		<h4>LOGIN</h4><br>
    		<?php if(isset($_GET['error'])){ ?>
    		<div class="alert alert-danger" role="alert"> <?php echo $_GET['error']; ?>
			</div>
		    <?php } ?>

		  <div>
		    <label>Email</label>
		    <input type="email" class="form-control" name="email" value="<?php echo (isset($_GET['email']))?$_GET['email']:"" ?>">
		  </div>

		  <div>
		    <label>Password</label>
		    <input type="password" class="form-control"name="pass">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Login</button>
		  <a href="index.php" class="btn link-secondary">Sign Up</a>
		</form>
    </div>
</body>
</html>