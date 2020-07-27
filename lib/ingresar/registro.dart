import 'package:flutter/material.dart';
import '../db_operations.dart';

void main() => runApp(new MaterialApp(
      home: new Registro(),
    ));

class Registro extends StatefulWidget {
  @override
  HomaPageState createState() => new HomaPageState();
}

class HomaPageState extends State<Registro> {
  List<Registro> _Registro;
  GlobalKey<ScaffoldState> _scaffoldKey;
  TextEditingController _matriculaConroller;
  TextEditingController _nombreConroller;
  TextEditingController _apepatConroller;
  TextEditingController _apematConroller;
  TextEditingController _emailConroller;
  TextEditingController _carreraConroller;
  TextEditingController _grupoConroller;
  TextEditingController _telefonoConroller;
  TextEditingController _sexoConroller;
  TextEditingController _contrasenaConroller;

  @override
  void initState() {
    super.initState();
    _Registro = [];
    _matriculaConroller = TextEditingController();
    _nombreConroller = TextEditingController();
    _apepatConroller = TextEditingController();
    _apematConroller = TextEditingController();
    _emailConroller = TextEditingController();
    _carreraConroller = TextEditingController();
    _grupoConroller = TextEditingController();
    _telefonoConroller = TextEditingController();
    _sexoConroller = TextEditingController();
    _contrasenaConroller = TextEditingController();
  }

  //INSERT DATA
  _insertData() {
    if (_matriculaConroller.text.isEmpty ||
        _nombreConroller.text.isEmpty ||
        _apepatConroller.text.isEmpty ||
        _apematConroller.text.isEmpty ||
        _emailConroller.text.isEmpty ||
        _carreraConroller.text.isEmpty ||
        _grupoConroller.text.isEmpty ||
        _telefonoConroller.text.isEmpty ||
        _sexoConroller.text.isEmpty ||
        _contrasenaConroller.text.isEmpty) {
      print("Empy fields");
      return;
    }
    //_showProgress('Adding Student...');
    BDConnections.insertData(
            _matriculaConroller.text,
            _nombreConroller.text,
            _apepatConroller.text,
            _apematConroller.text,
            _emailConroller.text,
            _carreraConroller.text,
            _grupoConroller.text,
            _telefonoConroller.text,
            _sexoConroller.text,
            _contrasenaConroller.text)
        .then((result) {
      if ('sucess' == result) {
        _matriculaConroller.text = "";
        _nombreConroller.text = "";
        _apepatConroller.text = "";
        _apematConroller.text = "";
        _emailConroller.text = "";
        _carreraConroller.text = "";
        _grupoConroller.text = "";
        _telefonoConroller.text = "";
        _sexoConroller.text = "";
        _contrasenaConroller.text = "";
        _clearValues();
      }
    });
  }

  //CLEAR TEXTFIELD VALUES
  _clearValues() {
    _matriculaConroller.text = "";
    _nombreConroller.text = "";
    _apepatConroller.text = "";
    _apematConroller.text = "";
    _emailConroller.text = "";
    _carreraConroller.text = "";
    _grupoConroller.text = "";
    _telefonoConroller.text = "";
    _sexoConroller.text = "";
    _contrasenaConroller.text = "";
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('REGISTRO DE USUARIO',
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold)),
        centerTitle: false,
        leading: IconButton(
          icon: Image.asset('assets/saes2.png'),
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: <Widget>[
              new Center(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/utec.png'),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Text(
                  "Favor de llenar los datos:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          new Divider(
              color: Colors.green[600],
              indent: 20,
              endIndent: 20,
              thickness: 3.0),
          Padding(
            padding: const EdgeInsets.all(1),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Padding(
                      //NOMBRE DE USUARIO
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 20.0, left: 20.0),
                            //NOMBRE
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar el nombre vacío'
                                  : null,
                              controller: _nombreConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person, color: Colors.green),
                                labelText: 'Nombre(s) del usuario',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          Container(
                            margin: EdgeInsets.only(right: 20.0, left: 0),
                            child: FloatingActionButton(
                              backgroundColor: Colors.blue[800],
                              onPressed: () {},
                              child: Icon(Icons.camera_alt),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      //APELLIDO PATERNO DE USUARIO
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 10.0, left: 20.0),
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar el apellido paterno vacío'
                                  : null,
                              controller: _apepatConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.people, color: Colors.green),
                                labelText: 'Apellido Paterno',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          //APELLIDO MATERNO
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 20.0, left: 10.0),
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar el apellido materno vacío'
                                  : null,
                              controller: _apematConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.people, color: Colors.green),
                                labelText: 'Apellido Materno',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          )),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      //MATRICULA
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 20.0, left: 20.0),
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar la matricula vacía'
                                  : null,
                              controller: _matriculaConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.important_devices,
                                    color: Colors.green),
                                labelText: 'Matricula',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    //CORREO ELECTRONICO
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 20.0, left: 20.0),
                              child: TextFormField(
                                controller: _emailConroller,
                                validator: (valor) => !valor.contains('@')
                                    ? 'Correo incorrecto, inténtalo de nuevo'
                                    : null,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.mail, color: Colors.green),
                                  labelText: 'Correo electrónico',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.blue[800],
                                      width: 3,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.blue[500],
                                      width: 3,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      //CARRERA
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 20.0, left: 20.0),
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar la carrera vacía'
                                  : null,
                              controller: _carreraConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.category, color: Colors.green),
                                labelText: 'Carrera',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      //CUATRIMESTRE
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 10.0, left: 20.0),
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar el grupo vacío'
                                  : null,
                              controller: _grupoConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.domain, color: Colors.green),
                                labelText: 'Grupo',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          )),
                          //TELEFONO
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 20.0, left: 10.0),
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar el teléfono vacío'
                                  : null,
                              controller: _telefonoConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone, color: Colors.green),
                                labelText: 'Teléfono',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      //SEXO
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.only(right: 20.0, left: 20.0),
                            child: TextFormField(
                              validator: (valor) => valor.length < 3
                                  ? 'No puede dejar el sexo vacío'
                                  : null,
                              controller: _sexoConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person_outline,
                                    color: Colors.green),
                                labelText: 'Sexo',
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    color: Colors.blue[800],
                                    width: 3,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(
                                    color: Colors.blue[500],
                                    width: 3,
                                  ),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    //CONTRASEÑA
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 20.0, left: 20.0),
                              child: TextFormField(
                                controller: _contrasenaConroller,
                                validator: (valor) => valor.length < 3
                                    ? 'Incorrecto, inténtalo de nuevo'
                                    : null,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.enhanced_encryption,
                                      color: Colors.green),
                                  labelText: 'Contraseña',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.blue[800],
                                      width: 3,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                      color: Colors.blue[500],
                                      width: 3,
                                    ),
                                  ),
                                ),
                                obscureText: true,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Column(
                      children: <Widget>[
                        InkWell(
                          //Direccion de la pantalla de usuario
                          onTap: () {
                            //METODO INSERT
                            _insertData();
                            _clearValues();
                            /*Navigator.push(context,
                              new MaterialPageRoute(builder: (context)=> LoginPage()));*/
                          },
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.green[200],
                                    Colors.indigo,
                                    Colors.green,
                                    Colors.indigo[200]
                                  ],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                              child: Text(
                                'Registrar'.toUpperCase(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
