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

$manager = [];
$sql = "SELECT * FROM manager RIGHT JOIN employee ON manager.id = employee.id LEFT JOIN department ON department.id = employee.id";
$result = $conn->query($sql);
if($result->num_rows > 0)
{
	$cr=0;
	while($row = $result->fetch_assoc())
	{
		//Fetch Records
		$manager[$cr]['dep_name'] = $row['dep_name'];
		$manager[$cr]['fname'] = $row['fname'];
		$manager[$cr]['lname'] = $row['lname'];
		$manager[$cr]['f_name'] = $row['f_name'];
		$manager[$cr]['l_name'] = $row['l_name'];
		$cr++;
	}
	 echo json_encode($manager);
}
else
{
	http_response_code(404);
}


?>