<?php 
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



function city_translate($city) {
    
    
    $result = $city;
    if ($city=='Brasov')        {$result = 'Brașov';}
    if ($city=='Iasi')          {$result = 'Iași';}
    if ($city=='Pitesti')       {$result = 'Pitești';}
    if ($city=='Chisinau')      {$result = 'Chișinău';}
    if ($city=='Bucharest')     {$result = 'București';}
    if ($city=='Targu Mures')   {$result = 'Târgu Mureș';}
    if ($city=='Targu-Mures')   {$result = 'Târgu Mureș';}
    if ($city=='Bucuresti')     {$result = 'București';}
    if ($city=='Galati')        {$result = 'Galați';}
    if ($city=='Timisoara')     {$result = 'Timișoara';}
    if ($city=='Brasov')        {$result = 'Brașov';}
    
    
    if ($city=='Balotesti')     {$result = 'Balotești';}
    
    
    return $result;
}
 
 
 
 
 
 function country_translate($country) {
    
    $result = $country;
    if ($country=='Romania') {$result = 'România';}
    
    return $result;
}
 
 
 
 $id = guid();
 $obj = new stdClass();
 $obj->id = $id;
 $obj = new stdClass();
 $obj->company = $_POST['company'];
 $obj->title   = $_POST['title'];
 $obj->city    = city_translate($_POST['city']);
 $obj->country    = country_translate($_POST['country']);
 $obj->link    = $_POST['link'];
 $obj->key    = $_POST['APIKey'];

if ($obj->key=='53d0ac1a-966c-4093-89a1-4dcad57e8de5')
 echo 'Esti meseriash';
 
if ($_POST['action']=='insert')
{

require_once('../db/db_connect.php');


 $sql = "INSERT INTO jobs (id,company,title,city,country,link) VALUES ('$id','$obj->company','$obj->title','$obj->city','$obj->country','$obj->link')";


mysqli_query($concompany, $sql);
mysqli_close($concompany);
}
?>
