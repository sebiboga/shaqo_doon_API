<?php 
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

 /* prepare the id for each row in the database; id is a GUID */
$message = new stdClass();

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
				$message -> message = "success";
				$message -> token = $row['token'];
				echo json_encode($message);
			}
			else {
				 http_response_code(401);
				$message -> message = "Email or password incorrect!";
				
				echo json_encode($message);

				

			} 
			
			mysqli_close($concompany);
				
			}
		}
	}
}

?>


