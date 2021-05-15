<?php 
header('Access-Control-Allow-Origin: *');
 /* prepare the id for each row in the database; id is a GUID */


if (isset($_POST['username'])) 
{

	if ($_POST['username']!='')
	{
		if (isset($_POST['password']))
		{
			if ($_POST['password']!='')
			{
				$obj = new StdClass(); 
				$obj->username = str_replace(" ", "", $_POST['username']);
				$obj->password = md5($_POST['password']);
				require_once('../db/db_connect.php');


			 $sql = "SELECT * FROM companies WHERE email='".$obj->username . "' AND passwd='".$obj->password."'";


			$result = mysqli_query($concompany, $sql);
			$records_found = mysqli_num_rows($result);
			
			if($records_found > 0) {
				$row = mysqli_fetch_array($result);
				echo '{message:"success", "token": "'.$row['token'].'"}';
			}
			else {
				echo $obj->username;
				echo '{message:"Email or password incorrect!"}';

			} 
			
			mysqli_close($concompany);
				/*

				if ($obj->username=="sebi@shaqodoon.ro" && $obj->password =='passwd') 
				{
					echo '{"message":"success", "token":"aaf14e57-3109-4e4d-9666-671aec0a68ef"}';
				}
				else {
				  	echo '{"message":"error", "reason":"credentials error"}';
				}
				*/
			}
		}
	}
}

?>


