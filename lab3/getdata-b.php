<?php
require_once 'dbconnect.php';
if (!$dbconnect) {
	die("Connection failed: " . mysqli_connect_error());
}

if ($dbconnect->connect_errno) {
	printf("Failed to connect to database");
	exit();
}

$result = $dbconnect->query("SELECT * FROM comments");
$data = array();

while ( $row = $result->fetch_assoc())  {
	$data[]=$row;
}

$result2 = $dbconnect->query("SELECT COUNT(*) FROM comments");
$comments_count = $result2->fetch_row()[0];

$data["comments_count"]= $comments_count;

header('Content-Type: application/json; charset=utf-8');
echo json_encode($data);
?>