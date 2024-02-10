<?php

include('db_connection.php');

$userId = $_POST['userId'];
$newPassword = $_POST['newPassword'];

if (empty($userId) || empty($newPassword)) {
    echo json_encode(['status' => 'error', 'message' => 'Invalid input']);
    exit();
}
$hashedPassword = password_hash($newPassword, PASSWORD_DEFAULT);
$updateQuery = "UPDATE users SET userpassword = '$hashedPassword' WHERE userid = '$userId'";

if (mysqli_query($conn, $updateQuery)) {
    echo json_encode(['status' => 'success', 'message' => 'Password updated successfully']);
} else {
    echo json_encode(['status' => 'error', 'message' => 'Failed to update password']);
}
mysqli_close($conn);
?>
