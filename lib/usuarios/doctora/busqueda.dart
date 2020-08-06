import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:saes/operaciones/Registrar.dart';
import 'package:saes/operaciones/convertidor.dart';

class Select extends StatelessWidget {
  //get fechStudent => null;

  Future<List<Registrar>> fetchStudent() async {
    String url = "http://192.168.0.106/SAES_APP/GetPerfil.php";
    try {
      final response = await http.get(url);
      // print('ListView response: ${response.body}');
      //  return studentFromJson(response.body);
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
    return parseData.map<Registrar>((json) => Registrar.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: FutureBuilder(
            future: fetchStudent(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              // print(fetchStudent());
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    Registrar perfil = snapshot.data[index];
                    return ListTile(
                      leading: CircleAvatar(
                        minRadius: 30.0,
                        maxRadius: 30.0,
                        backgroundColor: Colors.white,
                        backgroundImage: Convertir.imageFromBase64sString(   '${perfil.foto}',).image,
                      ),
                      title: new Text(
                          '${perfil.nombre}',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      subtitle: new Text(
                         '${perfil.matricula}',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      /* onTap: (){
                              Navigator.push(context,
                                new MaterialPageRoute(builder: (context)=> DetailPage(snapshot.data[index])));
                            },*/
                    );
                  },
                );
              }
              return Container(
                  child: Center(
                child: CircularProgressIndicator(),
              ));
            },
          ),
        ),
      ),
    );
  }

  
}