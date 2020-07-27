import 'dart:convert';
import 'package:http/http.dart' as http;
import 'Registrar.dart';

class BDConnections {
  //Direccion IPv4 de la computadora (Se encuentra con el comando "ipconfig")
  static const SERVER = "http://192.168.0.109/SAES_APP/sqloperations.php";
  static const _SELECT_TABLE_COMMAND = "SELECT_TABLE";
  static const _INSERT_DATA_COMMAND = "INSERT_DATA";

  //Get Data from
  static Future<List<Registro>> selectData() async {
    try {
      //Mapeamos para comparar
      var map = Map<String, dynamic>();
      map['action'] = _SELECT_TABLE_COMMAND;
      //Body es lo que estamos mapeando
      final response = await http.post(SERVER, body: map);
      print('SELECT response: ${response.body}');
      if (200 == response.statusCode) {
        //Mapear la lista
        List<Registro> list = parseResponse(response.body);
        return list;
      } else {
        return List<Registro>();
      }
    } catch (e) {
      print("Error getting datafrom SQL Server");
      print(e.toString());
      return List<Registro>();
    }
  }

  //ParseResponse Method
  static List<Registro> parseResponse(String responseBody) {
    final parseData = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parseData.map<Registro>((json) => Registro.fromJson(json)).toList();
  }

  //INSERT DATA ON DB
  static Future<String> insertData(
      String matricula,
      String nombre,
      String ape_pat,
      String ape_mat,
      String email,
      String carrera,
      String grupo,
      String telefono,
      String sexo,
      String contrasena) async {
    try {
      //Mapeamos para comparar
      var map = Map<String, dynamic>();
      map['action'] = _INSERT_DATA_COMMAND;
      map['matricula'] = matricula;
      map['nombre'] = nombre;
      map['ape_pat'] = ape_pat;
      map['ape_mat'] = ape_mat;
      map['email'] = email;
      map['carrera'] = carrera;
      map['grupo'] = grupo;
      map['telefono'] = telefono;
      map['sexo'] = sexo;
      map['contrasena'] = contrasena;

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
