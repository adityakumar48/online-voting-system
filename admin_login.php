<!DOCTYPE html>
	<html>
	<head>
		<title></title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<style>
		.card{
			width:400px;
			margin-left:auto;
			margin-right:auto;
			margin-top:100px;
			text-align:center;
			padding:30px;	
			border:4px #a517ba solid;
			border-radius:5px;	
		}
	</style>
	<body>
		<section class="sec">
			<div class="card">
				<div class="row">
					<div class="col-md-12">
						<h3>Admin Login</h3>
	<?php session_start();
		if(isset($_SESSION['error'])){
			echo $_SESSION['error'];
			unset($_SESSION['error']);
			}
	?>
					<form action="process.php" method="post">
						<div class="form-group">
							<input required type="text" class="form-control" name="username" placeholder="Your Email *" value="" />
						</div>
						<div class="form-group">
							<input required type="password" class="form-control" name="password" placeholder="Your Password *" value="" />
						</div>
						<div class="form-group">
							<input required type="submit" class="btnSubmit" value="Login"/>
						</div>	
					</form>
				</div>
			</div>
		</div>
	</section>
	<script src="js/jquery-3.2.1.slim.min.js"></script>
		<script src="js/popper.min.js"></script>    
		<script src="js/bootstrap.min.js"></script> 
	</body>
	</html>

