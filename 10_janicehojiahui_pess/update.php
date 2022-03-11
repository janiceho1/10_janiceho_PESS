<?php
require_once "db.php";
 $isBtnSearchClicked = isset($POST["btnSearch"]);
$car = null;
$statuses = [];
 if($isBtnSearchClicked == true){
	 $carId = $_POST["patrolCarId"];
	 //echo 'You have search car id:' . $carId;
	 $sql = "SELECT * FROM `patrolcar` WHERE `patrolcar_id` ='". $carId . "'";
	 $conn = new mysqli(DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE);
	 $result = $conn->query($sql);
	 if($row = $result ->fetch_assoc()){
		 $carId = $row ["patrolcar_id"];
		 $statusId = $row["patrolcar_status_id"];
		 $car = ["id" => $carId, "statusId"=> $statusId];
	 }
	 $conn = new mysqli(DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE);
	 $sql = "SELECT * FROM patrolcar_status";
	 $result =$conn->query($sql);
	 while($row = $result->fetch_assoc()){
		 $id = $row["patrolcar_id"];
		 $title = $row["patrolcar_status_desc"];
		 $status = ["id"=>$id, "title"=>$title];
		 array_push($statuses,$status);
}
	 $conn->close();
	  
 }

$btnUpdateClicked = isset($_POST["btnUpdate"]);
if($btnUpdateClicked == true){
	$updateSuccess = false;
	$conn = new mysqli(DB_SERVER,DB_USER,DB_PASSWORD,DB_DATABASE);
	$newStatusId = $_POST["carStatus"];
	$carId = $_POST["patrolCarId"];
	
	$sql = "UPDATE `patrolcar` SET `patrolcar_status_id`=" . $newStatusId . " WHERE `patrolcar_id`='". $carId . "'";
	
	$updateSuccess = $conn->query($sql); 
	
	if($updateSuccess == false){
	echo "Error: " . $sql ."<br>" .$conn->error;
		}
	if($newStatusId == 4){//arrived
		$sql = "UPDATE `dispatch` SET `time_arrived`=now() WHERE time_arrived is null and patrolcar_id ='" . $carId . "'";
		$updateSuccess =$conn ->query($sql);
		if ($updateSuccess ==false){
			echo "Error:" .$sql . "<br>" .$conn->error;
		}
	}
else if($newStatusId == 3){
	$sql = "SELECT `incident_id` FROM `dispatch` WHERE `time_completed` is null and `patrolcar_id` ='" . $carId . "'";
	$result =$conn->query($sql);
	$incidentId = 0;
	if($result ->num_rows > 0) {
		if($row = $result->fetch_assoc()){
			$incidentId = $row["incident_id"];
			
		}
	}
	$sql = "UPDATE `dispatch` SET `time_completed`= now() WHERE time_completed is null and patrolcar_id ='" . $carId ."'";
	$updateSuccess = $conn->query($sql);
	
if ($updateSuccess == false){
	echo "Error:" . $sql . "<br>" . $conn->error;
}
	$sql = "UPDATE 'incident' SET 'incident_status_id' = 3 WHERE incident_id ='". $incidentId . "'";
	$updateSuccess = $conn ->query($sql);
	
	if($updateSuccess == false){
		echo "Error:" . $sql . "<br>" . $conn->error;
	}
	
}
	$conn ->close();
	if($updateSuccess == true){
	header("location:search.php");
}
}

?>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">	
<title>Update Patrol Car</title>
<link rel="stylesheet" href="css/bootstrap-4.3.1.css" type="text/css">
</head>

<body>
<div class="container" style="width: 900px">
   <?php
	include "header.php";
	?>
	<section class="mt-3">
	 <form action="update.php" method="post">
		 <?php
		 if($car != null){
			echo '<div class=\"form-group row\">';
            echo '<label for=\"patrolCarId\" class=\"col-sm-4 col-form-label\">Patrol Car Number</label>';
            echo '<div class=\"col-sm-8\">';
			echo $car['id'];
			echo '<input type= "hidden" id="patrolCarId" name="patrolCarId" value="'. $car['id'] .'">';
			echo '</div>';
			echo '</div>';
		 }
         else {
			 echo '<div class=\"form-group row\">';
			 echo '<div class="col-sm-12">No record found.</div>';
			 echo '</div>';
		 } 
            
            
		 ?>
         
        </form>
		
	</section>
	 <?php
	include "footer.php";
	?>
</div>
	
<script src="../js/jquery-3.4.1.min.js"></script> 
<script src="../js/popper.min.js"></script> 
<script src="../js/bootstrap-4.4.1.js"></script>
</body>
</html>
