<?php
    
    $email=$_POST['email'];
    $contrasena=$_POST['contrasena'];
    
    //conexion a la base
    $user='m96ys5gz3t32wggt';
    $password='aqbaxonic6fsb0ww';
    $servername='qbct6vwi8q648mrn.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
    $port=3306;
    $database='xbn8rx8v91ae9ejx';

    $conn = mysqli_connect($servername,$user,$password,$database,$port) or die ("No se ha podido conectar");

    $table = "persona"; 
 
    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    } 

    $queryResult=$conn->query("SELECT * FROM persona WHERE email='".$email."' AND contrasena='".$contrasena."'");
    
    $result=array();

    while($fetchData=$queryResult->fetch_assoc()){
        $result[]=$fetchData;
    }

    echo json_encode($result);

    ?>