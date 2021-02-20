<?php 
 header('Access-Control-Allow-Origin: *');
 require_once('../db/db_connect.php');
 $sql = "SELECT  company,link FROM companies";
 
 $obj = new stdClass();
 $obj->companies=array();
 $result = mysqli_query($concompany, $sql);
 while($row = $result->fetch_array())
  {  
 	$temp =  new StdClass();
    $temp->company =  $row['company'];
	$temp->link =  $row['link'];
	 $obj->companies[] = $temp; 
}
$result->close();
echo json_encode($obj); 
?>
