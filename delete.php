<?php 
require 'conn.php';
$id=$_GET['id'];
//Delete record.
 $sql = "DELETE FROM employee WHERE id ='{$id}' LIMIT 1";
 

if(mysqli_query($conn,$sql))
{
	http_response_code(204);
}
else
{
	return http_response_code(422);
}
?>