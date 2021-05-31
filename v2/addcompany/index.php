<?php 
header('Access-Control-Allow-Origin: *');
 /* prepare the id for each row in the database; id is a GUID */
 require_once('../../db/db_connect.php');
 
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
    
    $result = mysqli_query($concompany, $sql);
	
   while($row = $result->fetch_array())
     {     $id =  $row['id'];   }
  if (isset($id)) {  return true;} else {return false;}
}


 $id = guid();
 $obj = new stdClass();
 $obj->id = $id;
 $obj = new stdClass();
 $obj->company = $_POST['company'];
  $obj->link    = $_POST['link'];


if (valid_token(get_token()))
{
 $sql = "UPDATE companies SET company = '$obj->company',link='$obj->link' WHERE token='".get_token()."'";

mysqli_query($concompany, $sql);
}
mysqli_close($concompany);

?>
