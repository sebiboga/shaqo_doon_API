<?php 
header('Access-Control-Allow-Origin: *');
 /* prepare the id for each row in the database; id is a GUID */


//echo $_POST['username'];


if ($_POST['username']) {
	if ($_POST['username']!='')
	{
	   if ($_POST['password'])
	   {
		   if ($_POST['password']!='')
		   
{


  $obj = new StdClass();
  $obj->username = $_POST['username'];
  $obj->password    = $_POST['password'];
  
require_once('../db/db_connect.php');


 $sql = "SELECT * FROM companies WHERE email= AND passwd= ";


mysqli_query($concompany, $sql);
mysqli_close($concompany);


if ($obj->username=="sebi@shaqodoon.ro" && $obj->password =='passwd') {echo '{"message":"success", "token":"aaf14e57-3109-4e4d-9666-671aec0a68ef"}';}
  else 
	  echo '{"message":"error", "reason":"credentials error"}';
}
  else 
	   echo '{"message":"error", "reason":"credentials error"}';
	   }
	    else 
	    echo '{"message":"error", "reason":"credentials error"}';
	} 
	 else 
	   echo '{"message":"error", "reason":"credentials error"}';
}  else 
	   echo '{"message":"error", "reason":"credentials error"}';

?>
