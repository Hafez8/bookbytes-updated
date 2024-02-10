<?php


include 'db_connection.php';


if (isset($_POST['userId'], $_POST['currentPassword'], $_POST['newPassword'])) {
    $userId = mysqli_real_escape_string($conn, $_POST['userId']);
    $currentPassword = mysqli_real_escape_string($conn, $_POST['currentPassword']);
    $newPassword = mysqli_real_escape_string($conn, $_POST['newPassword']);


    $query = "SELECT * FROM users WHERE id = '$userId' AND password = '$currentPassword'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        $updateQuery = "UPDATE users SET password = '$newPassword' WHERE id = '$userId'";
        if (mysqli_query($conn, $updateQuery)) {
            echo json_encode(array('success' => true, 'message' => 'Password updated successfully'));
        } else {
            echo json_encode(array('success' => false, 'message' => 'Password update failed'));
        }
    } else {
        echo json_encode(array('success' => false, 'message' => 'Incorrect current password'));
    }
} else {
    echo json_encode(array('success' => false, 'message' => 'Invalid parameters'));
}

mysqli_close($conn);

?>