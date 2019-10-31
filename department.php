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

$department = [];
$sql = "SELECT * FROM employee LEFT JOIN department ON department.id = employee.id ";
$result = $conn->query($sql);
if($result->num_rows > 0)
{
	$cr=0;
	while($row = $result->fetch_assoc())
	{
		//Fetch Records
		$department[$cr]['fname'] = $row['fname'];
		$department[$cr]['lname'] = $row['lname'];
		$department[$cr]['dep_name'] = $row['dep_name'];
		$department[$cr]['start_date'] = $row['start_date'];	
		$cr++;
	}
	 echo json_encode($department);
}
else
{
	http_response_code(404);
}


?>