<?php
$servername = "localhost";
$username   = "infnidrc_admin";
$password   = "muhammad0hafiz8#";
$dbname     = "infnidrc_bookbytes";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>