import 'package:flutter/material.dart';
import 'package:saes/ingresar/login_screen.dart';
import 'package:saes/ingresar/registro.dart';

class Principal extends StatefulWidget{
  @override
  _Principal createState()=> new _Principal();
}

class _Principal extends State<Principal>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('SAES', style: TextStyle(color: Colors.green)),
        centerTitle: false,
        leading: IconButton(
            icon: Icon(Icons.home, color:Colors.indigo),
            onPressed: () { },
          ),
      ),
      body: new Container(
            decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  new Padding(padding: EdgeInsets.all(30.0)),
                  Text('Universidad Tecnológica de Tulancingo', style: TextStyle(fontSize: 23)),
                  Image.asset('assets/Halcon.png'),
                  new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.keyboard_arrow_right, color:Colors.grey[600]),
                              onPressed: (){},
                      ),
                      new Text('Seleccione una opción:', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                      new Divider(
                        color: Colors.black,
                        indent: 75,
                        endIndent: 75,
                        thickness: 2.0
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        textColor: Colors.white,
                        color: Colors.green,
                        child: new Text('    Registrar    '),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Registro()),
                          );
                        },
                        shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      ),
                      MaterialButton(
                        textColor: Colors.white,
                        color: Colors.indigo,
                        child: new Text('Iniciar Sesión'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        shape:
                          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      ),
                    ],
                  ),
          ],
        ),
      )
    );
  }
}
