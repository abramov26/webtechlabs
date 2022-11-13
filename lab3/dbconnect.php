<?php

define("DATABASE_HOST", "mysql");
define("DATABASE_USER", "wtlabsuser");
define("DATABASE_PASSWORD", "wtlabspassword");
define("DATABASE_NAME", "webtechlabs");

$dbconnect = mysqli_connect(DATABASE_HOST, DATABASE_USER, DATABASE_PASSWORD, DATABASE_NAME);

if($dbconnect === false){
    die("ERROR: Could not connect. " . $dbconnect->connect_error);
}

?>