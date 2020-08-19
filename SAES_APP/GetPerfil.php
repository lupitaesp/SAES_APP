<?php

$user='m96ys5gz3t32wggt';
$password='aqbaxonic6fsb0ww';
$servername='qbct6vwi8q648mrn.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
$port=3306;
$database='xbn8rx8v91ae9ejx';

$conn = mysqli_connect($servername,$user,$password,$database,$port) or die ("No se ha podido conectar");

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * ,p.matricula FROM persona p, historial h WHERE p.matricula = h.matricula and usuario = 'Alumno'";
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