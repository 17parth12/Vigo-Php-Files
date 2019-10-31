<?php 
require 'conn.php';
$postdata = file_get_contents("php://input");

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata);
	//Sanatize.
	$phone = ucfirst(mysqli_real_escape_string($conn,trim($request->phone)));
	$postcode = ucfirst(mysqli_real_escape_string($conn,trim($request->postcode)));
	$address = mysqli_real_escape_string($conn,$request->address);
	$city = mysqli_real_escape_string($conn,trim($request->city));
	
	//Insert record.
	
	$sql3 = "SELECT * FROM office2 where postcode='$postcode' LIMIT 1";
	
  /*  This code will check if record is already in the table 
    
    $check = $conn->query($sql3);
	$checkrows=mysqli_num_rows($check);
      if($checkrows>0) {
      echo "customer exists";
     } else {  } */
   

	$sql = "INSERT INTO office2 (phone, postcode, address, city)
VALUES ('$phone', '$postcode', '$address', '$city')";

	if(mysqli_query($conn,$sql))
	{
		http_response_code(201);
	}
	else
	{
		http_response_code(422);
	}
	
   
}
?>