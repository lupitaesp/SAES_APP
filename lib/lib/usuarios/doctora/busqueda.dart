import 'package:saes/operaciones/Registrar.dart';
import 'package:saes/operaciones/convertidor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Busqueda extends StatefulWidget {
  @override
  _myHomePageState createState() => new _myHomePageState();
}


class _myHomePageState extends State<Busqueda> {
  //get fechStudent => null;
  String searchString = "";
  bool _isSearching = false;
  TextEditingController searchController = TextEditingController();




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
        backgroundColor: Colors.grey[400],
       // centerTitle: true,
        automaticallyImplyLeading: false,
        title: _isSearching ? TextField(
          decoration: InputDecoration(
              hintText: "Buscando..."),
          onChanged: (value) {
            setState(() {
              searchString = value;
            });
          },
          controller: searchController,
        )
            :Text("Buscar usuario",
         style: TextStyle(color: Colors.grey[600]),
         
        ),
         leading: IconButton(
          icon: Image.asset('assets/saes2.png'),
          onPressed: () {
           
          },
        ),
        actions: <Widget>[
          !_isSearching ? IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              setState(() {
                searchString = "";
                this._isSearching = !this._isSearching;
              });
            },
          )
              :IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              setState(() {
                this._isSearching = !this._isSearching;
              });
            },
          )
         ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: FutureBuilder(
            future: fetchStudent(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              // print(fetchStudent());
              if (snapshot.hasData) {
                return  ListView.builder(
                  itemCount: snapshot.data.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                      Registrar perfil = snapshot.data[index];
                    return snapshot.data[index].matricula.contains(searchController.text)
                    ? ListTile(
                      leading: CircleAvatar(
                        minRadius: 30.0,
                        maxRadius: 30.0,
                        backgroundColor: Colors.white,
                        backgroundImage: Convertir.imageFromBase64sString(   '${perfil.foto}',).image,
                      ),
                      title: new Text(
                          '${perfil.nombre}'+" " '${perfil.ape_pat}'+" "+ '${perfil.ape_mat}',
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
                      onTap: (){
                            //  Navigator.push(context,
                               // new MaterialPageRoute(builder: (context)=> DetailPage(snapshot.data[index])));
                            },
                    )
                    :Container();
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

















