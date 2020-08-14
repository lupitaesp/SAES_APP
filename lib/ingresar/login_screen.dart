import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:saes/principal/principal.dart';
import 'package:saes/usuarios/alumno/alumno.dart';
import 'package:saes/usuarios/doctora/doctora.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

String nombre = '';
String ape_pat = '';
String ape_mat = '';
String matricula = '';
String carrera = '';
String grupo = '';
String telefono = '';
String email = '';
String foto = '';

class _LoginPageState extends State<LoginPage> {
  TextEditingController mail = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  final formkey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Future<List> _login() async {
    final response =
        await http.post("http://192.168.43.106/SAES_APP/login.php", body: {
      "email": mail.text,
      "contrasena": pass.text,
    });
    var datauser = json.decode(response.body);
    if (datauser.length == 0) {
      setState(() {
        _showScaffold('Datos Vacíos');
      });
    } else {
      if (datauser[0]['usuario'] == 'Alumno') {
        print("BENVENIDO ALUMNO");
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => Alumno(
                      nombre: nombre,
                      ape_pat: ape_pat,
                      ape_mat: ape_mat,
                      matricula: matricula,
                      carrera: carrera,
                      grupo: grupo,
                      telefono: telefono,
                      email: email,
                      foto: foto,
                    )));
      } else if (datauser[0]['usuario'] == 'Doctora') {
        print("BIENVENIDO DOCTORA");
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => Doctora(
                    nombre: nombre,
                    ape_pat: ape_pat,
                    ape_mat: ape_mat,
                    email: email,
                    telefono: telefono,
                    foto: foto)));
      }
      setState(() {
        nombre = datauser[0]['nombre'];
        ape_pat = datauser[0]['ape_pat'];
        ape_mat = datauser[0]['ape_mat'];
        matricula = datauser[0]['matricula'];
        carrera = datauser[0]['carrera'];
        grupo = datauser[0]['grupo'];
        telefono = datauser[0]['telefono'];
        email = datauser[0]['email'];
        foto = datauser[0]['foto'];
      });
    }
    return datauser;
  }

  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.indigo,
    ));
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title:
            Text('INICIO DE SESIÓN', style: TextStyle(color: Colors.grey[600])),
        centerTitle: false,
        leading: IconButton(
          icon: Image.asset('assets/saes2.png'),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => Principal()));
          },
        ),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.only(top: 3, right: 32),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              //Cuadro de arriba
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/utec.png'),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green, Color(0xff6bceff)],
                  ),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(90))),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 40, right: 32),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 50,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 10)
                        ]),
                    child: TextField(
                      controller: mail,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.person,
                          color: Colors.indigo,
                        ),
                        hintText: 'E-mail',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.green,
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 40, right: 32),
                  ),
                  InkWell(
                    //Direccion de la pantalla de usuario
                    onTap: () {
                      _login();
                      print("FUNCIONANDO");
                    },
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width / 1.2,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue,
                              Colors.indigo,
                              Colors.green,
                            ],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Center(
                        child: Text(
                          'Login'.toUpperCase(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
