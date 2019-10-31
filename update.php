<?php 
require 'conn.php';

// Get the posted data.

$postdata = file_get_contents("php://input");

if(isset($postdata) && !empty($postdata))
{
	
	$request = json_decode($postdata);
	
	//Sanatize.
	$id = mysqli_real_escape_string($conn, (int)$_GET['id']);
	$fname = ucfirst(mysqli_real_escape_string($conn,trim($request->fname)));
	$lname = ucfirst(mysqli_real_escape_string($conn,trim($request->lname)));
	$email = mysqli_real_escape_string($conn,$request->email);
	$phone = mysqli_real_escape_string($conn,trim($request->phone));
	$position = ucfirst(mysqli_real_escape_string($conn,trim($request->position)));
	
	//Update record.
	$sql = "UPDATE employee SET fname='$fname', lname='$lname', email='$email', phone='$phone', position='$position' 
 	WHERE id='{$id}' LIMIT 1";
	
	if(mysqli_query($conn, $sql))
	{
		http_response_code(204);
	}
	else
	{
	  return http_response_code(422);	
	}
	
}

?>