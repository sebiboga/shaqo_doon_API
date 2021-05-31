<?php 
header('Access-Control-Allow-Origin: *');

function get_token() {
   $headers= array();
   $headers = getallheaders();
     if (isset($headers['token']))
       return $headers['token'];
      else 
		   return null;
 } 
 
 function valid_token($token) {
	$sql = "SELECT `id` FROM `companies` WHERE token ='".$token."'";
    
$server = "localhost";
$database = "shaqodoo_jobs";
$username = "shaqodoo_infopower";
$password = "ramona2@1";
$concompany = mysqli_connect($server,$username,$password,$database) or die( mysql_error() );
	
    $result = mysqli_query($concompany, $sql);
	
   while($row = $result->fetch_array())
     {     $id =  $row['id'];   }
  if (isset($id)) {  return true;} else {return false;}
}



 $obj = new stdClass();
 $obj = new stdClass();
 $obj->api_key    = $_POST['api_key'];


if (valid_token(get_token()))
{
	
$server = "localhost";
$database = "shaqodoo_jobs";
$username = "shaqodoo_infopower";
$password = "ramona2@1";

$concompany = mysqli_connect($server,$username,$password,$database) or die( mysql_error() );
 $sql = "UPDATE companies SET API_key = '$obj->api_key' WHERE token='".get_token()."'";
 
 //need to remove the connection string from here and add get them from external file [todo]

mysqli_query($concompany, $sql);
mysqli_close($concompany);
}


?>
