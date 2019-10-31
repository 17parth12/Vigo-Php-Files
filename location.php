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