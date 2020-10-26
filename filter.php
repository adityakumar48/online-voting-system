<?php session_start();


	include('dbConnect.php');
	$sql = "SELECT candidate,count(candidate) from users group by candidate";

	$stmt = $pdo->prepare($sql);
	$stmt->execute();

	$rs =  $stmt->fetchAll();

	echo "
		<table border='2'>
			<tr>
				<th>Sno.</th>

				<th>Vote</th>
				
			</tr>
	";
	$i = 1;
	foreach($rs as $row){
		$uid = $row['candidate'];
		echo "
		<tr>
			<td>".$i."</td>
			
			
			<td>".$row['candidate']."</td>
		
			
        </tr>
		";
		$i++;
	}
	echo "</table>";
    ?>
        </div>
            </div>
        </div>
    </section>

     