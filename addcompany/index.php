<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

 /* prepare the id for each row in the database; id is a GUID */
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




 
 //citesc token din header
 // in REQUEST HEADER astept o keye: token cu valoarea: primita la login
 //   token: XXXXX-XXXXX-XXXXX-XXXXX
 //compar tokenul in baza de date daca exista
 //daca exista -- update in loc de INSERT
 
 
 
 
 
 $id = guid();
 $obj = new stdClass();
 $obj->id = $id;
 $obj = new stdClass();
 $obj->company = $_POST['company'];
  $obj->link    = $_POST['link'];


if ($_POST['action']=='insert')
{

require_once('../db/db_connect.php');


 $sql = "INSERT INTO companies (id,company,link) VALUES ('$id','$obj->company','$obj->link')";


mysqli_query($concompany, $sql);
mysqli_close($concompany);
}
?>
