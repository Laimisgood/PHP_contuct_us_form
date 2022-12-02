<?php

require "connection.php";


if (isset($_GET['pageno'])) {
    $pageno = $_GET['pageno'];
} else {
    $pageno = 1;
}
$no_of_records_per_page = 5;
$offset = ($pageno-1) * $no_of_records_per_page;

$total_pages_sql = "SELECT COUNT(*) FROM users";
$result = mysqli_query($mysqli,$total_pages_sql);
$total_rows = mysqli_fetch_array($result)[0];
$total_pages = ceil($total_rows / $no_of_records_per_page);

$sql = "SELECT * FROM users LIMIT $offset, $no_of_records_per_page";
$res_data = mysqli_query($mysqli,$sql);
while($row = mysqli_fetch_array($res_data)){
    $users[] = $row;
}

mysqli_close($mysqli);

require 'result.html';