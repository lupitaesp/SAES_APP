<?php

    //CONECTAR CON EL SERVIDOR 
    $usuario = "root";
    $contrasena = "";
    $servidor = "localhost";
    $basededatos = "integradora_app";
    
    //VERIFICAR LA CONEXION A LA BASE DE DATOS
    $conexion = mysqli_connect( $servidor,$usuario,$contrasena,$basededatos) or die ("No se ha podido conectar al servidor de Base de datos");
    $db = mysqli_select_db( $conexion, $basededatos ) or die ( "Upps! Pues siempre no quizo conectar a la base de datos" );

    //RECUPERAR VARIABLES
    //$PERSONA = $_POST['CLAVE_PERSONA']; //// CLAVE DE PERSONA    ////   CHECAR 

    //FECHA DE HISTORIA
    $fecha=$_POST['fecha'];

    //ANTECEDENTES HEREDOFAMILIARES
    $cardicas=$_POST['heredofamiliares1'];
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
    $tratamiento_actual=$_POST['tratamiento_actual'];



    //EJECUCION DE SENTENCIA EN SQL

    $sql_historia="INSERT INTO HISTORIA_CLINICA (FECHA) VALUES ('$fecha')";
    $ejecutar1=mysqli_query($conexion,$sql_historia); 

    $sql_heredofamiliares="INSERT INTO HEREDOFAMILIARES (CANCER,CONVULSIONES,HIPERTENSION,E_CARDICAS,E_MENTALES,DIABETES,
    E_ALERGICAS,TUBERCULOSIS) VALUES ('$cardicas','$hipertension','$convulsiones','$cancer','$mentales','$diabetes','$alergias','$tuberculosis')";
    $ejecutar2=mysqli_query($conexion,$sql_heredofamiliares);

    $sql_no_patologicos="INSERT INTO PERSONALES_NO_PATOLOGICOS  (VACUNAS_RECIENTES,CUAL_DEPORTE,CUANTAS_VECES,EDAD_INICIO_F,
    CIGARROS_A_LA_SEMANA,EDAD_INICIO_A,CANTIDAD_POR_SEMANA,EDAD_INICIO_D,CUANTAS_VECES_D) VALUES ('$vacunas_recientes',
    '$cual_deporte','$veces_semana','$edad_inicio_fumar','$cigarros_semana','$edad_inicio_bebidas','$cantidad_semana',
    '$edad_inicio_drogas','$veces_semana_drogas')";
    $ejecutar3=mysqli_query($conexion,$sql_no_patologicos); 

    $sql_quirurgicos="INSERT INTO ANTECEDENTES_QUIRURGICOS (TIPO_CIRUJIA,FECHA_CIRUJIA,INSTITUCION) VALUES ('$tipo_cirujia',
    '$fecha_cirujia','$institucion')";
    $ejecutar4=mysqli_query($conexion,$sql_quirurgicos); 

    $sql_alergicos="INSERT INTO ANTECEDENTES_ALERGICOS (MEDICAMENTOS) VALUES ('$medicamento_alergia')";
    $ejecutar5=mysqli_query($conexion,$sql_alergicos);

    $sql_traumaticos="INSERT INTO ANTECEDENTES_TRAUMATICOS (CUAL_COMPLICACION) VALUES ('$complicacion')";
    $ejecutar6=mysqli_query($conexion,$sql_traumaticos);

    $sql_transfucionales="INSERT INTO ANTECEDENTES_TRANSFUNCIONALES (FECHA,MOTIVO) VALUES ('$fecha_transfuncion','$motivo_transfuncion')";
    $ejecutar7=mysqli_query($conexion,$sql_transfucionales); //CHECAR FECHA

    $sql_enfermedades="INSERT INTO ENFERMEDADES (VARICELA,TOSFERINA,SARAMPION,RUBEOLA,SINUSITIS,PAPERAS,HEPATITIS,TIFOIDEA,
    FIEBRE_REUMATICA,CONVULCIONES,PARASITOS,DIABETIS_MELLITUS,HIPERTENSION_ARTERIAL,ANEMIA,ENF_CARDIACAS,ENF_RENALES,
    TRATAMIENTO_MEDICO,TIPO_TRATAMIENTO) VALUES ('$varicera','$tosferina','$sarampeon','$rubeola','$sinusitis','$paperas',
    '$hepatitis','$tifoidea','$fiebre','$convulsiones_e','$parasitosis','$diabetes_e','$hipertension_e','$anemia','$e_cardiacas',
    '$e_renales')";
    $ejecutar8=mysqli_query($conexion,$sql_enfermedades);

    $sql_ginecobstetricos="INSERT INTO GINECOBSTETRICOS (EDAD_DE_PRIMER_PERIODO,DIAS_DE_DURACION,
    CADA_CUANTOS_DIAS,CUANTAS_VECES,CUAL_METODO,TIEMPO_DE_HACERLO) VALUES ('$primer_menstruacion','$duracion',
    '$cada_cuantos_dias','$veces','$metodo_planificacion','$tiempo_papanicolaou')";
    $ejecutar9=mysqli_query($conexion,$sql_ginecobstetricos);

    $sql_tratamiento="INSERT INTO TRATAMIENTO_HISTORIA (DESCRIPCION) VALUES ('$tratamiento_actual')";
    $ejecutar10=mysqli_query($conexion,$sql_tratamiento);


    //VERIFICAR CONEXION
    if(!$ejecutar1 and !$ejecutar2 and !$ejecutar3 and !$ejecutar4 and !$ejecutar5 and !$ejecutar6 and !$ejecutar7 and 
    !$ejecutar8 and !$ejecutar9 and !$ejecutar10){
        echo "Hubo un error en la ejecucion";
    }else{
        echo "Datos guardados correctamente<br><a href='historia.html'>Volver</a>";
    }

    //mysqli_close( $conexion );
?>