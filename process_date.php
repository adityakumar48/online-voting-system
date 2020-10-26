<?php
$date = $_REQUEST['txtDate'];




//database connection
include('dbConnect.php');

$sql = "INSERT into date(date) values(:date)";

$stmt = $pdo->prepare($sql);

$stmt->bindParam(":date",$date);



$stmt->execute();

header("location:admin_dashboard.php");


?>