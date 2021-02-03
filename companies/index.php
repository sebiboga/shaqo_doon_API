<?php 
 header('Access-Control-Allow-Origin: *');
 require_once('../db/db_connect.php');
 $sql = "SELECT DISTINCT company, count(id) as total FROM jobs group by company ORDER BY total DESC";
 
 $obj = new stdClass();
 $obj->companies=array();
 $result = mysqli_query($concompany, $sql);
 while($row = $result->fetch_array())
  {  
 	$temp =  new StdClass();
    $temp->company =  $row['company'];
	$temp->jobs =  $row['total'];
	$temp->link = "https://api.shaqodoon.ro/jobs/?company=".urlencode($temp->company);
	 $obj->companies[] = $temp; 
}
$result->close();
echo json_encode($obj); 
?>
