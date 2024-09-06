<?php
$servername = "localhost";
$database = "Prueba";
$username = "usuarioPD";
$password = "Dietas2024";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
//echo "Connected successfully";
//mysqli_close($conn);
?>