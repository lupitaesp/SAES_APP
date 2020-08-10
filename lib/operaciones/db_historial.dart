import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Registrar.dart';
import 'package:saes/ingresar/registro.dart';

class BDConnections2 {
  //Direccion IPv4 de la computadora (Se encuentra con el comando "ipconfig")
  static const SERVER = "http://192.168.0.106/SAES_APP/historia.php";
  static const _HISTORIA_DATA_COMMAND = "INSERT_HISTORIAL";
  //Get Data from
  /* static Future<List<Registrar>> selectData() async {
    try {
      //Mapeamos para comparar
      var map = Map<String, dynamic>();
      map['action'] = _SELECT_TABLE_COMMAND;
      //Body es lo que estamos mapeando
      final response = await http.post(SERVER, body: map);
      print('SELECT response: ${response.body}');
      if (200 == response.statusCode) {
        //Mapear la lista
        List<Registrar> list = parseResponse(response.body);
        return list;
      } else {
        return List<Registrar>();
      }
    } catch (e) {
      print("Error getting datafrom SQL Server");
      print(e.toString());
      return List<Registrar>();
    }
  }

  //ParseResponse Method
  static List<Registrar> parseResponse(String responseBody) {
    final parseData = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parseData
        .map<Registrar>((json) => Registrar.fromJson(json))
        .toList();
  }*/

  //INSERT DATA ON DB

  static Future<String> historiaData(
    String matricula,
    String fecha_nac,
    String nss,
    String edad,
    String lugar_residencia,
    
    String e_cardicas,
    String hipertension,
    String convulsiones,
    String cancer,
    String e_mentales,
    String diabetes,
    String e_alergicas,
    String tuberculosis,

    String vacunas_recientes,
    String practicas_deporte,
    String cual_deporte,
    String cuantas_veces_deporte,
    String fumas,
    String edad_inicio_f,
    String cigarros_a_la_semana,
    String bebidas_alcoholicas,
    String edad_inicio_a,
    String cantidad_por_semana,
    String drogas,
    String edad_inicio_d,
    String cuantas_veces_d,

    String cirujia,
    String fecha_cirujia,
    String tipo_cirujia,
    String institucion,

    String alergias,
    String medicamentos,

    String accidente,
    String secuelas_accidente,
    String fracturas,
    String complicaciones,
    String cual_complicacion,

    String transfuncion_sanguinea,
    String fecha_transfucion,
    String motivo,

    String varicela,
    String tosferina,
    String sarampion,
    String rubeola,
    String sinusitis,
    String paperas,
    String hepatitis,
    String tifoidea,
    String fiebre_reumatica,
   // String convulciones,
    String parasitos,
    String diabetis_mellitus,
    String hipertension_arterial,
    String anemia,
    String enf_cardiacas,
    String enf_renales,

    String edad_de_primer_periodo,
    String periodo_regular,
    String dias_de_duracion,
    String cada_cuantos_dias,
    String embarazos,
    String cuantas_veces_emb,
    String parto,
    String cesarea,
    String aborto,
    String legrado,
    String metodo_de_planificacion,
    String cual_metodo,
   // String papanicolau,
    String tiempo_de_hacerlo,

    String descripcion_tratamiento,

    String nombre1,
    String parentesco1,
    String direccion1,
    String telefono1,
    String nombre2,
    String parentesco2,
    String direccion2,
    String telefono2,
      ) async {
    try {
      //Mapeamos para comparar
      var map = Map<String, dynamic>();
      map['action'] = _HISTORIA_DATA_COMMAND;
      map['matricula'] = matricula;
      map['fecha_nac'] = fecha_nac;
      map['nss'] = nss;
      map['edad'] = edad;
      map['lugar_residencia'] = lugar_residencia;

      map['e_cardicas'] = e_cardicas;
      map['hipertension'] = hipertension;
      map['convulsiones'] = convulsiones;
      map['cancer'] = cancer;
      map['e_mentales'] =  e_mentales;
      map['diabetes'] = diabetes;
      map['e_alergicas'] = e_alergicas;
      map['tuberculosis'] = tuberculosis;

     map['vacunas_recientes'] = vacunas_recientes;
     map['practicas_deporte'] = practicas_deporte;
     map['cual_deporte'] = cual_deporte;
     map['cuantas_veces_deporte'] = cuantas_veces_deporte;
     map['fumas'] = fumas;
     map['edad_inicio_f'] = edad_inicio_f;
     map['cigarros_a_la_semana'] = cigarros_a_la_semana;
     map['bebidas_alcoholicas'] = bebidas_alcoholicas;
     map['edad_inicio_a'] = edad_inicio_a;
     map['cantidad_por_semana'] = cantidad_por_semana;
     map['drogas'] = drogas;
     map['edad_inicio_d'] = edad_inicio_d;
     map['cuantas_veces_d'] = cuantas_veces_d;

     map['cirujia'] = cirujia;
     map['fecha_cirujia'] = fecha_cirujia;
     map['tipo_cirujia'] = tipo_cirujia;
     map['institucion'] = institucion;

     map['alergias'] = alergias;
     map['medicamentos'] = medicamentos;

     map['accidente'] = accidente;
     map['secuelas_accidente'] = secuelas_accidente;
     map['fracturas'] = fracturas;
     map['complicaciones'] = complicaciones;
     map['cual_complicacion'] = cual_complicacion;

     map['transfuncion_sanguinea'] = transfuncion_sanguinea;
     map['fecha_transfucion'] = fecha_transfucion;
     map['motivo'] = motivo;

     map['varicela'] = varicela;
     map['tosferina'] = tosferina;
     map['sarampion'] = sarampion;
     map['rubeola'] = rubeola;
     map['sinusitis'] = sinusitis;
     map['paperas'] = paperas;
     map['hepatitis'] = hepatitis;
     map['tifoidea'] = tifoidea;
     map['fiebre_reumatica'] = fiebre_reumatica;
     //map['convulciones'] = convulciones;
     map['parasitos'] = parasitos;
     map['diabetis_mellitus'] = diabetis_mellitus;
     map['hipertension_arterial'] = hipertension_arterial;
     map['anemia'] = anemia;
     map['enf_cardiacas'] = enf_cardiacas;
     map['enf_renales'] = enf_renales;

     map['edad_de_primer_periodo'] = edad_de_primer_periodo;
     map['periodo_regular'] = periodo_regular;
     map['dias_de_duracion'] = dias_de_duracion;
     map['cada_cuantos_dias'] = cada_cuantos_dias;
     map['embarazos'] = embarazos;
     map['cuantas_veces_emb'] = cuantas_veces_emb;
     map['parto'] = parto;
     map['cesarea'] = cesarea;
     map['aborto'] = aborto;
     map['legrado'] = legrado;
     map['metodo_de_planificacion'] = metodo_de_planificacion;
     map['cual_metodo'] = cual_metodo;
    // map['papanicolau'] = papanicolau;
     map['tiempo_de_hacerlo'] = tiempo_de_hacerlo;

     map['descripcion_tratamiento'] = descripcion_tratamiento;

     map['nombre1'] = nombre1;
     map['parentesco1'] = parentesco1;
     map['direccion1'] = direccion1;
     map['telefono1'] = telefono1;
     map['nombre2'] = nombre2;
     map['parentesco2'] = parentesco2;
     map['direccion2'] = direccion2;
     map['telefono2'] = telefono2;

      //Body es lo que estamos mapeando
      final response = await http.post(SERVER, body: map);
      print('INSERT response: ${response.body}');

      if (200 == response.statusCode) {
        print("Sucess");
        return response.body;
      } else {
        return "Error";
      }
    } catch (e) {
      print("Error getting datafrom SQL Server");
      print(e.toString());
      return "Error";
    }
  }
}
