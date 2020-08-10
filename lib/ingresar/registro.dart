import 'package:flutter/material.dart';
import '../operaciones/convertidor.dart';
import '../operaciones/db_operations.dart';
import 'login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

class Registro extends StatefulWidget {
  @override
  HomaPageState createState() => new HomaPageState();
}

class HomaPageState extends State<Registro> {
  List<Registro> _Registro;
  TextEditingController _fotoConroller;
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
  TextEditingController _usuarioConroller;
  final formkey = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String imagen;

  @override
  void initState() {
    super.initState();
    _Registro = [];
    _fotoConroller = TextEditingController();
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
    _usuarioConroller = TextEditingController();
  }

  //INSERT DATA
  _insertData() {
    if (_fotoConroller.text.isEmpty ||
        _matriculaConroller.text.isEmpty ||
        _nombreConroller.text.isEmpty ||
        _apepatConroller.text.isEmpty ||
        _apematConroller.text.isEmpty ||
        _emailConroller.text.isEmpty ||
        _carreraConroller.text.isEmpty ||
        _grupoConroller.text.isEmpty ||
        _telefonoConroller.text.isEmpty ||
        _sexoConroller.text.isEmpty ||
        _contrasenaConroller.text.isEmpty ||
        _usuarioConroller.text.isEmpty) {
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
            _contrasenaConroller.text,
            _usuarioConroller.text,
            imagen)
        .then((result) {
      if ('sucess' == result) {
        _fotoConroller.text = "";
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
        _usuarioConroller.text = "";
        _clearValues();
      }
    });
  }

  //CLEAR TEXTFIELD VALUES
  _clearValues() {
    _fotoConroller.text = "";
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
    _usuarioConroller.text = "";
  }

  void validateAndSave() {
    final form = formkey.currentState;
    if (form.validate()) {
      print('form is valid');
      _showScaffold("DATOS REGISTRADOS!");
      _insertData();
      _clearValues();
    } else {
      print('form invalid');
    }
  }

  void _showScaffold(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.indigo,
    ));
  }

  /* usuario() {
    _usuarioConroller.text = "Alumno";
  }*/

  //Metodo para imagen
  pickImagefromGallery() {
    ImagePicker.pickImage(source: ImageSource.gallery).then((imgFile) {
      String imgString = Convertir.base64String(imgFile.readAsBytesSync());
      // Photo photo = Photo(null,imgString);
      //bdHelper.insert(photo);
      //fotos();
      imagen = imgString;
      //Funciona para la obtencion de imagen ya sea galeria o camera
      //Navigator.of(context).pop();
      _fotoConroller.text = "Campo lleno";
      _usuarioConroller.text = "Alumno";
      return imagen;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Text('REGISTRO DE USUARIO',
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold)),
        centerTitle: false,
        leading: IconButton(
          icon: Image.asset('assets/saes2.png'),
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => LoginPage()));
          },
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
              key: formkey, // that should work just fine
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
                              validator: (val) => val.length == 0
                                  ? 'Debes subir una imagen'
                                  : null,
                              controller: _fotoConroller,
                              decoration: InputDecoration(
                                icon: Icon(Icons.camera_front,
                                    color: Colors.green),
                                labelText: 'Foto del usuario',
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
                              onPressed: pickImagefromGallery,
                              child: Icon(Icons.camera_alt),
                            ),
                          ),
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
                                  ? 'No se puede dejar el nombre vacío'
                                  : null,
                              controller: _nombreConroller,
                              keyboardType: TextInputType.text,
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
                          ))
                        ],
                      ),
                    ),

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
                              keyboardType: TextInputType.text,
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
                              keyboardType: TextInputType.text,
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
                              validator: (valor) => valor.length < 10
                                  ? 'Debes ingresar 10 digitos'
                                  : null,
                              controller: _matriculaConroller,
                              keyboardType: TextInputType.number,
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
                                validator: (val) =>
                                    !val.contains('@utectulancingo.edu.mx')
                                        ? 'Ingresa tu correo institucional'
                                        : null,
                                controller: _emailConroller,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "ejemplo@utectulancingo.edu.mx",
                                  icon: Icon(Icons.mail, color: Colors.green),
                                  labelText: 'Correo electrónico',
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
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
                              keyboardType: TextInputType.text,
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
                              keyboardType: TextInputType.text,
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
                              validator: (valor) => valor.length < 10
                                  ? 'Debes ingresar 10 digitos'
                                  : null,
                              controller: _telefonoConroller,
                              keyboardType: TextInputType.number,
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
                              keyboardType: TextInputType.text,
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
                                keyboardType: TextInputType.text,
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
                           /*Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 20.0, left: 20.0),
                              child: TextFormField(
                                controller: _usuarioConroller,
                                keyboardType: TextInputType.text,
                                validator: (val) =>
                                    !val.contains('Alumno')
                                        ? 'D'
                                        : null,
                                decoration: InputDecoration(
                                  icon: Icon(Icons.verified_user,
                                      color: Colors.green),
                                  labelText: 'Tipo de Usuario',
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
                          )*/
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Column(
                      children: <Widget>[
                        MaterialButton(
                          onPressed: validateAndSave,
                          child: InkWell(
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
