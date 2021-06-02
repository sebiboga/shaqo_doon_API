<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

function get_token() {
   $headers= array();
   $headers = getallheaders();
     if (isset($headers['token']))
       return $headers['token'];
      else 
		   return null;
 }   

function get_user($token) {
	$sql = "SELECT `id`,`company`,`link`,`API_key` FROM `companies` WHERE token ='".$token."'";
    require_once('../db/db_connect.php');
    $result = mysqli_query($concompany, $sql);
	
	$obj = new stdClass();
    
 
 while($row = $result->fetch_array())
  {  
	
    $obj->id =  $row['id'];
	$obj->company   =  $row['company'];
	$obj->link   =  $row['link'];
	$obj->token   =  $row['API_key'];
  }
  
  return json_encode($obj);
}


echo (get_user(get_token()));

?>