<?php
header('Access-Control-Allow-Origin: *');

function get_token() {
   $headers = array();
   $headers = getallheaders();
     if (isset($headers['token']))
       return $headers['token'];
     else
        return "jhdkfjjgkdjgfhgdhghj";
 }

function update_company($token) {
    if($token) {
    require_once('../db/db_connect.php');

        $sql = "SELECT * FROM companies";
        $result = mysqli_query($concompany, $sql);
		$records_found = mysqli_num_rows($result);
		//echo "no: " . var_dump($records_found);

         while($row = $result->fetch_array())
          {
            $obj = new stdClass();
            if (isset($_POST['company']) && isset($_POST['link'])) {
                $obj->company = $_POST['company'];
                $obj->link = $_POST['link'];
                $second_sql = "UPDATE companies SET company='".$obj->company."', link='".$obj->link."' WHERE token ='".$token."'";
                $final_result = mysqli_query($concompany, $second_sql);
                echo '{"message":"Information updated!"}';
            }
            return;
           }
          echo '{"message":"Could not update the data"}';

    }

    echo '{"message":"Authentication token does not exist"}';
}

echo (update_company(get_token()));
mysqli_close($concompany);
?>