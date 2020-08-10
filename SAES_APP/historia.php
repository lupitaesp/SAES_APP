<?php
    //CONECTAR CON EL SERVIDOR 
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "integradora_app";
    $table = "historial"; 
 
    //This command came from the app, you will see it soon 
    $action = $_POST["action"];
     
    // Create Connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    } 
    //FECHA DE HISTORIA

    //ANTECEDENTES HEREDOFAMILIARES
   /* $cardicas=$_POST['heredofamiliares1'];
    $hipertension=$_POST['heredofamiliares2'];
    $convulsiones=$_POST['heredofamiliares3'];
    $cancer=$_POST['heredofamiliares4'];
    $mentales=$_POST['heredofamiliares5'];
    $diabetes=$_POST['heredofamiliares6'];
    $alergias=$_POST['heredofamiliares7'];
    $tuberculosis=$_POST['heredofamiliares8'];

    //PERSONALES NO PATOLOGICOS
    $vacunas_recientes=$_POST['vacunas'];
    $cual_deporte=$_POST['cuales_deportes'];
    $veces_semana=$_POST['veces_semana'];
    $edad_inicio_fumar=$_POST['edad_inicio_F'];
    $cigarros_semana=$_POST['cigarros_semana'];
    $edad_inicio_bebidas=$_POST['edad_inicio_B'];
    $cantidad_semana=$_POST['cantidad_semanal'];
    $edad_inicio_drogas=$_POST['edad_inicio_D'];
    $veces_semana_drogas=$_POST['veces_semana_D'];

    //ANTECEDENTES QUIRURGICOS
    $fecha_cirujia=$_POST['fecha_cirugia'];
    $tipo_cirujia=$_POST['tipo_cirugia'];
    $institucion=$_POST['institucion'];

    //ANTECEDENTES ALERGICOS
    $medicamento_alergia=$_POST['medicamento_alergia'];

    //ANTECEDENTES TRAUMATICOS
    $complicacion=$_POST['complicacion_accidente'];

    //ANTECEDENTES TRANSFUNCIOMALES
    $fecha_transfuncion=$_POST['fecha_transfusion'];
    $motivo_transfuncion=$_POST['motivo_transfusion'];

    //ENFERMEDADES
    $varicera=$_POST['enf_paceces1'];
    $tosferina=$_POST['enf_paceces2'];
    $sarampeon=$_POST['enf_paceces3'];
    $rubeola=$_POST['enf_paceces4'];
    $sinusitis=$_POST['enf_paceces5'];
    $paperas=$_POST['enf_paceces6'];
    $hepatitis=$_POST['enf_paceces7'];
    $tifoidea=$_POST['enf_paceces8'];
    $fiebre=$_POST['enf_paceces9'];
    $convulsiones_e=$_POST['enf_paceces10'];
    $parasitosis=$_POST['enf_paceces11'];
    $diabetes_e=$_POST['enf_paceces12'];
    $hipertension_e=$_POST['enf_paceces13'];
    $anemia=$_POST['enf_paceces14'];
    $e_cardiacas=$_POST['enf_paceces15'];
    $e_renales=$_POST['enf_paceces16'];

    //ANTECEDENTES GINECOBSTETRICOS
    $primer_menstruacion=$_POST['primer_menstruacion'];
    $cada_cuantos_dias=$_POST['dias_menstruacion'];
    $duracion=$_POST['duracion_menstruacion'];
    $veces=$_POST['veces_embarazo'];
    $metodo_planificacion=$_POST['cual_metodo'];
    $tiempo_papanicolaou=$_POST['tiempo_papanicolaou'];

    //TRATAMIENTO ACTUAL
    $tratamiento_actual=$_POST['tratamiento_actual'];*/
    if("INSERT_HISTORIAL" == $action){
        $matricula = $_POST['matricula'];
        $fecha_nac=$_POST['fecha_nac'];
        $edad=$_POST['edad'];
        $nss=$_POST['nss'];
        $lugar_residencia=$_POST['lugar_residencia'];
        $sql = "INSERT INTO $table (matricula,fecha_nac,edad,nss,lugar_residencia)
        VALUES('$matricula','$fecha_nac','$edad','$nss','$lugar_residencia')";
        $result = $conn->query($sql);
        echo "SI SE PUDO";            
        $conn->close();
        return;
    }
  





    //mysqli_close( $conexion );
?>