<?php
    //CONECTAR CON EL SERVIDOR 
    $user='m96ys5gz3t32wggt';
    $password='aqbaxonic6fsb0ww';
    $servername='qbct6vwi8q648mrn.cbetxkdyhwsb.us-east-1.rds.amazonaws.com';
    $port=3306;
    $database='xbn8rx8v91ae9ejx';

    $conn = mysqli_connect($servername,$user,$password,$database,$port) or die ("No se ha podido conectar");

    $table="historial";
 
    //This command came from the app, you will see it soon 
    $action = $_POST["action"];

    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    } 

    if("INSERT_HISTORIAL" == $action){
        $matricula = $_POST['matricula'];
        $fecha_nac=$_POST['fecha_nac'];
        $edad=$_POST['edad'];
        $nss=$_POST['nss'];
        $lugar_residencia=$_POST['lugar_residencia'];
        $e_cardicas = $_POST['e_cardicas'];
        $hipertension = $_POST['hipertension'];
        $cancer = $_POST['cancer'];
        $e_mentales = $_POST['e_mentales'];
        $diabetes = $_POST['diabetes'];
        $e_alergicas = $_POST['e_alergicas'];
        $tuberculosis = $_POST['tuberculosis'];
        $vacunas_recientes = $_POST['vacunas_recientes'];
         $practicas_deporte = $_POST['practicas_deporte'];
         $cual_deporte = $_POST['cual_deporte'];
         $cuantas_veces_deporte = $_POST['cuantas_veces_deporte'];
         $fumas = $_POST['fumas'];
         $edad_inicio_f = $_POST['edad_inicio_f'];
         $cigarros_a_la_semana = $_POST['cigarros_a_la_semana'];
         $bebidas_alcoholicas = $_POST['bebidas_alcoholicas'];
         $edad_inicio_a = $_POST['edad_inicio_a'];
         $cantidad_por_semana = $_POST['cantidad_por_semana'];
         $drogas = $_POST['drogas'];
         $edad_inicio_d = $_POST['edad_inicio_d'];
         $cuantas_veces_d = $_POST['cuantas_veces_d'];
         $cirujia = $_POST['cirujia'];
         $fecha_cirujia = $_POST['fecha_cirujia'];
         $tipo_cirujia = $_POST['tipo_cirujia'];
         $institucion = $_POST['institucion'];
         $alergias = $_POST['alergias'];
         $medicamentos = $_POST['medicamentos'];
         $accidente = $_POST['accidente'];
         $secuelas_accidente = $_POST['secuelas_accidente'];
         $fracturas = $_POST['fracturas'];
         $complicaciones = $_POST['complicaciones'];
         $cual_complicacion = $_POST['cual_complicacion'];
         $transfuncion_sanguinea = $_POST['transfuncion_sanguinea'];
         $fecha_transfucion = $_POST['fecha_transfucion'];
         $motivo = $_POST['motivo'];
         $varicela = $_POST['varicela'];
         $tosferina = $_POST['tosferina'];
         $sarampion = $_POST['sarampion'];
         $rubeola = $_POST['rubeola'];
         $sinusitis = $_POST['sinusitis'];
         $paperas = $_POST['paperas'];
         $hepatitis = $_POST['hepatitis'];
         $tifoidea = $_POST['tifoidea'];
         $fiebre_reumatica = $_POST['fiebre_reumatica'];
         $convulciones = $_POST['convulciones'];
         $parasitos = $_POST['parasitos'];
         $diabetis_mellitus = $_POST['diabetis_mellitus'];
         $hipertension_arterial = $_POST['hipertension_arterial'];
         $anemia = $_POST['anemia'];
         $enf_cardiacas = $_POST['enf_cardiacas'];
         $enf_renales = $_POST['enf_renales'];
         $edad_de_primer_periodo = $_POST['edad_de_primer_periodo'];
         $periodo_regular = $_POST['periodo_regular'];
         $dias_de_duracion = $_POST['dias_de_duracion'];
         $cada_cuantos_dias = $_POST['cada_cuantos_dias'];
         $embarazos = $_POST['embarazos'];
         $cuantas_veces_emb = $_POST['cuantas_veces_emb'];
         $parto = $_POST['parto'];
         $cesarea = $_POST['cesarea'];
         $aborto = $_POST['aborto'];
         $legrado = $_POST['legrado'];
         $metodo_de_planificacion = $_POST['metodo_de_planificacion'];
         $cual_metodo = $_POST['cual_metodo'];
        // $papanicolao = $_POST['papanicolao'];
        // $tiempo_de_hacerlo = $_POST['tiempo_de_hacerlo'];
         $descripcion_tratamiento = $_POST['descripcion_tratamiento'];
         $nombre1 = $_POST['nombre1'];
         $parentesco1 = $_POST['parentesco1'];
         $direccion1 = $_POST['direccion1'];
         $telefono1 = $_POST['telefono1'];
         $nombre2 = $_POST['nombre2'];
         $parentesco2 = $_POST['parentesco2'];
         $direccion2 = $_POST['direccion2'];
         $telefono2 = $_POST['telefono2'];
         $sql = "INSERT INTO $table (matricula,fecha_nac,edad,nss,lugar_residencia,e_cardicas,hipertension, cancer, e_mentales, diabetes, e_alergicas, tuberculosis,
          vacunas_recientes,practicas_deporte, cual_deporte, cuantas_veces_deporte, fumas, edad_inicio_f, cigarros_a_la_semana, bebidas_alcoholicas, edad_inicio_a, cantidad_por_semana, drogas, edad_inicio_d, cuantas_veces_d,
          cirujia,fecha_cirujia,tipo_cirujia, institucion, 
          alergias,medicamentos,
          accidente,secuelas_accidente, fracturas, complicaciones, cual_complicacion,
          transfuncion_sanguinea,fecha_transfucion, motivo,
          varicela, tosferina,sarampion, rubeola, sinusitis
          ,paperas, hepatitis, tifoidea, fiebre_reumatica, convulciones, parasitos, diabetis_mellitus,
           hipertension_arterial, anemia, enf_cardiacas, enf_renales,
          edad_de_primer_periodo,periodo_regular, dias_de_duracion, cada_cuantos_dias, embarazos, cuantas_veces_emb
          , parto, cesarea, aborto, legrado, metodo_de_planificacion, cual_metodo,
          descripcion_tratamiento,
          nombre1, parentesco1, direccion1, telefono1, nombre2, parentesco2, direccion2, telefono2)
          VALUES('$matricula','$fecha_nac','$edad','$nss','$lugar_residencia','$e_cardicas','$hipertension','$cancer', '$e_mentales','$diabetes','$e_alergicas','$tuberculosis'
        ,'$vacunas_recientes','$practicas_deporte','$cual_deporte','$cuantas_veces_deporte','$fumas','$edad_inicio_f','$cigarros_a_la_semana','$bebidas_alcoholicas','$edad_inicio_a','$cantidad_por_semana','$drogas',
        '$edad_inicio_d','$cuantas_veces_d','$cirujia','$fecha_cirujia','$tipo_cirujia','$institucion',
        '$alergias','$medicamentos','$accidente','$secuelas_accidente','$fracturas','$complicaciones','$cual_complicacion',
        '$transfuncion_sanguinea','$fecha_transfucion','$motivo','$varicela','$tosferina','$sarampion','$rubeola',
        '$sinusitis','$paperas','$hepatitis','$tifoidea','$fiebre_reumatica','$convulciones','$parasitos','$diabetis_mellitus'
        ,'$hipertension','$anemia','$enf_cardiacas','$enf_renales','$edad_de_primer_periodo','$periodo_regular','$dias_de_duracion','$cada_cuantos_dias',
        '$embarazos','$cuantas_veces_emb','$parto','$cesarea','$aborto','$legrado','$metodo_de_planificacion','$cual_metodo',
        '$descripcion_tratamiento',
        '$nombre1','$parentesco1','$direccion1','$telefono1','$nombre2','$parentesco2','$direccion2','$telefono2')";
        $result = $conn->query($sql);
        echo "SI SE PUDO";            
        $conn->close();
        return;
    }
?>