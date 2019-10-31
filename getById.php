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

$id=$_GET['id'];

//Selecting id record.
 $sql = "SELECT * FROM employee WHERE id = '{$id}' LIMIT 1";

$results = mysqli_query($conn,$sql);
$row = mysqli_fetch_assoc($results);

	
	 echo $json = json_encode($row);


?>