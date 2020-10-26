<?php
$name = $_REQUEST['txtName'];
$email   = $_REQUEST['txtEmail'];
$number = $_REQUEST['txtNumber'];
$rollno =  $_REQUEST['txtRollNo'];
$Suggestion =  $_REQUEST['txtSuggestion'];





//database connection
include('dbConnect.php');

$sql = "INSERT into suggestion(name,email,number,rollno,suggestion) values(:name,:email,:number,:rollno,:suggestion)";

$stmt = $pdo->prepare($sql);

$stmt->bindParam(":name",$name);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":number",$number);
$stmt->bindParam(":rollno",$rollno);
$stmt->bindParam(":suggestion",$Suggestion);

$stmt->execute();


header('location: successfully.php');

?> 