<?php

include("dbConnect.php");



$sql = "SELECT candidate,count(*) as result from  `users` group by candidate";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$rs =  $stmt->fetchAll();



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style>
    .card-5{
        border: 2px black solid;
        padding: 30px;
        margin-top:5%;
        width:70%;
        margin-left:auto;
        margin-right:auto;
        
    }
    #footersection{
        margin-top:18%;
    }
    </style>
</head>
<body>
    
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card-5">
            <h2><strong>Result</strong></h2>
            <hr>
        <?php foreach($rs as $row){
  
 
  echo "<strong>".$row['candidate']." = ".$row['result']." </strong><br>";
  echo "
  <div class='progress'>
    <div class='progress-bar progress-bar-striped bg-success progress-bar-animated' role='progressbar' aria-valuenow=".$row['candidate']." aria-valuemin=\"0\" aria-valuemax=\"1000\" style='width: ".$row['result']."%'>
    </div>
  </div>
  ";
}
?>

        </div>
    </div>
</div>

</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
<?php
include("footer.html");
?>