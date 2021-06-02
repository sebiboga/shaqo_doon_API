<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

function guid(){
        mt_srand((double)microtime()*10000);//optional for php 4.2.0 and up.
        $charid = strtoupper(md5(uniqid(rand(), true)));
        $hyphen = chr(45);// "-"
        $uuid = 
		     substr($charid, 0, 8).$hyphen
            .substr($charid, 8, 4).$hyphen
            .substr($charid,12, 4).$hyphen
            .substr($charid,16, 4).$hyphen
            .substr($charid,20,12)
            ;
        return $uuid;
}

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
 $obj->api_key  =  guid();


if (valid_token(get_token()))
{
	
$server = "localhost";
$database = "shaqodoo_jobs";
$username = "shaqodoo_infopower";
$password = "ramona2@1";

$concompany = mysqli_connect($server,$username,$password,$database) or die( mysql_error() );
 if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 $sql = "UPDATE companies SET API_key = '$obj->api_key' WHERE token='".get_token()."'";}
      else {
	if ($_SERVER['REQUEST_METHOD'] == 'GET') {	  
	$sql = "SELECT API_key FROM  companies  WHERE token='".get_token()."'";
	$result = mysqli_query($concompany, $sql);
	 while($row = $result->fetch_array())
     {     $obj->api_key =  $row['API_key'];   }
	}
	  }
 
 //need to remove the connection string from here and add get them from external file [todo]
 echo $obj->api_key;
mysqli_query($concompany, $sql);
mysqli_close($concompany);
}


?>
