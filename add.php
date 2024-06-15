<?php

$db = new mysqli('localhost', 'root', '', 'sanggardb');

if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

if (isset($_POST['send'])) {
    $cartName = $db->real_escape_string($_POST['name']);
    $cartPrice = doubleval($_POST['price']);
    $cartQuantity = intval($_POST['quantity']);
    $tableNum = $_POST['table'];

    $newPrice = $cartPrice * $cartQuantity;

    $checkQuery = "SELECT * FROM $tableNum WHERE NAME = '$cartName'";
    $checkResult = $db->query($checkQuery);

    if ($checkResult->num_rows > 0) {
        header('location: cart.php');
        exit(); 
    }

    $insertQuery = "INSERT INTO $tableNum (NAME, QUANTITY, PRICE) VALUES ('$cartName', $cartQuantity, $newPrice)";

    if ($db->query($insertQuery) === TRUE) {
        header('location: menuCust.php');
        exit();
    } else {
        echo "Error: " . $insertQuery . "<br>" . $db->error;
    }
}

$db->close();

?>
