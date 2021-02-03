<?php 
header('Access-Control-Allow-Origin: *');

 require_once('../db/db_connect.php');
 $sql = "SELECT COUNT(*) as total FROM jobs ";
 $obj = new stdClass();

 $result = mysqli_query($concompany, $sql);
 while($row = $result->fetch_array())
  {  
	$temp =  new StdClass();
    $temp->jobs =  $row['total'];
	 
  }

 $sql = "SELECT count(DISTINCT company) as total FROM jobs ";
 $result = mysqli_query($concompany, $sql);
 while($row = $result->fetch_array())
 {  
    $temp->companies =  $row['total'];
    $obj->total = $temp; 
 }
 $result->close();
  echo json_encode($obj); 
?>
