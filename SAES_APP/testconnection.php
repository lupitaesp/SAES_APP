<?php

//conexion a la base
$user='m96ys5gz3t32wggt';
$password='aqbaxonic6fsb0ww';
$servername='qbct6vwi8q648mrn.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
$port=3306;
$database='xbn8rx8v91ae9ejx';

$conexion = mysqli_connect($servername,$user,$password,$database,$port) or die ("No se ha podido conectar");

// Check connection
if ($conexion->connect_error) {
  die("Connection failed: " . $conexion->connect_error);
}
echo "Conectado";

?>