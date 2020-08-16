import 'package:flutter/material.dart';
import 'package:saes/principal/principal.dart';
import 'package:saes/usuarios/doctora/busqueda.dart';
import 'package:saes/usuarios/doctora/perfilDoctora.dart';
import 'package:saes/usuarios/doctora/webC.dart';
import 'package:saes/usuarios/doctora/webC2.dart';
import 'package:saes/usuarios/doctora/webC3.dart';

import '../rounded.dart';

class Doctora extends StatelessWidget {

  Doctora({this.nombre, this.ape_pat, this.ape_mat, this.email, this.telefono, this.foto});
  final String nombre;
  final String ape_pat;
  final String ape_mat;
  final String email;
  final String telefono;
  final String foto;

  static final String path = "lib/src/pages/blog/news1.dart";
  final Color primary = Colors.white;
  final Color active = Colors.green[700];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: Text('HOME', style: TextStyle(color: Colors.grey[600])),
          centerTitle: false,
          iconTheme: new IconThemeData(color: Colors.green),
          leading: Builder(builder: (context) {
            return IconButton(
              icon: Image.asset('assets/saes2.png'),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          })),
      drawer: _buildDrawer(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          _buildFeaturedNews(),
          _buildHeading("Noticias importantes"),
          _buildListItem1(context),
          _buildListItem2(context),
          _buildListItem3(context),
          //_buildListItem(Colors.transparent),
        ],
      ),
    );
  }

  Widget _buildListItem1(BuildContext context ){
    return InkWell(
      onTap: () {
  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WebC()));      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        'http://www.clinicasmontecarmelo.com/wp-content/uploads/2016/03/elegir-el-cepillo-de-dientes.jpg')),
                color: Colors.transparent,
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "El Covid-19, ¿escondido en tu cepillo de dientes?",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                      "Expertos del Colegio Oficial de Dentistas de Castellón, han incidido en la necesidad de lavarse las manos antes de manipular el cepillo, enjuagarlo y secarlo tras cada uso, guardarlo y evitar el contacto con los de otros integrantes de la unidad familiar.",
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem2(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WebC2())); 
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        'http://www.que.es/archivos/201306/5391236w-640x640x80.jpg')),
                color: Colors.transparent,
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "Las hospitalizaciones por Covid se cuadruplican en solo un mes",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                      "Las cifras no son demasiado altas en términos absolutos, pero también siguen un preocupante ascenso y se han casi triplicado en los últimos 15 días.",
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem3(BuildContext context) {
    return InkWell(
      onTap: () {
         Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WebC3())); 
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              margin: const EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://th.bing.com/th/id/OIP.2R9khSWJsPP81a2XJZdjZAHaE8?pid=Api&rs=1')),
                color: Colors.transparent,
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "Estudio revela que algunos sobrevivientes de Covid-19 sufren desórdenes psiquiátricos",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                      "Un estudio del hospital San Raffaele en Milán publicado el lunes en la revista científica Brain, Behavior and Immunity, mostró que más de la mitad de los 402 pacientes controlados un mes después de ser tratados por el virus experimentaron al menos uno de estos trastornos en proporción a la gravedad de la inflamación durante la enfermedad.",
                      textAlign: TextAlign.justify),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildHeading(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }

//PARTE DE ARRIBA
  RoundedContainer _buildFeaturedNews() {
    return RoundedContainer(
      height: 250,
      //width: 500,
      borderRadius: BorderRadius.circular(0),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Image.network(
                'https://scontent-qro1-1.xx.fbcdn.net/v/t1.0-9/90589862_2647055105422303_5313818518834118656_o.jpg?_nc_cat=111&_nc_sid=8bfeb9&_nc_eui2=AeHwZIw68lh7stVIFu4HRyF4iKdvCOxvjvSIp28I7G-O9HiN_z6XwWfhD0sl0_O1UPAcu9HOFygiTUd4cODvtde6&_nc_ohc=ZTFyN_hryfwAX9zgpfn&_nc_ht=scontent-qro1-1.xx&oh=282e6510e76b7f935de9573315165653&oe=5F4EDECF'),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    //final String image = images[0];
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30.0),
                  Container(
                    height: 250,
                    width: 250,
                    alignment: Alignment.center,
                    child: Image.asset('assets/Halcon.png'),
                  ),
                  SizedBox(height: 5.0),
                  //SizedBox(height: 30.0),
                  ListTile(
                    leading: Icon(Icons.home, color: active),
                    title: Text(
                      'HOME',
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Doctora()));
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.person_pin, color: active),
                    title: Text('Perfil',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PerfilDoctora(nombre: nombre, ape_pat: ape_pat, ape_mat: ape_mat, email: email, telefono: telefono, foto: foto)));
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.note_add, color: active),
                    title: Text('Historial Clinico',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      Navigator.push(context,
                         MaterialPageRoute(builder: (context) => Busqueda()));
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.event_note, color: active),
                    title: Text('Eventos',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      /*Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Perfil()));*/
                    },
                  ),
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.graphic_eq, color: active),
                    title: Text('Estadísticas',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      /*Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Perfil()));*/
                    },
                  ),
                 /* _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.info_outline, color: active),
                    title: Text('Contactanos',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      /* Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Perfil()));*/
                    },
                  ),*/
                  _buildDivider(),
                  ListTile(
                    leading: Icon(Icons.close, color: active),
                    title: Text('Cerrar Sesión',
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Principal()));
                    },
                  ),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: active,
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}