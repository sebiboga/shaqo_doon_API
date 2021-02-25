<?php 
header('Access-Control-Allow-Origin: *');
 require_once('../db/db_connect.php');
 $sql = "SELECT * FROM jobs ";
 
 
 
 if(isset($_GET['city'])) 
 {
	 $city = $_GET['city'];

	 $sql .= "WHERE city= '$city'";
 }
 else
 if(isset($_GET['country'])) 
 {
	 $country = $_GET['country'];

	 $sql .= "WHERE country= '$country'";
 }
 else
 if (isset($_GET['company'])) {
	 $company = $_GET['company'];

	 $sql .= "WHERE company= '$company'";
 }
 
 
 
  if (isset($_GET['results'])) {
	 $results = $_GET['results'];

	 $sql .= " LIMIT $results";
 }
 
 
 $obj = new stdClass();
 $obj->jobs=array();
 $result = mysqli_query($concompany, $sql);
 while($row = $result->fetch_array())
  {  
	$temp =  new StdClass();
    $temp->company =  $row['company'];
	$temp->title   =  $row['title'];
	$temp->city    =  $row['city'];
	$temp->country    =  $row['country'];
	$temp->link    =  $row['link'];
	 $obj->jobs[] = $temp; 
}
 $result->close();
 echo json_encode($obj); 
?>
