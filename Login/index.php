<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Sign Up</title>
	<link rel="stylesheet" type="text/css" href="CSS/style.css">
<body>
    <div class="main">
    	
    	<form class="singup" action="Conn/signup.php" method="post">

    		<h4>Create Account</h4><br>
    		<?php if(isset($_GET['error'])){ ?>
    		<div class="alert alert-danger" role="alert"> <?php echo $_GET['error']; ?>
			</div>
		    <?php } ?>

		    <?php if(isset($_GET['success'])){ ?>
    		<div class="alert" role="alert"> <?php echo $_GET['success']; ?>
			</div>
		    <?php } ?>
	
		  <div>
		    <label>Full Name</label>
		    <input type="text" name="fname"value="<?php echo (isset($_GET['fname']))?$_GET['fname']:"" ?>">
		</div>

		  <div>
		    <label>Email</label>
		    <input type="email"name="email"value="<?php echo (isset($_GET['email']))?$_GET['email']:"" ?>">
		  </div>

		  <div>
		    <label>Password</label>
		    <input type="password" name="pass">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Sign Up</button>
		  <a href="login.php" class="btn link-secondary">Login</a>
		</form>
    </div>
</body>
</html>