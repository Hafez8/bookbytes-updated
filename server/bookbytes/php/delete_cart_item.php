<?php

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Check if necessary parameters are set
    if (!isset($_POST['cart_id'])) {
        $response = array('status' => 'failed', 'data' => 'Missing parameters');
        sendJsonResponse($response);
        exit();
    }

    include_once("dbconnect.php");

    $cartId = $_POST['cart_id'];

    $sqlDelete = "DELETE FROM `tbl_carts` WHERE `cart_id` = '$cartId'";

    if ($conn->query($sqlDelete) === TRUE) {
        $response = array('status' => 'success', 'data' => null);
        sendJsonResponse($response);
    } else {
        $response = array('status' => 'failed', 'data' => 'Failed to delete item');
        sendJsonResponse($response);
    }
} else {
    $response = array('status' => 'failed', 'data' => 'Invalid request method');
    sendJsonResponse($response);
}

function sendJsonResponse($sentArray)
{
    header('Content-Type: application/json');
    echo json_encode($sentArray);
}

?>