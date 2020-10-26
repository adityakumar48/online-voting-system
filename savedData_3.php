<?php
$name = $_REQUEST['txtName'];
$email   = $_REQUEST['txtEmail'];
$number = $_REQUEST['txtNumber'];
$candi = $_REQUEST['txtCand'];
$rollno =  $_REQUEST['txtRollNo'];
$reason =  $_REQUEST['txtReason'];
$Branch =  $_REQUEST['txtBranch'];





//database connection
include('dbConnect.php');

$sql = "INSERT into users_3rd(name,email,Branch,number,candidate,rollno,reason) values(:name,:email,:Branch,:number,:candidate,:rollno,:reason)";

$stmt = $pdo->prepare($sql);

$stmt->bindParam(":name",$name);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":Branch",$Branch);
$stmt->bindParam(":number",$number);
$stmt->bindParam(":candidate",$candi);
$stmt->bindParam(":rollno",$rollno);
$stmt->bindParam(":reason",$reason);

$stmt->execute();

header('location:successfully.php');

?>
