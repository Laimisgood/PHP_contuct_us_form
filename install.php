<?php

$server = "localhost";
$username = "user_sql";
$password = "password_sql";
$database = "contactusform";

$connection = mysqli_connect($server, $username, $password);
if ($connection) {
    $db_create = "CREATE DATABASE contactusform;";
    mysqli_query($connection, $db_create);
    echo "Database created successfuly!";
    echo "<br>";
} else {
    die("Connection failed: " . mysqli_connect_error());
}
mysqli_close($connection);

$mysqli = mysqli_connect($server, $username, $password, $database);
if (!$mysqli) {
    die("Connection failed: " . mysqli_connect_error());
}

$create_table = "CREATE TABLE users(
    id INT(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    surname VARCHAR(30) NOT NULL,
    gender CHAR(1) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(256) NOT NULL,
    message VARCHAR(500) NOT NULL,
    image VARCHAR(5000) NOT NULL,
    feedback CHAR(1) NOT NULL)";

if (mysqli_query($mysqli, $create_table)) {
    echo "Table created successfuly!";
    echo "<br>";
} else {
    die("Table create failed: " . mysqli_error($mysqli));
}
mysqli_close($mysqli);
