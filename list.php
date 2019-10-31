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
$employee = [];
$sql = "SELECT * FROM employee";
$result = $conn->query($sql);
if($results = mysqli_query($conn,$sql))
{
	$cr=0;
	while($row = $result->fetch_assoc())
	{
		//Fetch Records
		$employee[$cr]['id'] = $row['id'];
		$employee[$cr]['fname'] = $row['fname'];
		$employee[$cr]['lname'] = $row['lname'];
		$employee[$cr]['email'] = $row['email'];
		$employee[$cr]['phone'] = $row['phone'];
		$employee[$cr]['position'] = $row['position'];
		$cr++;
	}
	 echo json_encode($employee);
	 
}
else
{
	http_response_code(404);
}


?>