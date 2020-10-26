<?php
$name = $_REQUEST['txtName'];
$email   = $_REQUEST['txtEmail'];
$number = $_REQUEST['txtNumber'];
$branch =  $_REQUEST['txtbranch'];
$rollno =  $_REQUEST['txtRollNo'];
$enroll =  $_REQUEST['txtEnrollID'];





//database connection
include('dbConnect.php');

$sql = "INSERT into candidate_2nd(name,email,mobile,branch,rollno,enrollid) values(:name,:email,:mobile,:branch,:rollno,:enrollid)";

$stmt = $pdo->prepare($sql);

$stmt->bindParam(":name",$name);
$stmt->bindParam(":email",$email);
$stmt->bindParam(":mobile",$number);
$stmt->bindParam(":branch",$branch);
$stmt->bindParam(":rollno",$rollno);
$stmt->bindParam(":enrollid",$enroll);

$stmt->execute();

header('location: pending.php');
?>
