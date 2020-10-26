<?php
session_start();

// form data received

$username = $_REQUEST['username'];
$password = md5($_REQUEST['password']);

include('dbConnect.php');

$sql = "select * from admin where username=:username";
$stmt = $pdo->prepare($sql);
$stmt->bindParam(":username",$username);
$stmt->execute();

if($stmt->rowCount()>0){

	$row = $stmt->fetch();
	if($row['password']==$password){
		
		$_SESSION['aid'] = $row['aid'];
		$_SESSION['admin_id'] = $username;
		$_SESSION['aname']  = $row['aname'];
		header("location:admin_dashboard.");

	}else{
		$_SESSION['error'] = "Wrong Password";
		header("location:admin_login.php");
	}

}else
{
	$_SESSION['error'] = "Wrong User ID";
	header("location:admin_login.php");
}
?>