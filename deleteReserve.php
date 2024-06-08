<?php
session_start();
$db = new mysqli('localhost', 'root', '', 'sanggardb');

if ($db->connect_errno) {
    echo "Failed to connect to MySQL: " . $db->connect_error;
    exit();
}

// Get the name of the client from the URL parameter
$clientName = $_GET['client_name'];

// Prepare the SQL statement to delete the reservation based on the client name
$sql = "DELETE reservations, clients FROM reservations
        INNER JOIN clients ON reservations.client_id = clients.client_id
        WHERE clients.client_name = ?";
$stmt = $db->prepare($sql);
$stmt->bind_param('s', $clientName);
$stmt->execute();

if ($stmt->affected_rows > 0) {
    header('Location: tableReserve.php');
    exit;
} else {
    echo "Error deleting record: " . $db->error;
}

$stmt->close();
$db->close();
?>