<?php
 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "integradora_app";
    $table = "persona"; 
 
    //This command came from the app, you will see it soon 
    $action = $_POST["action"];
     
    // Create Connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    } 
    // If connection is OK...
    
    //Save Data

    if("INSERT_DATA" == $action){
       //$cve_persona = $_POST["cve_personas"];
       $matricula = $_POST["matricula"];
       $nombre = $_POST["nombre"];
       $ape_pat = $_POST["ape_pat"];
       $ape_mat = $_POST["ape_mat"];
       $email = $_POST["email"];
       $carrera = $_POST["carrera"];
       $grupo = $_POST["grupo"];
       $telefono = $_POST["telefono"];
       $sexo = $_POST["sexo"];
       $contrasena = $_POST["contrasena"];
       $sql = "INSERT INTO $table (matricula,nombre,ape_pat,ape_mat,email,carrera,grupo,telefono,sexo,contrasena)
       VALUES('$matricula','$nombre','$ape_pat','$ape_mat','$email','$carrera','$grupo','$telefono','$sexo','$contrasena')";
       $result = $conn->query($sql);
       echo "success";            
       $conn->close();
       return;
   }
   //Update y Delete 

    ?>