<?php 
require 'conn.php';
$postdata = file_get_contents("php://input");

if(isset($postdata) && !empty($postdata))
{
	$request = json_decode($postdata);
	//Sanatize.
	$fname = ucfirst(mysqli_real_escape_string($conn,trim($request->fname)));
	$lname = ucfirst(mysqli_real_escape_string($conn,trim($request->lname)));
	$email = mysqli_real_escape_string($conn,$request->email);
	$phone = mysqli_real_escape_string($conn,trim($request->phone));
	$position = ucfirst(mysqli_real_escape_string($conn,trim($request->position)));
	$postcode = ucfirst(mysqli_real_escape_string($conn,trim($request->postcode)));
	
	//Insert record in employee table
	$sql = "INSERT INTO employee (fname, lname, email, phone, position, cmppost)
VALUES ('$fname', '$lname', '$email', '$phone', '$position', '$postcode')";


//This query is used to get records (phone, postcode, address, city) from office2 table 
$sql3 = "SELECT * FROM office2 where postcode='$postcode' LIMIT 1";
$result = $conn->query($sql3);
if($results = mysqli_query($conn,$sql3))
{
	$cr=0;
	while($row = $result->fetch_assoc())
	{
		//Fetch Records
		$phone = $row['phone'];
		$postcode = $row['postcode'];
		$address = $row['address'];
		$city = $row['city'];
		$cr++;
		$sql2 = "INSERT INTO office (cmp_phone, postcode, addr, city)
VALUES ('$phone', '$postcode', '$address', '$city')";

if(mysqli_query($conn,$sql) & mysqli_query($conn,$sql2) )
	{
		http_response_code(201);
	}
	else
	{
		http_response_code(422);
	}
		
	}
	 
}
   
}
?>















<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vigo";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$location = [];
$sql = "SELECT * FROM office2";
$result = $conn->query($sql);
if($results = mysqli_query($conn,$sql))
{
	$cr=0;
	while($row = $result->fetch_assoc())
	{
		//Fetch Records
		$location[$cr]['phone'] = $row['phone'];
		$location[$cr]['postcode'] = $row['postcode'];
		$location[$cr]['address'] = $row['address'];
		$location[$cr]['city'] = $row['city'];
		
		$cr++;
	}
	 echo json_encode($location);
	 
}
else
{
	http_response_code(404);
}


?>