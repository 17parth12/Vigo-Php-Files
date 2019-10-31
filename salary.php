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
$salary = [];
$sql = "SELECT * FROM salaries LEFT JOIN employee ON salaries.id = employee.id ";
$result = $conn->query($sql);
if($result->num_rows > 0)
{	
	$cr=0;
	while($row = $result->fetch_assoc())
	{
		//Fetch Records
		$salary[$cr]['position'] = $row['position'];
		$salary[$cr]['fname'] = $row['fname'];
		$salary[$cr]['lname'] = $row['lname'];
		$salary[$cr]['salary'] = $row['salary'];
		$salary[$cr]['level'] = $row['level'];
		$cr++;
	}
	 echo json_encode($salary);
}
else
{
	http_response_code(404);
}


?>