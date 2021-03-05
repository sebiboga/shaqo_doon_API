<?php 
header('Access-Control-Allow-Origin: *');
 require_once('../db/db_connect.php');
 $sql = "SELECT * FROM jobs ";
 
 $where = array();
 
 
 if(isset($_GET['city']))
  if ($_GET['city']!="") 
 {
	 $city = $_GET['city'];
	 $where[]= "city='$city'";
 }

 if(isset($_GET['country']))
    if($_GET['country']!="") 
 {
	 $country = $_GET['country'];
	 $where[]= "country='$country'";
 }
 
 if (isset($_GET['company'])) 
   if ($_GET['company']!="") 
 {
	 $company = $_GET['company'];
	 $where[]= "company='$company'";
 }
 
 if (isset($_GET['q'])) 
	 if ($_GET['q']!="")
	 {
	  $q = $_GET['q'];
//	  $where[]= "q='$q'";
	 }
 
 $sqlwhere=' WHERE ';
 $i=0;
 foreach($where as $item)
 {  $i++;
    if ($i<count($where))
	 $sqlwhere.=$item." AND ";
	 else 
	 $sqlwhere.=$item." ";
	 
 }
 
 $sql.=$sql.$sqlwhere;
 
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
