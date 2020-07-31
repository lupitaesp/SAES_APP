import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mail = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  Future<List> _login() async {
    final response =
        await http.post("http://192.168.0.108/SAES_APP/login.php", body: {
      "email": mail.text,
      "contrasena": pass.text,
    });
    var datauser = json.decode(response.body);
    if(datauser.length==0){
      setState(() {
        //Snackbar
      });
    }else{
      if(datauser[0]['USUARIO']=='Alumno'){
        print("BENVENIDO ALUMNO");
      }else if(datauser[0]['USUARIO']=='Doctora'){
        print("bienvenido doctora");
      }
    }
  }

  

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title:
            Text('INICIO DE SESIÓN', style: TextStyle(color: Colors.grey[600])),
        centerTitle: false,
        leading: IconButton(
          icon: Image.asset('assets/saes2.png'),
          onPressed: () {},
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
