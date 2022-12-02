<?php

$server = "localhost";
$username = "user_sql";
$password = "password_sql";
$database = "contactusform";

$mysqli = mysqli_connect($server, $username, $password, $database);
if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
}
