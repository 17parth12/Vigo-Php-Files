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
$office = [];
$sql = "SELECT * FROM office LEFT JOIN employee ON office.id = employee.id";
$result = $conn->query($sql);
if($results = mysqli_query($conn,$sql))
{
	$cr=0;
	while($row = $result->fetch_assoc())
	{
		//Fetch Records
		$office[$cr]['fname'] = $row['fname'];
		$office[$cr]['lname'] = $row['lname'];
		$office[$cr]['cmp_phone'] = $row['cmp_phone'];
		$office[$cr]['postcode'] = $row['postcode'];
		$office[$cr]['addr'] = $row['addr'];
		$office[$cr]['city'] = $row['city'];
		$cr++;
	}
	 echo json_encode($office);
	 
}
else
{
	http_response_code(404);
}


?>