<?php 
require_once('../db/db_connect.php');
 
if ($_POST['action']=='delete')
{
 $sql = "DELETE FROM jobs WHERE company ='Endava'";
 if (isset($_POST['company'])) {
	 $company = $_POST['company'];
	 $sql = "DELETE FROM jobs WHERE company ='$company'";}
}
if (mysqli_query($concompany, $sql)) {

  echo "deleted"; 
}
?>
