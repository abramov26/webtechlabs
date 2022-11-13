<?php
require_once './dbconnect.php';

if (!$dbconnect) die("Connection failed: " . mysqli_connect_error());
if(!isset($_GET['startId']) || !isset($_GET['endId'])) die("Check if needed GET params passed");

$from = $_GET['startId'];
$to = $_GET['endId'];

if ($from > $to) die("startId is bigger than endId!");

$result = $dbconnect->query("SELECT * FROM news LIMIT $from, $to");
$data = array();

while ( $row = $result->fetch_assoc())  {
	$data[]=$row;
}

header('Content-Type: application/json; charset=utf-8');
echo json_encode($data);
?>