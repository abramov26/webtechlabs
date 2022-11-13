<?php
require_once './dbconnect.php';

if (isset($_POST['username']) && isset($_POST['comment']) && isset($_POST['created_at'])) {

	$username = trim(htmlspecialchars($_POST['username']));
	$comment = trim(htmlspecialchars($_POST['comment']));
	$created_at = trim(htmlspecialchars($_POST['created_at']));

} else {
	mysqli_close($dbconnect);
	header('Location: index.html');
	exit;
}

$sql = "INSERT INTO comments 
(id, username, message, created_at) 
VALUES (NULL, '$username', '$comment', '$created_at')";

if (mysqli_query($dbconnect, $sql)) {
	echo "New record created successfully";
} else {
	echo "Error: " . $sql . "<br>" . mysqli_error($dbconnect);
	mysqli_close($dbconnect);
	exit;
}

?>