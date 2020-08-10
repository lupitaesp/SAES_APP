import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Registrar.dart';
import 'package:saes/ingresar/registro.dart';

class BDConnections2 {
  //Direccion IPv4 de la computadora (Se encuentra con el comando "ipconfig")
  static const SERVER = "http://192.168.0.106/SAES_APP/historia.php";
  //static const _SELECT_TABLE_COMMAND = "SELECT_TABLE";
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
      String lugar_residencia) async {
    try {
      //Mapeamos para comparar
      var map = Map<String, dynamic>();
      map['action'] = _HISTORIA_DATA_COMMAND;
      map['matricula'] = matricula;
      map['fecha_nac'] = fecha_nac;
      map['nss'] = nss;
      map['edad'] = edad;
      map['lugar_residencia'] = lugar_residencia;

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
