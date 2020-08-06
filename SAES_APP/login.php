<?php
    
    $email=$_POST['email'];
    $contrasena=$_POST['contrasena'];
    
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "integradora_app";
    $table = "persona"; 
 

     
    // Create Connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    } 

    $queryResult=$conn->query("SELECT * FROM PERSONA WHERE email='".$email."' AND contrasena='".$contrasena."'");
    
    $result=array();

    while($fetchData=$queryResult->fetch_assoc()){
        $result[]=$fetchData;
    }

    echo json_encode($result);


 

    ?>