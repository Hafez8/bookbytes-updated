<?php
//error_reporting(0);
if (!isset($_POST['email']) && !isset($_POST['name']) && !isset($_POST['password'])) {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die();
}

include_once("dbconnect.php");

$name = $_POST['name'];
$email = $_POST['email'];
$password = sha1($_POST['password']);
$user_type = $_POST['user_type'];

$sqlinsert = "INSERT INTO `tbl_users`(`user_email`, `user_name`, `user_password`, `user_type` ) VALUES ('$email','$name','$password','$user_type')";

if ($conn->query($sqlinsert) === TRUE) {
	$response = array('status' => 'success', 'data' => null);
    sendJsonResponse($response);
}else{
	$response = array('status' => 'failed', 'data' => null);
	sendJsonResponse($response);
}


function sendJsonResponse($sentArray)
{
    header('Content-Type: application/json');
    echo json_encode($sentArray);
}

?>