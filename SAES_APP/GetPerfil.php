<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "integradora_app";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT *,p.matricula FROM persona p, historial h WHERE p.matricula = h.matricula and usuario='Alumno'";
$result = $conn->query($sql);
$response = array();

if($result->num_rows > 0){
    while ($row = $result->fetch_assoc()){
        array_push($response,$row);
    }
}

$conn->close();
header('Content-Type: application/json');
echo json_encode($response);
?>